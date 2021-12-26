import 'package:flutter/material.dart';
import 'package:flutter_app_pilot/notifiers/stopwatch_timer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final timerNotifierProvider =
    StateNotifierProvider<TimerNotifier, TimerModel>((ref) => TimerNotifier());

final _buttonState = Provider<ButtonsState>((ref) {
  return ref.watch(timerNotifierProvider).buttonState;
});

final buttonProvider = Provider<ButtonsState>((ref) {
  return ref.watch(_buttonState);
});

class StopWatchTimer extends StatelessWidget {
  const StopWatchTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('building StopWatchTimer');
    return Scaffold(
      appBar: AppBar(title: const Text('My Timer App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TimerTextWidget(),
            const SizedBox(height: 20),
            const ButtonsContainer(),
          ],
        ),
      ),
    );
  }
}

class TimerTextWidget extends HookConsumerWidget {
  const TimerTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('building TimerTextWidget');
    final timeLeft = ref.watch(timerNotifierProvider).timeLeft;
    return Text(
      timeLeft,
      style: const TextStyle(fontSize: 30),
    );
  }
}

class ButtonsContainer extends HookConsumerWidget {
  const ButtonsContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('building ButtonsContainer');
    final buttonState = ref.watch(buttonProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (buttonState == ButtonsState.initial) ...[
          StartButton(),
        ],
        if (buttonState == ButtonsState.started) ...[
          PauseButton(),
          SizedBox(width: 20),
          ResetButton(),
        ],
        if (buttonState == ButtonsState.paused) ...[
          StartButton(),
          SizedBox(width: 20),
          ResetButton(),
        ],
        if (buttonState == ButtonsState.finished) ...[
          ResetButton(),
        ],
      ],
    );
  }
}

class StartButton extends HookConsumerWidget {
  const StartButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        ref.read(timerNotifierProvider.notifier).start();
      },
      child: Icon(Icons.play_arrow),
    );
  }
}

class PauseButton extends HookConsumerWidget {
  const PauseButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        ref.read(timerNotifierProvider.notifier).pause();
      },
      child: Icon(Icons.pause),
    );
  }
}

class ResetButton extends HookConsumerWidget {
  const ResetButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        ref.read(timerNotifierProvider.notifier).resetTimer();
      },
      child: Icon(Icons.replay),
    );
  }
}
