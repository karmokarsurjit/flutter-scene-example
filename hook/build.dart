import 'package:flutter_scene_importer/build_hooks.dart';
import 'package:native_assets_cli/native_assets_cli.dart';

void main(List<String> args) {
  build(args, (input, output) async {
    buildModels(buildInput: input, inputFilePaths: [
      'models/coin.glb',
      'models/dash.glb',
      'models/ground.glb',
      'models/sky_sphere.glb',
      'models/spike.glb',
    ]);
  });
}
