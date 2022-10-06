import 'package:core/domain/entities/tv/tv_series_season_detail.dart';
import 'package:core/presentation/pages/tv/tv_series_episode_detail_page.dart';
import 'package:core/styles/colors.dart';
import 'package:core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class SeasonDetailContent extends StatelessWidget {
  final TVSeriesSeasonDetail? seasonDetail;

  const SeasonDetailContent(
    this.seasonDetail,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(seasonDetail!.name),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (seasonDetail!.overview != '') ...[
                Text(
                  'Overview',
                  style: kHeading6,
                ),
                Text(seasonDetail!.overview),
              ],
              const SizedBox(height: 16.0),
              Row(
                children: [
                  const Text('Release Date: '),
                  Text(seasonDetail!.airDate),
                ],
              ),
              const SizedBox(height: 16.0),
              ...seasonDetail!.episodes
                  .map(
                    (episode) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        title: Text(
                          'Episode ${episode.episodeNumber}',
                          style: const TextStyle(color: kRichBlack),
                        ),
                        tileColor: kMikadoYellow,
                        subtitle: Text(
                          episode.name.toString(),
                          style: const TextStyle(color: kRichBlack),
                        ),
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            TVSeriesEpisodeDetailPage.ROUTE_NAME,
                            arguments: episode,
                          );
                        },
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
