part of 'top_rated_tv_series_bloc.dart';

abstract class TopRatedTVSeriesEvent extends Equatable {
  const TopRatedTVSeriesEvent();

  @override
  List<Object?> get props => [];
}

class TopRatedTVSeriesFetched extends TopRatedTVSeriesEvent {
  const TopRatedTVSeriesFetched();

  @override
  List<Object?> get props => [];
}
