import 'package:flame/game.dart';
import 'package:flappy_bird_clone/game/flappy_bird_game.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final game = FlappyBirdGame();

  runApp(
    GameWidget(game: game),
  );
}
