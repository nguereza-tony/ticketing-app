import 'package:clean_settings_nnbd/clean_settings_nnbd.dart';
import 'package:flutter/material.dart';
import 'package:personal_budget/i18n/translations.g.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int apiConnectTimeout = 0;
  int apiSendTimeout = 0;
  int apiReceiveTimeout = 0;
  int logFileKeepHistory = 2;
  int logFileSize = 500; // in KiloByte
  bool loggerEnable = true;
  String language = '';

  @override
  void initState() {
    super.initState();
    ConfigHelper.init();
    apiConnectTimeout = ConfigHelper.getInt('api_connect_timeout', 5);
    apiSendTimeout = ConfigHelper.getInt('api_send_timeout', 5);
    apiReceiveTimeout = ConfigHelper.getInt('api_receive_timeout', 10);
    logFileKeepHistory = ConfigHelper.getInt('log_file_keep_history', 2);
    logFileSize = ConfigHelper.getInt('log_file_size', 500);
    loggerEnable = ConfigHelper.getBool('logger_enable', true);
    language = ConfigHelper.getString('language', 'fr');
  }

  Future<void> _handleRefresh() async {}

  @override
  Scaffold build(BuildContext context) {
    final pft = platine_i18n.Translations.of(context);

    Map<String, String> languages = {
      'fr': pft.labels.appSetting.french,
      'en': pft.labels.appSetting.english,
    };
    Map<String, AppLocale> locales = {
      'fr': AppLocale.fr,
      'en': AppLocale.en,
    };

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: pft.titles.setting),
      body: RefreshIndicator(
        onRefresh: _handleRefresh,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              SettingSection(
                title: pft.labels.appSetting.sectionGeneral,
                items: [
                  SettingRadioItem<String>(
                    title: pft.labels.appSetting.languageTitle,
                    displayValue: languages[language],
                    selectedValue: language,
                    items: [
                      SettingRadioValue(pft.labels.appSetting.french, 'fr'),
                      SettingRadioValue(pft.labels.appSetting.english, 'en'),
                    ],
                    onChanged: (v) {
                      LocaleSettings.setLocale(locales[language]!);

                      setState(() {
                        language = v;
                        ConfigHelper.setItem(
                          'language',
                          language,
                        );
                      });
                    },
                  ),
                ],
              ),
              SettingSection(
                title: pft.labels.appSetting.sectionLogging,
                items: [
                  SettingCheckboxItem(
                    title: pft.labels.appSetting.loggerEnableTitle,
                    value: loggerEnable,
                    onChanged: (v) {
                      setState(() {
                        loggerEnable = v!;
                        ConfigHelper.setItem(
                          'logger_enable',
                          loggerEnable,
                        );
                      });
                    },
                  ),
                  SettingRadioItem<String>(
                    title: pft.labels.appSetting.logFileSizeTitle,
                    displayValue: '$logFileSize KB',
                    selectedValue: logFileSize.toString(),
                    items: [
                      SettingRadioValue('50 KB', '50'),
                      SettingRadioValue('200 KB', '200'),
                      SettingRadioValue('500 KB', '500'),
                      SettingRadioValue('1024 KB', '1024'),
                    ],
                    onChanged: (v) {
                      setState(() {
                        logFileSize = int.parse(v);
                        ConfigHelper.setItem(
                          'log_file_size',
                          logFileSize,
                        );
                      });
                    },
                  ),
                  SettingRadioItem<String>(
                    title: pft.labels.appSetting.logFileKeepHistoryTitle,
                    displayValue: logFileKeepHistory.toString(),
                    selectedValue: logFileKeepHistory.toString(),
                    items: [
                      SettingRadioValue('1', '1'),
                      SettingRadioValue('2', '2'),
                      SettingRadioValue('5', '5'),
                    ],
                    onChanged: (v) {
                      setState(() {
                        logFileKeepHistory = int.parse(v);
                        ConfigHelper.setItem(
                          'log_file_keep_history',
                          logFileKeepHistory,
                        );
                      });
                    },
                  ),
                ],
              ),
              SettingSection(
                title: pft.labels.appSetting.sectionApi,
                items: [
                  SettingRadioItem<String>(
                    title: pft.labels.appSetting.apiConnectTimeoutTitle,
                    displayValue:
                        '$apiConnectTimeout ${pft.labels.appSetting.seconds}',
                    selectedValue: apiConnectTimeout.toString(),
                    items: [
                      SettingRadioValue(
                          '5 ${pft.labels.appSetting.seconds}', '5'),
                      SettingRadioValue(
                          '10 ${pft.labels.appSetting.seconds}', '10'),
                      SettingRadioValue(
                          '15 ${pft.labels.appSetting.seconds}', '15'),
                      SettingRadioValue(
                          '30 ${pft.labels.appSetting.seconds}', '30'),
                    ],
                    onChanged: (v) {
                      setState(() {
                        apiConnectTimeout = int.parse(v);
                        ConfigHelper.setItem(
                          'api_connect_timeout',
                          apiConnectTimeout,
                        );
                      });
                    },
                  ),
                  SettingRadioItem<String>(
                    title: pft.labels.appSetting.apiSendTimeoutTitle,
                    displayValue:
                        '$apiSendTimeout ${pft.labels.appSetting.seconds}',
                    selectedValue: apiSendTimeout.toString(),
                    items: [
                      SettingRadioValue(
                          '5 ${pft.labels.appSetting.seconds}', '5'),
                      SettingRadioValue(
                          '10 ${pft.labels.appSetting.seconds}', '10'),
                      SettingRadioValue(
                          '15 ${pft.labels.appSetting.seconds}', '15'),
                      SettingRadioValue(
                          '30 ${pft.labels.appSetting.seconds}', '30'),
                    ],
                    onChanged: (v) {
                      setState(() {
                        apiSendTimeout = int.parse(v);
                        ConfigHelper.setItem(
                          'api_send_timeout',
                          apiSendTimeout,
                        );
                      });
                    },
                  ),
                  SettingRadioItem<String>(
                    title: pft.labels.appSetting.apiReceiveTimeoutTitle,
                    displayValue:
                        '$apiReceiveTimeout ${pft.labels.appSetting.seconds}',
                    selectedValue: apiReceiveTimeout.toString(),
                    items: [
                      SettingRadioValue(
                          '10 ${pft.labels.appSetting.seconds}', '10'),
                      SettingRadioValue(
                          '15 ${pft.labels.appSetting.seconds}', '15'),
                      SettingRadioValue(
                          '30 ${pft.labels.appSetting.seconds}', '30'),
                    ],
                    onChanged: (v) {
                      setState(() {
                        apiReceiveTimeout = int.parse(v);
                        ConfigHelper.setItem(
                          'api_receive_timeout',
                          apiReceiveTimeout,
                        );
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
