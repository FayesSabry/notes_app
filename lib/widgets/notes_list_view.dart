import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder:
            (context, index) => const NonteItem(
              title: 'First Note',
              subtitle: 'Build your first note',
              date: '12/12/2023',
            ),
        itemCount: 5,
      ),
    );
  }
}
