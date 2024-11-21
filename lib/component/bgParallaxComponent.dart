import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/material.dart';

class BgParallaxComponent extends ParallaxComponent with HasGameRef {
  final _parallelImages = [
    ParallaxImageData("parallax/bkgd_0.png"),
    ParallaxImageData("parallax/bkgd_1.png"),
    ParallaxImageData("parallax/bkgd_2.png"),
    ParallaxImageData("parallax/bkgd_3.png"),
    ParallaxImageData("parallax/bkgd_4.png"),
    ParallaxImageData("parallax/bkgd_5.png"),
    ParallaxImageData("parallax/bkgd_6.png"),
  ];

  @override
  Future<void> onLoad() async {
    parallax = await game.loadParallax(_parallelImages,
      baseVelocity: Vector2(0, 0),
      velocityMultiplierDelta: Vector2(1, 1),
      repeat: ImageRepeat.repeat);

      void changeSpeedBasedShip(Ship player){
        if(parallax != null){
          parallax!.baseVelocity = player.arah * 10;
        }
      }
  }
}
