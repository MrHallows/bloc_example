abstract class MusicPlayer {
	Future<bool> play(String musicTitle);
	Future<bool> pause();
	Future<bool> stop();
}

class DummyMusicPlayer extends MusicPlayer {
	@override
	Future<bool> play(String musicTitle) {
		return Future<bool>.value(true);
	}

	@override
	Future<bool> pause() {
		return Future<bool>.value(true);
	}

	@override
	Future<bool> stop() {
		return Future<bool>.value(true);
	}
}
