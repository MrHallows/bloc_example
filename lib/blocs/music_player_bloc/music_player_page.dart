// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';

// Project imports:
import 'package:bloc_example/blocs/music_player_bloc/music_player_bloc.dart';
import 'package:bloc_example/ui/widgets/custom_appbar.dart';
import 'package:bloc_example/ui/widgets/simple_button.dart';

class MusicPlayerPage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: CustomAppBar(
				title: BlocBuilder<MusicPlayerBloc, MusicPlayerState>(
					builder: (_, MusicPlayerState state) {
						if(state is MusicPlayerPlaying) {
							return Text('Playing: ${state.musicTitle}');
						} else if(state is MusicPlayerPaused) {
							return const Text('Paused');
						} else {
							return const Text('Music Player');
						}
					}
				),
			),
			body: Center(
				child: Row(
					mainAxisAlignment: MainAxisAlignment.center,
					crossAxisAlignment: CrossAxisAlignment.center,
					children: <Widget>[
						BlocBuilder<MusicPlayerBloc, MusicPlayerState>(
							builder: (BuildContext context, MusicPlayerState state) {
								if(state is MusicPlayerIdle || state is MusicPlayerPaused) {
									return SimpleButton(
										icon: Ionicons.play_outline,
										onPressed: () {
											BlocProvider.of<MusicPlayerBloc>(context)
												.add(const PlayEvent(musicTitle: 'Good Morning Fire Eater'));
										}
									);
								} else {
									return SimpleButton(
										icon: Ionicons.pause,
										onPressed: () {
											BlocProvider.of<MusicPlayerBloc>(context)
												.add(PauseEvent());
										}
									);
								}
							}
						),
						BlocBuilder<MusicPlayerBloc, MusicPlayerState>(
							builder: (_, MusicPlayerState state) {
								if(state is MusicPlayerPlaying || state is MusicPlayerPaused) {
									return SimpleButton(
										icon: Ionicons.stop,
										onPressed: () {
											BlocProvider.of<MusicPlayerBloc>(context)
												.add(StopEvent());
										}
									);
								} else {
									return Container(
										width: 0,
									);
								}
							}
						)
					],
				),
			),
		);
	}
}
