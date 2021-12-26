import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimerNotifier extends StateNotifier<TimerModel> {
  TimerNotifier() : super(_initialState);
  static const _initialDuration = 10;
  static final _initialState =
      TimerModel(_durationString(_initialDuration), ButtonsState.initial);

  static String _durationString(int duration) {
    final minutes = ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final seconds = (duration % 60).floor().toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  final Ticker _ticker = Ticker();
  StreamSubscription<int>? _tickerSubscription;

  void start() {
    if (state.buttonState == ButtonsState.paused) {
      _restartTimer();
    } else {
      _startTimer();
    }
  }

  void pause() {
    if (state.buttonState == ButtonsState.started) {
      state = TimerModel(state.timeLeft, ButtonsState.paused);
      _tickerSubscription?.pause();
    } else {
      _restartTimer();
    }
  }

  void resetTimer() {
    _tickerSubscription?.cancel();
    state = TimerModel(_durationString(_initialDuration), ButtonsState.initial);
  }

  void _startTimer() {
    _tickerSubscription?.cancel();

    _tickerSubscription =
        _ticker.tick(ticks: _initialDuration).listen((duration) {
      state = TimerModel(_durationString(duration), ButtonsState.started);
    });

    _tickerSubscription?.onDone(() {
      state = TimerModel(state.timeLeft, ButtonsState.finished);
    });

    state = TimerModel(_durationString(_initialDuration), ButtonsState.started);
  }

  void _restartTimer() {
    _tickerSubscription?.resume();
    state = TimerModel(state.timeLeft, ButtonsState.started);
  }

  @override
  void dispose() {
    _tickerSubscription?.cancel();
    super.dispose();
  }
}

class Ticker {
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(
      const Duration(seconds: 1),
      (x) => ticks - x - 1,
    ).take(ticks);
  }
}

class TimerModel {
  const TimerModel(this.timeLeft, this.buttonState);
  final String timeLeft;
  final ButtonsState buttonState;
}

enum ButtonsState { initial, started, paused, finished }
