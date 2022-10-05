import '../../core/lib/data/datasources/db/database_helper.dart';
import '../../core/lib/data/datasources/watchlist_local_data_source.dart';
import '../../core/lib/data/datasources/movie_remote_data_source.dart';
import '../../core/lib/data/datasources/tv_series_remote_data_source.dart';
import '../../core/lib/domain/repositories/movie_repository.dart';
import '../../core/lib/domain/repositories/tv_series_repository.dart';
import '../../core/lib/domain/repositories/watchlist_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

@GenerateMocks([
  MovieRepository,
  MovieRemoteDataSource,
  TVSeriesRepository,
  TVSeriesRemoteDataSource,
  WatchlistRepository,
  WatchlistLocalDataSource,
  DatabaseHelper,
], customMocks: [
  MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}
