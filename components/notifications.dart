import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

// import '../core/core.dart';

class BaseNoticeBox extends ConsumerWidget {
  final String message;
  final (Color, Color, Color) colors;
  final double radius;

  const BaseNoticeBox({
    required this.message,
    required this.colors,
    this.radius = 5,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final settings = ref.watch(settingsProvider);
    // final config = ref.watch(appConfigProvider);

    final (bgColor, borderColor, textColor) = colors;
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: borderColor),
        color: bgColor,
      ),
      child: MarkdownBody(
        data: message,
        styleSheet: MarkdownStyleSheet(
          a: TextStyle(color: textColor),
          // p: appTextStyle(context, config.textSize).copyWith(color: textColor),
          // a: appTextStyle(context, config.textSize).copyWith(color: textColor),
        ),
      ),
    );
  }
}

class SuccessNoticeBox extends ConsumerWidget {
  final String message;
  final (Color, Color, Color) boxColors;

  const SuccessNoticeBox({
    required this.message,
    required this.boxColors,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseNoticeBox(message: message, colors: boxColors);
  }
}

class ErrorNoticeBox extends ConsumerWidget {
  final String message;
  final (Color, Color, Color) boxColors;

  const ErrorNoticeBox({
    required this.message,
    required this.boxColors,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseNoticeBox(message: message, colors: boxColors);
  }
}

class InfoNoticeBox extends ConsumerWidget {
  final String message;
  final (Color, Color, Color) boxColors;

  const InfoNoticeBox({
    required this.message,
    required this.boxColors,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseNoticeBox(message: message, colors: boxColors);
  }
}

class GreyNoticeBox extends ConsumerWidget {
  final String message;
  final (Color, Color, Color) boxColors;

  const GreyNoticeBox({
    required this.message,
    required this.boxColors,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseNoticeBox(message: message, colors: boxColors);
  }
}
