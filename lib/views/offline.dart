import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:picorigin/l10n/app_localizations.dart';
import 'package:picorigin/string.dart';
import 'package:picorigin/views/offline/decode_base64.dart';
import 'package:picorigin/views/offline/decode_beast.dart';
import 'package:picorigin/views/offline/decode_url.dart';
import 'package:picorigin/views/offline/image_ocr.dart';
import 'package:picorigin/views/offline/image_qrcode.dart';

class IntranetPage extends StatefulWidget {
  const IntranetPage({super.key});

  @override
  State<IntranetPage> createState() => _IntranetPageState();
}

class _IntranetPageState extends State<IntranetPage> {
  InterstitialAd? _interstitialAd;
  bool _isAdReady = false;

  int _adStateIndex = 0;
  VoidCallback? _pendingAction;

  @override
  void initState() {
    super.initState();
    _loadInterstitialAd();
  }

  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: adid,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          _isAdReady = true;

          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              _interstitialAd = null;
              _isAdReady = false;

              _pendingAction?.call();
              _pendingAction = null;

              _loadInterstitialAd();
            },
            onAdFailedToShowFullScreenContent: (ad, err) {
              ad.dispose();
              _interstitialAd = null;
              _isAdReady = false;

              _pendingAction?.call();
              _pendingAction = null;

              _loadInterstitialAd();
            },
          );
        },
        onAdFailedToLoad: (err) {
          _isAdReady = false;
          _interstitialAd = null;
        },
      ),
    );
  }

  void _handleAdThenNavigate(VoidCallback action) {
    _adStateIndex++;

    if (_adStateIndex % 3 == 1 && _isAdReady && _interstitialAd != null) {
      _pendingAction = action;
      _interstitialAd!.show();
    } else {
      action();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.offline, style: theme.textTheme.headlineMedium),
        backgroundColor: theme.colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFunctionItem(
                context,
                icon: Icons.import_export,
                title: 'URL',
                subtitle: AppLocalizations.of(context)!.subtitle_url,
                onTap: () {
                  _handleAdThenNavigate(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const URLDecode()));
                  });
                },
              ),

              SizedBox(height: 16),

              _buildFunctionItem(
                context,
                icon: Icons.lock_open,
                title: 'Base64',
                subtitle: AppLocalizations.of(context)!.subtitle_base64,
                onTap: () {
                  _handleAdThenNavigate(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const EncodeDecode()));
                  });
                },
              ),

              SizedBox(height: 16),

              _buildFunctionItem(
                context,
                icon: Icons.lock_open,
                title: AppLocalizations.of(context)!.beast,
                subtitle: AppLocalizations.of(context)!.subtitle_beast,
                onTap: () {
                  _handleAdThenNavigate(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BeastEncodeDecode()));
                  });
                },
              ),

              SizedBox(height: 16),

              _buildFunctionItem(
                context,
                icon: Icons.qr_code,
                title: AppLocalizations.of(context)!.qr_code,
                subtitle: AppLocalizations.of(context)!.subtitle_qrcode,
                onTap: () {
                  _handleAdThenNavigate(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const QRCodeScan()));
                  });
                },
              ),

              SizedBox(height: 16),

              _buildFunctionItem(
                context,
                icon: Icons.translate,
                title: AppLocalizations.of(context)!.ocr_offline,
                subtitle: AppLocalizations.of(context)!.subtitle_ocr,
                onTap: () {
                  _handleAdThenNavigate(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const OfflineOCRScreen()));
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFunctionItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, size: 32),
        title: Text(title, style: Theme.of(context).textTheme.titleMedium),
        subtitle: Text(subtitle, style: Theme.of(context).textTheme.bodySmall),
        onTap: onTap,
      ),
    );
  }
}
