import 'package:equatable/equatable.dart';

class ToggleState with EquatableMixin{
 final bool toggle;
 ToggleState({required this.toggle});

  @override
  List<Object?> get props => [toggle];
}
