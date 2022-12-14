import 'package:equatable/equatable.dart';

class Watchlist extends Equatable {
  Watchlist({
    required this.id,
    required this.type,
    required this.overview,
    required this.posterPath,
    required this.title,
  });

  int id;
  String type;
  String? overview;
  String? posterPath;
  String? title;

  @override
  List<Object?> get props => [id, overview, posterPath, title];
}
