import 'package:flutter/material.dart';
import 'package:wsurge/core/common/settings_input_dialog.dart';
import 'package:wsurge/core/utils/preferences_utils.dart';

class ValuePreferenceWidget<T> extends StatelessWidget {
  const ValuePreferenceWidget({
    super.key,
    required this.value,
    required this.preferences,
    this.enabled = true,
    required this.title,
    this.presentValue,
    this.formatInputValue,
    this.validateInput,
    this.inputToValue,
    this.digitsOnly = false,
    this.leading,
  });

  final T value;
  final PreferencesNotifier<T, dynamic> preferences;
  final bool enabled;
  final String title;
  final String Function(T value)? presentValue;
  final String Function(T value)? formatInputValue;
  final bool Function(String value)? validateInput;
  final T? Function(String input)? inputToValue;
  final bool digitsOnly;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(title),
      subtitle: Text(presentValue?.call(value) ?? value.toString()),
      enabled: enabled,
      onTap: () async {
        final inputValue = await SettingsInputDialog(
          title: title,
          initialValue: value,
          validator: validateInput,
          valueFormatter: formatInputValue,
          onReset: preferences.reset,
          digitsOnly: digitsOnly,
          mapTo: inputToValue,
          possibleValues: preferences.possibleValues,
        ).show(context);
        if (inputValue == null) {
          return;
        }
        await preferences.update(inputValue);
      },
    );
  }
}
