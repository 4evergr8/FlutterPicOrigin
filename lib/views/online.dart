import 'package:flutter/material.dart';
import 'package:picorigin/l10n/app_localizations.dart';
import 'package:picorigin/service/ad.dart';
import 'package:picorigin/views/online/search_image.dart';
import 'package:picorigin/views/online/search_thumbnail.dart';
import 'package:picorigin/views/online/video_backup.dart';

class InternetPage extends StatefulWidget {
  const InternetPage({super.key});

  @override
  State<InternetPage> createState() => _InternetPageState();
}

class _InternetPageState extends State<InternetPage> {
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
          AppLocalizations.of(context)!.online,
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
                icon: Icons.image,
                title: AppLocalizations.of(context)!.reverse,
                subtitle: AppLocalizations.of(context)!.find_sourse,
                onTap: () {
                  _adManager.showAdThen(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                        const ImageSearchScreen(),
                      ),
                    );
                  });
                },
              ),

              const SizedBox(height: 16),

              _buildFunctionItem(
                context,
                icon: Icons.search,
                title: AppLocalizations.of(context)!.artwork,
                subtitle: AppLocalizations.of(context)!.artwork_sourse,
                onTap: () {
                  _adManager.showAdThen(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                        const ThumbnailSearchScreen(),
                      ),
                    );
                  });
                },
              ),

              const SizedBox(height: 16),

              _buildFunctionItem(
                context,
                icon: Icons.settings_backup_restore,
                title: AppLocalizations.of(context)!.backup,
                subtitle: AppLocalizations.of(context)!.backup_video,
                onTap: () {
                  _adManager.showAdThen(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                        const BackupScreen(),
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