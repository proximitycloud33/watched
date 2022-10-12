import 'package:core/domain/entities/tv/tv_series.dart';
import 'package:core/utils/failure.dart';
import 'package:core/utils/state_enum.dart';
import 'package:dartz/dartz.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:search/domain/usecases/search_tv_series.dart';
import 'package:search/presentation/provider/search_tv_series_notifier.dart';

import 'search_tv_series_notifier_test.mocks.dart';

@GenerateMocks([SearchTVSeries])
void main() {
  late MockSearchTVSeries mockSearchTVSeries;
  late SearchTVSeriesNotifier provider;
  late int listenerCallCount;
  setUp(
    () {
      listenerCallCount = 0;
      mockSearchTVSeries = MockSearchTVSeries();
      provider = SearchTVSeriesNotifier(mockSearchTVSeries);
      provider.addListener(() {
        listenerCallCount += 1;
      });
    },
  );
  const tTVSeries = TVSeries(
    backdropPath: 'backdropPath',
    genreIds: [1, 2, 3],
    id: 1,
    originalName: 'originalname',
    overview: 'overview',
    popularity: 1,
    posterPath: 'posterPath',
    firstAirDate: 'first',
    name: 'name',
    originCountry: ['US'],
    originalLanguage: 'en',
    voteAverage: 1,
    voteCount: 1,
  );
  final tTVSeriesList = <TVSeries>[tTVSeries];
  const query = 'query';

  test('should change state to loading when usecase is called', () {
    when(mockSearchTVSeries.execute(query))
        .thenAnswer((realInvocation) async => Right(tTVSeriesList));

    provider.fetchSearchTVSeries(query);

    expect(provider.state, RequestState.Loading);
    expect(listenerCallCount, 1);
  });
  test('should change TVSeries data when data is gotten successfully',
      () async {
    when(mockSearchTVSeries.execute(query))
        .thenAnswer((realInvocation) async => Right(tTVSeriesList));

    await provider.fetchSearchTVSeries(query);

    expect(provider.searchResult, tTVSeriesList);
    expect(listenerCallCount, 2);
  });
  test('should return error when data is unsuccessful', () async {
    when(mockSearchTVSeries.execute(query)).thenAnswer(
        (realInvocation) async => Left(ServerFailure('Server Failure')));

    await provider.fetchSearchTVSeries(query);

    expect(provider.state, RequestState.Error);
    expect(provider.message, 'Server Failure');
    expect(listenerCallCount, 2);
  });
}