/// arquivo pra gerenciar as cores
///
/// _act pra deixar privado

import 'package:flutter/material.dart';

class CustomColors {
  Color _activePrimaryButton = Color.fromARGB(255, 63, 81, 181);

  Color getActivePrimaryButtonColor() {
    return _activePrimaryButton;
  }
}
