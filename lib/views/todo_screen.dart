import 'package:ets_companion/utils/spacing_utils.dart';
import 'package:flutter/material.dart';
import 'package:term_glyph/term_glyph.dart' as glyph;

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(SpacingUtils.space300),
      children: [
        Text(
          'To do'.toUpperCase(),
          style: Theme.of(context).textTheme.displayMedium,
        ),
        SizedBox(height: SpacingUtils.space400),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BulletText('Base Navigation', isStrikethrough: true),
            BulletText('Todo screen', isStrikethrough: true),
            BulletText('Client screen', isStrikethrough: true),
            BulletText('Client DB'),
          ],
        ),
      ],
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
