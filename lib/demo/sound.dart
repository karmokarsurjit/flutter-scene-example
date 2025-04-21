import 'dart:math';

import 'package:flutter_soloud/flutter_soloud.dart';

class SoundServer {
  static final SoundServer _singleton = SoundServer._internal();

  factory SoundServer() {
    return _singleton;
  }

  SoundServer._internal();

  AudioSource? pickupCoinSound;
  AudioSource? shatterSound;
  AudioSource? jumpSound;

  void initialize() {
    SoLoud.instance.loadAsset("assets/pickupCoin2.wav").then((sound) {
      pickupCoinSound = sound;
    });
    SoLoud.instance.loadAsset("assets/shatter3.ogg").then((sound) {
      shatterSound = sound;
    });
    SoLoud.instance.loadAsset("assets/jump.wav").then((sound) {
      jumpSound = sound;
    });
  }

  void playPickupCoin() {
    if (pickupCoinSound != null) {
      SoLoud.instance.play(pickupCoinSound!, volume: 0.4).then((value) {
        SoLoud.instance.setRelativePlaySpeed(
            value, (Random().nextDouble() - 0.5) * 0.2 + 1.0);
      });
    }
  }

  void playShatter() {
    if (shatterSound != null) {
      SoLoud.instance.play(shatterSound!, volume: 1.0);
    }
  }

  void playJump() {
    if (jumpSound != null) {
      SoLoud.instance.play(jumpSound!, volume: 0.4);
    }
  }
}
