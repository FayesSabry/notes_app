import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(text: 'Edit Note', icon: (Icons.done)),
          SizedBox(height: 20),
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 16),
          CustomTextField(hintText: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
