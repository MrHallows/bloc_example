part of 'music_player_bloc.dart';

@immutable
abstract class MusicPlayerEvent {
	const MusicPlayerEvent();
}

class PlayEvent extends MusicPlayerEvent {
	const PlayEvent({
		@required this.musicTitle
	}) : assert(musicTitle != null, 'musicTitle cannot be null');

	final String musicTitle;
}

class PauseEvent extends MusicPlayerEvent {}

class StopEvent extends MusicPlayerEvent {}
