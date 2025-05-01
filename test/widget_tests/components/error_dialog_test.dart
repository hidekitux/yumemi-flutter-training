import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/presentation/common/components/error_dialog.dart';

const _textTitle = 'エラーが発生しました';
const _textMessage = 'エラーが発生しました。しばらくお待ちください。';
const _textOkButton = 'OK';

Widget _createWidget({
  String title = _textTitle,
  String message = _textMessage,
  void Function()? onOkPressed,
}) {
  return MaterialApp(
    home: ErrorDialog(
      title: title,
      message: message,
      onOkPressed: onOkPressed ?? () {},
    ),
  );
}

void main() {
  testWidgets('The ErrorDialog is initially displayed, '
      'then the title, message and OK button are displayed', (tester) async {
    // Arrange
    await tester.pumpWidget(_createWidget());

    // Act and Assert
    expect(find.text(_textTitle), findsOneWidget);
    expect(find.text(_textMessage), findsOneWidget);
    expect(find.widgetWithText(TextButton, _textOkButton), findsOneWidget);
  });

  testWidgets('The ErrorDialog is displayed with an onOkPressed callback, '
      'when the OK button is tapped, '
      'then the onOkPressed callback should be executed', (tester) async {
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
    await tester.tap(find.widgetWithText(TextButton, _textOkButton));
    await tester.pump();

    // Assert
    expect(onOkPressedCalled, isTrue);
  });
}
