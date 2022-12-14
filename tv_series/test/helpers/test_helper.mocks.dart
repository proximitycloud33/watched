// Mocks generated by Mockito 5.3.2 from annotations
// in tv_series/test/helpers/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i9;
import 'dart:io' as _i5;

import 'package:core/utils/failure.dart' as _i10;
import 'package:core/utils/ssl_pinning.dart' as _i16;
import 'package:dartz/dartz.dart' as _i2;
import 'package:http/http.dart' as _i7;
import 'package:http/io_client.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:tv_series/data/datasources/tv_series_remote_data_source.dart'
    as _i14;
import 'package:tv_series/data/models/tv_series_detail_response_model.dart'
    as _i3;
import 'package:tv_series/data/models/tv_series_model.dart' as _i15;
import 'package:tv_series/data/models/tv_series_season_detail_model.dart'
    as _i4;
import 'package:tv_series/domain/entities/tv_series.dart' as _i11;
import 'package:tv_series/domain/entities/tv_series_detail.dart' as _i12;
import 'package:tv_series/domain/entities/tv_series_season_detail.dart' as _i13;
import 'package:tv_series/domain/repositories/tv_series_repository.dart' as _i8;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTVSeriesDetailResponseModel_1 extends _i1.SmartFake
    implements _i3.TVSeriesDetailResponseModel {
  _FakeTVSeriesDetailResponseModel_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTVSeriesSeasonDetailModel_2 extends _i1.SmartFake
    implements _i4.TVSeriesSeasonDetailModel {
  _FakeTVSeriesSeasonDetailModel_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSecurityContext_3 extends _i1.SmartFake
    implements _i5.SecurityContext {
  _FakeSecurityContext_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeIOClient_4 extends _i1.SmartFake implements _i6.IOClient {
  _FakeIOClient_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_5 extends _i1.SmartFake implements _i7.Response {
  _FakeResponse_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [TVSeriesRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTVSeriesRepository extends _i1.Mock
    implements _i8.TVSeriesRepository {
  MockTVSeriesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i2.Either<_i10.Failure, List<_i11.TVSeries>>>
      getOnTheAirTVSeries() => (super.noSuchMethod(
            Invocation.method(
              #getOnTheAirTVSeries,
              [],
            ),
            returnValue:
                _i9.Future<_i2.Either<_i10.Failure, List<_i11.TVSeries>>>.value(
                    _FakeEither_0<_i10.Failure, List<_i11.TVSeries>>(
              this,
              Invocation.method(
                #getOnTheAirTVSeries,
                [],
              ),
            )),
          ) as _i9.Future<_i2.Either<_i10.Failure, List<_i11.TVSeries>>>);
  @override
  _i9.Future<_i2.Either<_i10.Failure, List<_i11.TVSeries>>>
      getPopularTVSeries() => (super.noSuchMethod(
            Invocation.method(
              #getPopularTVSeries,
              [],
            ),
            returnValue:
                _i9.Future<_i2.Either<_i10.Failure, List<_i11.TVSeries>>>.value(
                    _FakeEither_0<_i10.Failure, List<_i11.TVSeries>>(
              this,
              Invocation.method(
                #getPopularTVSeries,
                [],
              ),
            )),
          ) as _i9.Future<_i2.Either<_i10.Failure, List<_i11.TVSeries>>>);
  @override
  _i9.Future<_i2.Either<_i10.Failure, List<_i11.TVSeries>>>
      getTopRatedTVSeries() => (super.noSuchMethod(
            Invocation.method(
              #getTopRatedTVSeries,
              [],
            ),
            returnValue:
                _i9.Future<_i2.Either<_i10.Failure, List<_i11.TVSeries>>>.value(
                    _FakeEither_0<_i10.Failure, List<_i11.TVSeries>>(
              this,
              Invocation.method(
                #getTopRatedTVSeries,
                [],
              ),
            )),
          ) as _i9.Future<_i2.Either<_i10.Failure, List<_i11.TVSeries>>>);
  @override
  _i9.Future<_i2.Either<_i10.Failure, _i12.TVSeriesDetail>> getDetailTVSeries(
          int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getDetailTVSeries,
          [id],
        ),
        returnValue:
            _i9.Future<_i2.Either<_i10.Failure, _i12.TVSeriesDetail>>.value(
                _FakeEither_0<_i10.Failure, _i12.TVSeriesDetail>(
          this,
          Invocation.method(
            #getDetailTVSeries,
            [id],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i12.TVSeriesDetail>>);
  @override
  _i9.Future<_i2.Either<_i10.Failure, List<_i11.TVSeries>>>
      getRecommendationTVSeries(int? id) => (super.noSuchMethod(
            Invocation.method(
              #getRecommendationTVSeries,
              [id],
            ),
            returnValue:
                _i9.Future<_i2.Either<_i10.Failure, List<_i11.TVSeries>>>.value(
                    _FakeEither_0<_i10.Failure, List<_i11.TVSeries>>(
              this,
              Invocation.method(
                #getRecommendationTVSeries,
                [id],
              ),
            )),
          ) as _i9.Future<_i2.Either<_i10.Failure, List<_i11.TVSeries>>>);
  @override
  _i9.Future<_i2.Either<_i10.Failure, _i13.TVSeriesSeasonDetail>>
      getSeasonDetailTVSeries(
    int? id,
    int? season,
  ) =>
          (super.noSuchMethod(
            Invocation.method(
              #getSeasonDetailTVSeries,
              [
                id,
                season,
              ],
            ),
            returnValue: _i9.Future<
                    _i2.Either<_i10.Failure, _i13.TVSeriesSeasonDetail>>.value(
                _FakeEither_0<_i10.Failure, _i13.TVSeriesSeasonDetail>(
              this,
              Invocation.method(
                #getSeasonDetailTVSeries,
                [
                  id,
                  season,
                ],
              ),
            )),
          ) as _i9.Future<_i2.Either<_i10.Failure, _i13.TVSeriesSeasonDetail>>);
  @override
  _i9.Future<_i2.Either<_i10.Failure, List<_i11.TVSeries>>> searchTVSeries(
          String? query) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchTVSeries,
          [query],
        ),
        returnValue:
            _i9.Future<_i2.Either<_i10.Failure, List<_i11.TVSeries>>>.value(
                _FakeEither_0<_i10.Failure, List<_i11.TVSeries>>(
          this,
          Invocation.method(
            #searchTVSeries,
            [query],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, List<_i11.TVSeries>>>);
}

/// A class which mocks [TVSeriesRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTVSeriesRemoteDataSource extends _i1.Mock
    implements _i14.TVSeriesRemoteDataSource {
  MockTVSeriesRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<List<_i15.TVSeriesModel>> getOnTheAirTVSeries() =>
      (super.noSuchMethod(
        Invocation.method(
          #getOnTheAirTVSeries,
          [],
        ),
        returnValue:
            _i9.Future<List<_i15.TVSeriesModel>>.value(<_i15.TVSeriesModel>[]),
      ) as _i9.Future<List<_i15.TVSeriesModel>>);
  @override
  _i9.Future<List<_i15.TVSeriesModel>> getPopularTVSeries() =>
      (super.noSuchMethod(
        Invocation.method(
          #getPopularTVSeries,
          [],
        ),
        returnValue:
            _i9.Future<List<_i15.TVSeriesModel>>.value(<_i15.TVSeriesModel>[]),
      ) as _i9.Future<List<_i15.TVSeriesModel>>);
  @override
  _i9.Future<List<_i15.TVSeriesModel>> getTopRatedTVSeries() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTopRatedTVSeries,
          [],
        ),
        returnValue:
            _i9.Future<List<_i15.TVSeriesModel>>.value(<_i15.TVSeriesModel>[]),
      ) as _i9.Future<List<_i15.TVSeriesModel>>);
  @override
  _i9.Future<_i3.TVSeriesDetailResponseModel> getDetailTVSeries(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getDetailTVSeries,
          [id],
        ),
        returnValue: _i9.Future<_i3.TVSeriesDetailResponseModel>.value(
            _FakeTVSeriesDetailResponseModel_1(
          this,
          Invocation.method(
            #getDetailTVSeries,
            [id],
          ),
        )),
      ) as _i9.Future<_i3.TVSeriesDetailResponseModel>);
  @override
  _i9.Future<List<_i15.TVSeriesModel>> searchTVSeries(String? query) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchTVSeries,
          [query],
        ),
        returnValue:
            _i9.Future<List<_i15.TVSeriesModel>>.value(<_i15.TVSeriesModel>[]),
      ) as _i9.Future<List<_i15.TVSeriesModel>>);
  @override
  _i9.Future<_i4.TVSeriesSeasonDetailModel> getSeasonDetailTVSeries(
    int? id,
    int? season,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getSeasonDetailTVSeries,
          [
            id,
            season,
          ],
        ),
        returnValue: _i9.Future<_i4.TVSeriesSeasonDetailModel>.value(
            _FakeTVSeriesSeasonDetailModel_2(
          this,
          Invocation.method(
            #getSeasonDetailTVSeries,
            [
              id,
              season,
            ],
          ),
        )),
      ) as _i9.Future<_i4.TVSeriesSeasonDetailModel>);
  @override
  _i9.Future<List<_i15.TVSeriesModel>> getRecommendationTVSeries(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRecommendationTVSeries,
          [id],
        ),
        returnValue:
            _i9.Future<List<_i15.TVSeriesModel>>.value(<_i15.TVSeriesModel>[]),
      ) as _i9.Future<List<_i15.TVSeriesModel>>);
}

/// A class which mocks [IOClientWithSSL].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends _i1.Mock implements _i16.IOClientWithSSL {
  MockHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i5.SecurityContext> globalContext() => (super.noSuchMethod(
        Invocation.method(
          #globalContext,
          [],
        ),
        returnValue:
            _i9.Future<_i5.SecurityContext>.value(_FakeSecurityContext_3(
          this,
          Invocation.method(
            #globalContext,
            [],
          ),
        )),
      ) as _i9.Future<_i5.SecurityContext>);
  @override
  _i9.Future<_i6.IOClient> getIOClient() => (super.noSuchMethod(
        Invocation.method(
          #getIOClient,
          [],
        ),
        returnValue: _i9.Future<_i6.IOClient>.value(_FakeIOClient_4(
          this,
          Invocation.method(
            #getIOClient,
            [],
          ),
        )),
      ) as _i9.Future<_i6.IOClient>);
  @override
  _i9.Future<_i7.Response> get(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
          {#headers: headers},
        ),
        returnValue: _i9.Future<_i7.Response>.value(_FakeResponse_5(
          this,
          Invocation.method(
            #get,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i9.Future<_i7.Response>);
}
