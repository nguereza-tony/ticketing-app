import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:ticketing/i18n/translations.g.dart';
import 'package:ticketing/screens/qr_screen.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  PackageInfo? packageInfo;

  @override
  void initState() {
    super.initState();
    PackageInfo.fromPlatform().then((s) {
      setState(() {
        packageInfo = s;
      });
    });
  }

  Future<void> _handleRefresh() async {}

  @override
  Scaffold build(BuildContext context) {
    final t = Translations.of(context);
    final pft = platine_i18n.Translations.of(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: pft.titles.about),
      body: RefreshIndicator(
        onRefresh: _handleRefresh,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 48,
                backgroundImage: AssetImage('assets/images/logo.jpg'),
              ),
              const SizedBox(
                height: 10,
              ),
              GreyLabel(
                text: t.labels.app.name,
                size: 18,
                color: Colors.black,
                weight: FontWeight.w700,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(3),
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: kBorderColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: GreyLabel(
                  text: t.labels.app.description,
                  color: Colors.black,
                  weight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ItemLabel(
                label: t.labels.app.version,
                description: packageInfo?.version,
              ),
              const SizedBox(
                height: 5,
              ),
              ItemLabel(
                label: t.labels.app.buildNumber,
                description: packageInfo?.buildNumber,
              ),
              const SizedBox(
                height: 5,
              ),
              ItemLabel(
                label: t.labels.app.installDate,
                description: DateFormat('yyyy-MM-dd').format(
                  packageInfo?.installTime ?? DateTime.now(),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ItemLabel(
                label: t.labels.app.updateDate,
                description: DateFormat('yyyy-MM-dd').format(
                  packageInfo?.updateTime ?? DateTime.now(),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              IconButton(
                onPressed: () {
                  switchToScreen(context, const QrScreen());
                },
                icon: const Icon(Icons.share_outlined),
                style: ElevatedButton.styleFrom(
                  backgroundColor: kButtonBgColor,
                  padding: const EdgeInsets.all(10),
                ),
                color: kButtonColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
