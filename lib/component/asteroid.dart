import 'package:flame/components.dart';

class Asteroid extends SpriteComponent with HasGameRef {

    class Asteroid extends SpriteComponent with HasGameRef {
        @override
        FutureOr<void> onload() async {
            spirit = await game.loadSprite("meteor/spaceMeteors_001.png");
        }
    }
}