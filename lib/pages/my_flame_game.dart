import 'dart:async';
import 'dart:ui';

import 'package:dasar_flame/component/bgParallaxComponent.dart';
import 'package:dasar_flame/component/ship.dart';
import 'package:flame/game.dart';
import 'package:flame/events.dart';



class MyFlameGame extends FlameGame with PanDetector {
  late Ship s;
  late BgParallaxComponent bgParallax;

  @override
  Color backgroundColor() {
    return const Color(0xFFFF0000);
  }

  @override
  FutureOr<void> onLoad() async {
    bgParallax = BgParallaxComponent();
    add(bgParallax);
    s = Ship();
    add(s);
  }

  @override
  void update(double dt) {
    bgParallax.changeSpeedBasedShip(s);
    super.update(dt);
  }

  @override
  void onPanUpdate(DragUpdateInfo info) {
    s.position += info.delta.global; // Use delta for smooth movement
  }
}
