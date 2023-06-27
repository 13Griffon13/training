import 'package:flutter/cupertino.dart';

class AdaptiveSizes {
  final BoxConstraints bigButtonSize;
  final BoxConstraints textFieldSize;
  final double titleSize;
  final double paddings;

  AdaptiveSizes(
    this.bigButtonSize,
    this.textFieldSize,
    this.titleSize,
      this.paddings,
  );

  static AdaptiveSizes get mobile => AdaptiveSizes(
        const BoxConstraints(
          minWidth: double.infinity,
          maxWidth: double.infinity,
          minHeight: 44.0,
          maxHeight: 44.0,
        ),
        const BoxConstraints(
          minWidth: 200.0,
          maxWidth: double.infinity,
          minHeight: 56.0,
          maxHeight: 56.0,
        ),
        20.0,
    8.0,
      );

  static AdaptiveSizes get tablet => AdaptiveSizes(
    const BoxConstraints(
      minWidth: 400.0,
      maxWidth: 400.0,
      minHeight: 52.0,
      maxHeight: 52.0,
    ),
    const BoxConstraints(
      minWidth: 200.0,
      maxWidth: 400.0,
      minHeight: 56.0,
      maxHeight: 56.0,
    ),
    24.0,
    12.0,
  );

  static AdaptiveSizes get desktop => AdaptiveSizes(
    const BoxConstraints(
      minWidth: 800.0,
      maxWidth: 800.0,
      minHeight: 68.0,
      maxHeight: 68.0,
    ),
    const BoxConstraints(
      minWidth: 800.0,
      maxWidth: 800.0,
      minHeight: 68.0,
      maxHeight: 68.0,
    ),
    32.0,
    20.0,
  );
}
