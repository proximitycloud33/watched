import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tv_series/domain/entities/tv_series.dart';
import 'package:tv_series/domain/usecases/get_on_the_air_tv_series.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetOnTheAirTVSeries usecase;
  late MockTVSeriesRepository mockTVSeriesRepository;

  setUp(
    () {
      mockTVSeriesRepository = MockTVSeriesRepository();
      usecase = GetOnTheAirTVSeries(repository: mockTVSeriesRepository);
    },
  );
  final tTVSeries = <TVSeries>[];

  test('should get list of on the air Tv Series from repository', () async {
    when(mockTVSeriesRepository.getOnTheAirTVSeries())
        .thenAnswer((realInvocation) async => Right(tTVSeries));
    final result = await usecase.execute();
    expect(result, Right(tTVSeries));
  });
}
