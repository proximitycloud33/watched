import 'package:core/utils/exception.dart';
import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tv_series/data/models/episode_model.dart';
import 'package:tv_series/data/models/genre_model.dart';
import 'package:tv_series/data/models/season_model.dart';
import 'package:tv_series/data/models/tv_series_detail_response_model.dart';
import 'package:tv_series/data/models/tv_series_model.dart';
import 'package:tv_series/data/models/tv_series_season_detail_model.dart';
import 'package:tv_series/data/repositories/tv_series_repository_impl.dart';
import 'package:tv_series/domain/entities/episode.dart';
import 'package:tv_series/domain/entities/genre.dart';
import 'package:tv_series/domain/entities/season.dart';
import 'package:tv_series/domain/entities/tv_series.dart';
import 'package:tv_series/domain/entities/tv_series_detail.dart';
import 'package:tv_series/domain/entities/tv_series_season_detail.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late TVSeriesRepositoryImpl repository;
  late MockTVSeriesRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockTVSeriesRemoteDataSource();
    repository = TVSeriesRepositoryImpl(remoteDataSource: mockRemoteDataSource);
  });

  const testTVSeriesModel = TVSeriesModel(
    backdropPath: '/muth4OYamXf41G2evdrLEg8d3om.jpg',
    genreIds: [14, 28],
    id: 557,
    originalName: 'Spider-Man',
    overview:
        'After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man.',
    popularity: 60.441,
    posterPath: '/rweIrveL43TaxUN0akQEaAXL6x0.jpg',
    firstAirDate: '2002-05-01',
    name: 'Spider-Man',
    originCountry: ['US'],
    originalLanguage: 'en',
    voteAverage: 7.2,
    voteCount: 13507,
  );

  const testTVSeries = TVSeries(
    backdropPath: '/muth4OYamXf41G2evdrLEg8d3om.jpg',
    genreIds: [14, 28],
    id: 557,
    originalName: 'Spider-Man',
    overview:
        'After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man.',
    popularity: 60.441,
    posterPath: '/rweIrveL43TaxUN0akQEaAXL6x0.jpg',
    firstAirDate: '2002-05-01',
    name: 'Spider-Man',
    originCountry: ['US'],
    originalLanguage: 'en',
    voteAverage: 7.2,
    voteCount: 13507,
  );
  final testTVSeriesModelList = <TVSeriesModel>[testTVSeriesModel];
  final testTVSeriesList = <TVSeries>[testTVSeries];

  group('On The Air TV Series', () {
    test('Should return remote data when the call to remote data is success',
        () async {
      when(mockRemoteDataSource.getOnTheAirTVSeries())
          .thenAnswer((realInvocation) async => testTVSeriesModelList);

      final result = await repository.getOnTheAirTVSeries();

      verify(mockRemoteDataSource.getOnTheAirTVSeries());

      final resultList = result.getOrElse(() => []);
      expect(resultList, testTVSeriesList);
    });
    test(
        'Should return server failure when the call to remote data is unsuccessful',
        () async {
      when(mockRemoteDataSource.getOnTheAirTVSeries())
          .thenThrow(ServerException());

      final result = await repository.getOnTheAirTVSeries();

      verify(mockRemoteDataSource.getOnTheAirTVSeries());

      expect(result, equals(const Left(ServerFailure(''))));
    });
  });
  group('Popular TV Series', () {
    test('Should return remote data when the call to remote data is success',
        () async {
      when(mockRemoteDataSource.getPopularTVSeries())
          .thenAnswer((realInvocation) async => testTVSeriesModelList);

      final result = await repository.getPopularTVSeries();

      verify(mockRemoteDataSource.getPopularTVSeries());

      final resultList = result.getOrElse(() => []);
      expect(resultList, testTVSeriesList);
    });
    test(
        'Should return server failure when the call to remote data is unsuccessful',
        () async {
      when(mockRemoteDataSource.getPopularTVSeries())
          .thenThrow(ServerException());

      final result = await repository.getPopularTVSeries();

      verify(mockRemoteDataSource.getPopularTVSeries());

      expect(result, equals(const Left(ServerFailure(''))));
    });
  });
  group('Top Rated TV Series', () {
    test('Should return remote data when the call to remote data is success',
        () async {
      when(mockRemoteDataSource.getTopRatedTVSeries())
          .thenAnswer((realInvocation) async => testTVSeriesModelList);

      final result = await repository.getTopRatedTVSeries();

      verify(mockRemoteDataSource.getTopRatedTVSeries());

      final resultList = result.getOrElse(() => []);
      expect(resultList, testTVSeriesList);
    });
    test(
        'Should return server failure when the call to remote data is unsuccessful',
        () async {
      when(mockRemoteDataSource.getTopRatedTVSeries())
          .thenThrow(ServerException());

      final result = await repository.getTopRatedTVSeries();

      verify(mockRemoteDataSource.getTopRatedTVSeries());

      expect(result, equals(const Left(ServerFailure(''))));
    });
  });
  group('Detail TV Series', () {
    const testId = 1;
    //model
    const testTVSeriesDetailResponse = TVSeriesDetailResponseModel(
      adult: false,
      firstAirDate: '2022-08-21',
      backdropPath: 'backdropPath',
      genres: [GenreModel(id: 1, name: 'Action')],
      id: 1,
      overview: 'overview',
      posterPath: 'posterPath',
      name: 'Dragon',
      originalName: 'House of Dragon',
      numberOfEpisodes: 1,
      numberOfSeasons: 1,
      seasons: [
        SeasonModel(
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
    //entity
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
    test('Should return remote data when the call to remote data is success',
        () async {
      when(mockRemoteDataSource.getDetailTVSeries(testId))
          .thenAnswer((realInvocation) async => testTVSeriesDetailResponse);

      final result = await repository.getDetailTVSeries(testId);

      verify(mockRemoteDataSource.getDetailTVSeries(testId));

      expect(result, equals(const Right(testTVSeriesDetail)));
    });
    test(
        'Should return server failure when the call to remote data is unsuccessful',
        () async {
      when(mockRemoteDataSource.getDetailTVSeries(testId))
          .thenThrow(ServerException());

      final result = await repository.getDetailTVSeries(testId);

      verify(mockRemoteDataSource.getDetailTVSeries(testId));

      expect(result, equals(const Left(ServerFailure(''))));
    });
  });
  group('Get TV Series Recommendations', () {
    final testTVSeriesList = <TVSeriesModel>[];
    const testId = 1;
    test('Should return data (list of tv series) when the call is success',
        () async {
      when(mockRemoteDataSource.getRecommendationTVSeries(testId))
          .thenAnswer((realInvocation) async => testTVSeriesList);

      final result = await repository.getRecommendationTVSeries(testId);

      verify(mockRemoteDataSource.getRecommendationTVSeries(testId));

      final resultList = result.getOrElse(() => []);

      expect(resultList, equals(testTVSeriesList));
    });
    test(
        'Should return server failure when the call to remote data is unsuccessful',
        () async {
      when(mockRemoteDataSource.getRecommendationTVSeries(testId))
          .thenThrow(ServerException());

      final result = await repository.getRecommendationTVSeries(testId);

      verify(mockRemoteDataSource.getRecommendationTVSeries(testId));

      expect(result, equals(const Left(ServerFailure(''))));
    });
  });
  group('Search TV Series', () {
    const testQuery = 'test';
    test('Should return data (list of tv series) when the call is success',
        () async {
      when(mockRemoteDataSource.searchTVSeries(testQuery))
          .thenAnswer((realInvocation) async => testTVSeriesModelList);

      final result = await repository.searchTVSeries(testQuery);

      verify(mockRemoteDataSource.searchTVSeries(testQuery));

      final resultList = result.getOrElse(() => []);

      expect(resultList, testTVSeriesList);
    });
    test(
        'Should return server failure when the call to remote data is unsuccessful',
        () async {
      when(mockRemoteDataSource.searchTVSeries(testQuery))
          .thenThrow(ServerException());

      final result = await repository.searchTVSeries(testQuery);

      verify(mockRemoteDataSource.searchTVSeries(testQuery));

      expect(result, equals(const Left(ServerFailure(''))));
    });
    group('Get Season Details', () {
      const testId = 1;
      const testSeason = 1;
      const testTVSeriesSeasonDetailModel = TVSeriesSeasonDetailModel(
        airDate: '2022-08-01',
        episodes: [
          EpisodeModel(
            airDate: '2022-08-01',
            episodeNumber: 1,
            id: 1,
            showId: 1,
            name: 'Never',
            overview: 'Gonna',
            productionCode: 'Give',
            runtime: 60,
            seasonNumber: 1,
            stillPath: '/youUp.jpg',
            voteAverage: 4.1,
            voteCount: 420,
          ),
        ],
        id: '1',
        name: 'Rick Astley',
        overview: 'You are no stranger to love',
        posterPath: '/path',
        purpleId: 1,
        seasonNumber: 1,
      );
      const testTVSeriesSeasonDetail = TVSeriesSeasonDetail(
        airDate: '2022-08-01',
        episodes: [
          Episode(
            airDate: '2022-08-01',
            episodeNumber: 1,
            id: 1,
            showId: 1,
            name: 'Never',
            overview: 'Gonna',
            productionCode: 'Give',
            runtime: 60,
            seasonNumber: 1,
            stillPath: '/youUp.jpg',
            voteAverage: 4.1,
            voteCount: 420,
          ),
        ],
        id: '1',
        name: 'Rick Astley',
        overview: 'You are no stranger to love',
        posterPath: '/path',
        purpleId: 1,
        seasonNumber: 1,
      );
      test('Should return data when the call is success', () async {
        when(mockRemoteDataSource.getSeasonDetailTVSeries(testId, testSeason))
            .thenAnswer(
                (realInvocation) async => testTVSeriesSeasonDetailModel);

        final result =
            await repository.getSeasonDetailTVSeries(testId, testSeason);

        verify(
            mockRemoteDataSource.getSeasonDetailTVSeries(testId, testSeason));

        expect(result, equals(const Right(testTVSeriesSeasonDetail)));
      });
      test(
          'Should return server failure when the call to remote data is unsuccessful',
          () async {
        when(mockRemoteDataSource.getSeasonDetailTVSeries(testId, testSeason))
            .thenThrow(ServerException());

        final result =
            await repository.getSeasonDetailTVSeries(testId, testSeason);

        verify(
            mockRemoteDataSource.getSeasonDetailTVSeries(testId, testSeason));

        expect(result, equals(const Left(ServerFailure(''))));
      });
    });
  });
}
