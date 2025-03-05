import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:rest_api_client/rest_api_client.dart';
import 'package:ticketing/i18n/translations.g.dart' as i18n;
import 'package:ticketing/providers/ticket_provider.dart';
import 'package:ticketing/providers/user_provider.dart';
import 'package:ticketing/screens/splash_screen.dart';
import 'package:toastification/toastification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setErrorHandlers();
  await RestApiClient.initFlutter();
  await setAppLocale();

  runApp(
    i18n.TranslationProvider(
      child: platine_i18n.TranslationProvider(
        child: const Application(),
      ),
    ),
  );
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    final t = i18n.Translations.of(context);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: kPrimaryColor,
    ));

    return MultiProvider(
      providers: _getProviders(),
      child: ToastificationWrapper(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: i18n.TranslationProvider.of(context).flutterLocale,
          supportedLocales: i18n.AppLocaleUtils.supportedLocales,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          title: t.labels.app.name,
          theme: ThemeData(
            fontFamily: 'poppins',
            appBarTheme: AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: kPrimaryColor,
              ),
            ),
            scaffoldBackgroundColor: kPrimaryColor,
            primarySwatch: Colors.blue,
          ),
          home: const SplashScreen(),
        ),
      ),
    );
  }

  /// Return the application providers
  List<SingleChildWidget> _getProviders() {
    List<SingleChildWidget> providers = [
      ChangeNotifierProvider(
        create: (context) => UserProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => TicketProvider(),
      ),
    ];

    return providers;
  }
}
