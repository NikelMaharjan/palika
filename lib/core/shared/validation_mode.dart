import 'package:palikaa/export_pages.dart';


final modeProvider = StateNotifierProvider.autoDispose<ValidationModeState, AutovalidateMode>((ref) => ValidationModeState(AutovalidateMode.disabled));
class ValidationModeState extends StateNotifier<AutovalidateMode>{
  ValidationModeState(super.state);

  void changeMode(AutovalidateMode mode) {
    if (mode == AutovalidateMode.onUserInteraction) {
      state = AutovalidateMode.onUserInteraction;
    } else {
      state = AutovalidateMode.disabled;
    }
  }

}

final modeProvider1 = StateNotifierProvider.autoDispose<ValidationMode1State, AutovalidateMode>((ref) => ValidationMode1State(AutovalidateMode.disabled));
class ValidationMode1State extends StateNotifier<AutovalidateMode>{
  ValidationMode1State(super.state);

  void changeMode(AutovalidateMode mode) {
    if (mode == AutovalidateMode.onUserInteraction) {
      state = AutovalidateMode.onUserInteraction;
    } else {
      state = AutovalidateMode.disabled;
    }
  }

}


final modeProvider2 = StateNotifierProvider.autoDispose<ValidationMode2State, AutovalidateMode>((ref) => ValidationMode2State(AutovalidateMode.disabled));
class ValidationMode2State extends StateNotifier<AutovalidateMode>{
  ValidationMode2State(super.state);

  void changeMode(AutovalidateMode mode) {
    if (mode == AutovalidateMode.onUserInteraction) {
      state = AutovalidateMode.onUserInteraction;
    } else {
      state = AutovalidateMode.disabled;
    }
  }

}


final modeProvider3 = StateNotifierProvider.autoDispose<ValidationMode3State, AutovalidateMode>((ref) => ValidationMode3State(AutovalidateMode.disabled));
class ValidationMode3State extends StateNotifier<AutovalidateMode>{
  ValidationMode3State(super.state);

  void changeMode(AutovalidateMode mode) {
    if (mode == AutovalidateMode.onUserInteraction) {
      state = AutovalidateMode.onUserInteraction;
    } else {
      state = AutovalidateMode.disabled;
    }
  }

}


