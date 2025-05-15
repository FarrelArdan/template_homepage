import 'package:flutter/widgets.dart';

abstract class _MyAssetImage {
  static const _dir_='assets/images/';

  /*IMAGES */
  static const fotoKtpMer = '${_dir_}foto_ktp_mer';
}

  abstract class MyAssetImage extends _MyAssetImage {

  static const fotoKtpMer = AssetImage(_MyAssetImage.fotoKtpMer);
}

  abstract class MyImage {

  static const fotoKtpMer = Image(image: MyAssetImage.fotoKtpMer);

  }