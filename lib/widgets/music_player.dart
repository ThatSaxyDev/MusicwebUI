import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:prac/utils/colors.dart';
import 'package:prac/widgets/animated_container.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  bool isPlaying = false;
  IconData playButton = Icons.play_arrow_rounded;

  AudioPlayer _player = AudioPlayer();
  AudioCache cache = AudioCache();

  Duration position = const Duration();
  Duration musicLength = const Duration();

  Widget slider() {
    return Slider.adaptive(
        activeColor: textColor,
        inactiveColor: const Color.fromARGB(255, 222, 201, 201),
        value: position.inSeconds.toDouble(),
        max: musicLength.inSeconds.toDouble(),
        onChanged: (value) {
          seekToSec(
            value.toInt(),
          );
        });
  }

  void seekToSec(int sec) {
    Duration newPosition = Duration(seconds: sec);
    _player.seek(newPosition);
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    cache = AudioCache(fixedPlayer: _player);

    _player.onDurationChanged.listen((Duration d) {
      setState(() => musicLength = d);
    });

    _player.onAudioPositionChanged.listen((Duration p) {
      setState(() => position = p);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: 600,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 85, 53, 53),
            bgColor,
            bgColor,
            Colors.pinkAccent,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: Row(
          children: [
            // Container(
            //   width: 200,
            //   height: 200,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     image: const DecorationImage(
            //       image: NetworkImage(
            //           'https://txpush-9575.kxcdn.com/wp-content/uploads/2022/03/Kwaku-artwork-.webp'),
            //     ),
            //   ),
            // ),
            const AnimatedContaine(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Kwaku the Traveller',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: textColorr,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Black Sherif',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.blueGrey,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 25),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.skip_previous_rounded),
                        iconSize: 30,
                        color: Colors.blueGrey,
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        onPressed: () {
                          if (!isPlaying) {
                            cache.play('ktt.mp3');
                            setState(() {
                              playButton = Icons.pause_rounded;
                              isPlaying = true;
                            });
                          } else {
                            _player.pause();
                            setState(() {
                              playButton = Icons.play_arrow_rounded;
                              isPlaying = false;
                            });
                          }
                        },
                        icon: Icon(playButton),
                        iconSize: 50,
                        color: Colors.blueGrey,
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.skip_next_rounded),
                        iconSize: 30,
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
