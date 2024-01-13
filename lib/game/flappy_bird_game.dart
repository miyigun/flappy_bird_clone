import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flappy_bird_clone/components/background.dart';
import 'package:flappy_bird_clone/components/bird.dart';
import 'package:flappy_bird_clone/components/ground.dart';
import 'package:flappy_bird_clone/components/pipe_group.dart';
import 'package:flappy_bird_clone/game/config.dart';

class FlappyBirdGame extends FlameGame {
  FlappyBirdGame();

  late Bird bird;
  Timer interval=Timer(Config.pipeInterval, repeat: true);

  @override
  Future<void> onLoad() async{
    addAll([
      Background(),
      Ground(),
      bird=Bird(),
    ]);

    interval.onTick=() => add(PipeGroup());
  }

  @override
  void update(double dt) {
    super.update(dt);

    interval.update(dt);
  }
}