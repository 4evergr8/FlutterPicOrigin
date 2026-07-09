import 'package:flutter/material.dart';
import 'package:picorigin/l10n/app_localizations.dart';
import 'package:picorigin/service/ad.dart';
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
  final AdManager _adManager = AdManager.instance;

  @override
  void initState() {
    super.initState();
    _adManager.loadInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.offline,
          style: theme.textTheme.headlineMedium,
        ),
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
                  _adManager.showAdThen(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const URLDecode(),
                      ),
                    );
                  });
                },
              ),

              const SizedBox(height: 16),

              _buildFunctionItem(
                context,
                icon: Icons.lock_open,
                title: 'Base64',
                subtitle: AppLocalizations.of(context)!.subtitle_base64,
                onTap: () {
                  _adManager.showAdThen(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EncodeDecode(),
                      ),
                    );
                  });
                },
              ),

              const SizedBox(height: 16),

              _buildFunctionItem(
                context,
                icon: Icons.lock_open,
                title: AppLocalizations.of(context)!.beast,
                subtitle: AppLocalizations.of(context)!.subtitle_beast,
                onTap: () {
                  _adManager.showAdThen(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                        const BeastEncodeDecode(),
                      ),
                    );
                  });
                },
              ),

              const SizedBox(height: 16),

              _buildFunctionItem(
                context,
                icon: Icons.qr_code,
                title: AppLocalizations.of(context)!.qr_code,
                subtitle: AppLocalizations.of(context)!.subtitle_qrcode,
                onTap: () {
                  _adManager.showAdThen(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QRCodeScan(),
                      ),
                    );
                  });
                },
              ),

              const SizedBox(height: 16),

              _buildFunctionItem(
                context,
                icon: Icons.translate,
                title: AppLocalizations.of(context)!.ocr_offline,
                subtitle: AppLocalizations.of(context)!.subtitle_ocr,
                onTap: () {
                  _adManager.showAdThen(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                        const OfflineOCRScreen(),
                      ),
                    );
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, size: 32),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        onTap: onTap,
      ),
    );
  }
}