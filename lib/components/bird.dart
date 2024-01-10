import 'package:flame/components.dart';
import 'package:flappy_bird_clone/game/assets.dart';
import 'package:flappy_bird_clone/game/bird_movement.dart';
import 'package:flappy_bird_clone/game/flappy_bird_game.dart';

class Bird extends SpriteGroupComponent<BirdMovement> with HasGameRef<FlappyBirdGame> {
  Bird();

  @override
  Future<void >onLoad() async {
    final birdMid=await gameRef.loadSprite(Assets.birdMidFlap);
    final birdUp=await gameRef.loadSprite(Assets.birdUpFlap);
    final birdDown=await gameRef.loadSprite(Assets.birdDownFlap);

    gameRef.bird;

    size=Vector2(50, 40);
    position=Vector2(50,gameRef.size.y/2-size.y/2);
    current=BirdMovement.middle;
    sprites={
      BirdMovement.middle: birdMid,
      BirdMovement.down:  birdDown,
      BirdMovement.up:  birdUp,
  };
  }
}