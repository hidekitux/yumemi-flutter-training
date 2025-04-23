import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/presentation/common/components/error_dialog.dart';

const _textTitle = 'エラーが発生しました';
const _textMessage = 'エラーが発生しました。しばらくお待ちください。';
const _textOkButton = 'OK';
const _textCancelButton = 'キャンセル';

Widget _createWidget({
  String? title,
  String? message,
  void Function()? onOkPressed,
}) {
  return MaterialApp(
    home: ErrorDialog(
      title: title ?? _textTitle,
      message: message ?? _textMessage,
      onOkPressed: onOkPressed ?? () {},
    ),
  );
}

void main() {
  testWidgets('title, message, and OK / Cancel buttons are displayed', (
    tester,
  ) async {
    // Arrange
    await tester.pumpWidget(_createWidget());

    // Act and Assert
    expect(find.text(_textTitle), findsOneWidget);
    expect(find.text(_textMessage), findsOneWidget);
    expect(find.widgetWithText(TextButton, _textOkButton), findsOneWidget);
  });

  testWidgets('onOkPressed is executed when the OK button is pressed', (
    tester,
  ) async {
    // Arrange
    var onOkPressedCalled = false;
    await tester.pumpWidget(
      _createWidget(
        onOkPressed: () {
          onOkPressedCalled = true;
        },
      ),
    );

    // Act
    await tester.tap(find.widgetWithText(TextButton, 'OK'));
    await tester.pump();

    // Assert
    expect(onOkPressedCalled, true);
  });
}
