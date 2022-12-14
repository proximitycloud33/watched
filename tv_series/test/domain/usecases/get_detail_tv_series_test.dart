import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tv_series/domain/entities/genre.dart';
import 'package:tv_series/domain/entities/season.dart';
import 'package:tv_series/domain/entities/tv_series_detail.dart';
import 'package:tv_series/domain/usecases/get_detail_tv_series.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetDetailTVSeries usecase;
  late MockTVSeriesRepository mockTVSeriesRepository;
  setUp(
    () {
      mockTVSeriesRepository = MockTVSeriesRepository();
      usecase = GetDetailTVSeries(repository: mockTVSeriesRepository);
    },
  );
  const testId = 1;
  const testTVSeriesDetail = TVSeriesDetail(
    adult: false,
    firstAirDate: '2022-08-21',
    backdropPath: 'backdropPath',
    genres: [Genre(id: 1, name: 'Action')],
    id: 1,
    overview: 'overview',
    posterPath: 'posterPath',
    name: 'Dragon',
    originalName: 'House of Dragon',
    numberOfEpisodes: 1,
    numberOfSeasons: 1,
    seasons: [
      Season(
        airDate: '2022-08-21',
        episodeCount: 10,
        id: 1,
        name: 'Dragon',
        overview: '',
        posterPath: '',
        seasonNumber: 1,
      )
    ],
    voteAverage: 1,
    voteCount: 1,
  );
  test('Should get tv series detail from the repository', () async {
    when(mockTVSeriesRepository.getDetailTVSeries(testId))
        .thenAnswer((realInvocation) async => const Right(testTVSeriesDetail));

    final result = await usecase.execute(testId);

    expect(result, const Right(testTVSeriesDetail));
  });
}
