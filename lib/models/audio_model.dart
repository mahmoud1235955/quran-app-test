import 'package:my_quran_app/models/reciters_model.dart';

class AudioModel {
  List<RecitersModel> reciters;
  AudioModel({required this.reciters});
  factory AudioModel.fromJson(Map<String, dynamic> json) {
    List<RecitersModel> reciters = [];
    json.forEach((key, value) {
      if (value is Map<String, dynamic>) {
        reciters.add(RecitersModel.fromJson(value));
      }
    });
    return AudioModel(reciters: reciters);
  }
}
