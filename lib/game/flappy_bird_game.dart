import 'package:flame/game.dart';
import 'package:flappy_bird_clone/components/background.dart';
import 'package:flappy_bird_clone/components/bird.dart';
import 'package:flappy_bird_clone/components/ground.dart';

class FlappyBirdGame extends FlameGame {
  FlappyBirdGame();

  late Bird bird;

  @override
  Future<void> onLoad() async{
    addAll([
      Background(),
      Ground(),
      bird=Bird(),
    ]);
  }
}