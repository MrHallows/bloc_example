// Dart imports:
import 'dart:async';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

// Project imports:
import 'package:bloc_example/models/music_player.dart';

part 'music_player_event.dart';
part 'music_player_state.dart';

class MusicPlayerBloc extends Bloc<MusicPlayerEvent, MusicPlayerState> {
	MusicPlayerBloc(
		this._musicPlayer
	) : assert(_musicPlayer != null, '_musicPlayer cannot be null'),
			super(null);

	final MusicPlayer _musicPlayer;

	MusicPlayerState get initialState => MusicPlayerIdle();

	@override
	Stream<MusicPlayerState> mapEventToState(MusicPlayerEvent event) async* {
		if(event is PlayEvent) {
			final String musicTitle = event.musicTitle;
			await _musicPlayer.play(musicTitle);
			yield MusicPlayerPlaying(musicTitle: musicTitle);
		} else if(event is PauseEvent) {
			await _musicPlayer.pause();
			yield MusicPlayerPaused();
		} else if(event is StopEvent) {
			await _musicPlayer.stop();
			yield MusicPlayerIdle();
		}
	}
}
