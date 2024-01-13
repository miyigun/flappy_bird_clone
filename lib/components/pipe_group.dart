import 'dart:math';

import 'package:flame/components.dart';
import 'package:flappy_bird_clone/components/pipe.dart';
import 'package:flappy_bird_clone/game/config.dart';
import 'package:flappy_bird_clone/game/flappy_bird_game.dart';
import 'package:flappy_bird_clone/game/pipe_position.dart';

class PipeGroup extends PositionComponent with HasGameRef<FlappyBirdGame> {
  PipeGroup();

  final random = Random();

  @override
  onLoad() {
    position.x = gameRef.size.x;

    final heightMinusGround = gameRef.size.y - Config.groundHeight;
    final spacing = 100 + random.nextDouble() * (heightMinusGround / 4);
    final centerY =
        spacing + random.nextDouble() * (heightMinusGround - spacing);

    addAll([
      Pipe(
        pipePosition: PipePosition.top,
        height: centerY - spacing / 2,
      ),
      Pipe(
        pipePosition: PipePosition.bottom,
        height: heightMinusGround - (centerY + spacing / 2),
      ),
    ]);
  }

  @override
  void update(double dt) {
    super.update(dt);

    position.x -= Config.gameSpeed * dt;
    if (position.x < -10) {
      removeFromParent();
    }
  }
}
