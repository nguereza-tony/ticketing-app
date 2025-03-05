import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:simple_dart_logger/simple_dart_logger.dart';
import 'package:ticketing/i18n/translations.g.dart';

enum ValidationCodeType { passwordReset }

Future<String> scanBarcode(bool mounted) async {
  String code = '';
  try {
    code = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666',
      t.labels.cancel,
      true,
      ScanMode.BARCODE,
    );

    if (code.isEmpty || code == '-1') {
      NotificationHelper.info(
        t.errors.scanQrCodeNoResultError,
        null,
        5,
      );
    }
  } on PlatformException catch (e) {
    Logger logger = await LoggerHelper.create(null, 'QRCode');
    logger.error(e.toString());

    NotificationHelper.error(t.errors.scanQrCodeError, null, 5);
  }

  // If the widget was removed from the tree while the asynchronous platform
  // message was in flight, we want to discard the reply rather than calling
  // setState to update our non-existent appearance.
  if (!mounted) {
    return '';
  }

  return code;
}
