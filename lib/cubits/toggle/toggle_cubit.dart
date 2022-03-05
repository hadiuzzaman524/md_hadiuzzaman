import 'package:bloc/bloc.dart';

import 'toggle_state.dart';

class ToggleCubit extends Cubit<ToggleState> {
  ToggleCubit() : super(ToggleState(toggle: false));
  void toogleIcon() => emit(ToggleState(toggle: !state.toggle));
}
