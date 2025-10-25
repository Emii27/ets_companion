import 'package:ets_companion/components/screen_layout.dart';
import 'package:flutter/material.dart';
import 'package:term_glyph/term_glyph.dart' as glyph;

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      title: "To do",
      child: ListView(
        children: [
          BulletText('Base Navigation', isStrikethrough: true),
          BulletText('Todo screen', isStrikethrough: true),
          BulletText('Client screen', isStrikethrough: true),
          BulletText('Client DB', isStrikethrough: true),
          BulletText('Client form', isStrikethrough: true),
          BulletText('Job screen', isStrikethrough: true),
          BulletText('Job DB'),
          BulletText('Job form'),
        ],
      ),
    );
  }
}

class BulletText extends StatelessWidget {
  final String text;
  final bool isStrikethrough;

  const BulletText(this.text, {super.key, this.isStrikethrough = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${glyph.bullet} $text',
      style: TextStyle(
        decoration: isStrikethrough
            ? TextDecoration.lineThrough
            : TextDecoration.none,
      ),
    );
  }
}
