part of 'music_player_bloc.dart';

@immutable
abstract class MusicPlayerState {
	const MusicPlayerState();
}

class MusicPlayerIdle extends MusicPlayerState {}

class MusicPlayerPlaying extends MusicPlayerState {
	const MusicPlayerPlaying({
		@required this.musicTitle
	}) : assert(musicTitle != null, 'musicTitle cannot be null');

	final String musicTitle;
}

class MusicPlayerPaused extends MusicPlayerState {}
