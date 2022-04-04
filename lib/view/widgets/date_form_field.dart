import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormField extends StatefulWidget {
  final ValueChanged<DateTime?> onChanged;
  final bool readOnly;

  const DateFormField({
    Key? key,
    required this.onChanged,
    this.readOnly = false,
  }) : super(key: key);

  @override
  State<DateFormField> createState() => _DateFormFieldState();
}

class _DateFormFieldState extends State<DateFormField> {
  final _controller = TextEditingController();

  void _setDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      lastDate: DateTime.now(),
      firstDate: DateTime(1900),
    );
    widget.onChanged(date);
    if (date != null) {
      _controller.text = DateFormat('dd/MM/yyyy').format(date);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      controller: _controller,
      onTap: widget.readOnly ? null : _setDate,
    );
  }
}
