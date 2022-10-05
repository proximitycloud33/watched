import '../../../common/state_enum.dart';
import '../../../domain/entities/tv/tv_series_season_detail.dart';
import '../../../domain/usecases/tv/get_season_detail_tv_series.dart';
import 'package:flutter/foundation.dart';

class SeasonDetailTVSeriesNotifier extends ChangeNotifier {
  final GetSeasonDetailTVSeries getSeasonDetailTVSeries;

  TVSeriesSeasonDetail? _tvSeriesSeasonDetail;
  RequestState _state = RequestState.Empty;
  String _message = '';

  SeasonDetailTVSeriesNotifier(this.getSeasonDetailTVSeries);

  String get message => _message;
  RequestState get state => _state;
  TVSeriesSeasonDetail? get tvSeriesSeasonDetail => _tvSeriesSeasonDetail;

  Future<void> fetchTVSeriesSeasonDetail(int id, int season) async {
    _state = RequestState.Loading;
    notifyListeners();

    final detailResult = await getSeasonDetailTVSeries.execute(id, season);
    detailResult.fold((failure) {
      _state = RequestState.Error;
      _message = failure.message;
      notifyListeners();
    }, (tvSeriesSeasonDetail) {
      _state = RequestState.Loaded;
      _tvSeriesSeasonDetail = tvSeriesSeasonDetail;
      notifyListeners();
    });
  }
}