// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/barg.svg
  String get barg => 'assets/icons/barg.svg';

  /// File path: assets/icons/komback.svg
  String get komback => 'assets/icons/komback.svg';

  /// File path: assets/icons/location.svg
  String get location => 'assets/icons/location.svg';

  /// File path: assets/icons/love.svg
  String get love => 'assets/icons/love.svg';

  /// File path: assets/icons/road.svg
  String get road => 'assets/icons/road.svg';

  /// File path: assets/icons/sms.svg
  String get sms => 'assets/icons/sms.svg';

  /// File path: assets/icons/star.svg
  String get star => 'assets/icons/star.svg';

  /// File path: assets/icons/user.svg
  String get user => 'assets/icons/user.svg';

  /// File path: assets/icons/yol.svg
  String get yol => 'assets/icons/yol.svg';

  /// File path: assets/icons/zvanok.svg
  String get zvanok => 'assets/icons/zvanok.svg';

  /// List of all assets
  List<String> get values => [
    barg,
    komback,
    location,
    love,
    road,
    sms,
    star,
    user,
    yol,
    zvanok,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Ali.png
  AssetGenImage get ali => const AssetGenImage('assets/images/Ali.png');

  /// File path: assets/images/bmw.png
  AssetGenImage get bmw => const AssetGenImage('assets/images/bmw.png');

  /// File path: assets/images/daraxat.png
  AssetGenImage get daraxat => const AssetGenImage('assets/images/daraxat.png');

  /// File path: assets/images/ferari.png
  AssetGenImage get ferari => const AssetGenImage('assets/images/ferari.png');

  /// File path: assets/images/tesla.png
  AssetGenImage get tesla => const AssetGenImage('assets/images/tesla.png');

  /// File path: assets/images/teslacar.png
  AssetGenImage get teslacar =>
      const AssetGenImage('assets/images/teslacar.png');

  /// File path: assets/images/teslatext.png
  AssetGenImage get teslatext =>
      const AssetGenImage('assets/images/teslatext.png');

  /// File path: assets/images/user2.png
  AssetGenImage get user2 => const AssetGenImage('assets/images/user2.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    ali,
    bmw,
    daraxat,
    ferari,
    tesla,
    teslacar,
    teslatext,
    user2,
  ];
}

class $AssetsMockGen {
  const $AssetsMockGen();

  /// File path: assets/mock/mock_data.json
  String get mockData => 'assets/mock/mock_data.json';

  /// List of all assets
  List<String> get values => [mockData];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsMockGen mock = $AssetsMockGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
