class RecitersModel {
  final String reciter;
  final String url;
  RecitersModel({required this.reciter, required this.url});
  factory RecitersModel.fromJson(Map<String, dynamic> json) {
    return RecitersModel(reciter: json['reciter'], url: json['url']);
  }
}
