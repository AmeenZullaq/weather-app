import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VisibilityCubit extends Cubit<bool> {
  VisibilityCubit() : super(true);

  final FocusNode focusNode = FocusNode();
  bool isVisible = true;

  void onFocused() {
    isVisible = !isVisible;
    emit(isVisible);
  }
}
