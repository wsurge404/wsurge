import 'package:flutter/material.dart';
class ValueWrap<V> {
  V? _v;

  ValueWrap();

  factory ValueWrap.of(V v) {
    var valueWrap = ValueWrap<V>();
    valueWrap._v = v;
    return valueWrap;
  }

  void set(V? v) => this._v = v;

  V? get() => this._v;

  bool isNull() => this._v == null;
}
class SwitchWidget extends StatefulWidget {
  final String? title;
  final String? subtitle;
  final ValueWrap<bool> value;
  final ValueChanged<bool> onChanged;
  final double scale;

  SwitchWidget({super.key, this.title, this.subtitle, required bool value, required this.onChanged, this.scale = 1})
      : value = ValueWrap.of(value);

  @override
  State<StatefulWidget> createState() => _SwitchState();
}

class _SwitchState extends State<SwitchWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.title == null) {
      return Transform.scale(
          scale: widget.scale,
          child: Switch(
            value: widget.value.get() == true,
            onChanged: (value) {
              setState(() {
                widget.value.set(value);
              });
              widget.onChanged(value);
            },
          ));
    }
    return Transform.scale(
        scale: widget.scale,
        child: SwitchListTile(
          title: widget.title == null ? null : Text(widget.title!),
          subtitle: widget.subtitle == null ? null : Text(widget.subtitle!),
          value: widget.value.get() == true,
          dense: true,
          onChanged: (value) {
            setState(() {
              widget.value.set(value);
            });
            widget.onChanged(value);
          },
        ));
  }
}