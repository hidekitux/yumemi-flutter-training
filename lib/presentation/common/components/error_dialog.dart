import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    required String title,
    required String message,
    required void Function() onOkPressed,
    super.key,
  }) : _title = title,
       _message = message,
       _onOkPressed = onOkPressed;

  final String _title;
  final String _message;
  final void Function() _onOkPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(_title),
      content: Text(_message),
      actions: [
        TextButton(
          onPressed: _onOkPressed,
          style: TextButton.styleFrom(foregroundColor: Colors.blue),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
