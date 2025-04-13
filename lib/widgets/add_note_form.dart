
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_bottn.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(hintText: 'Title', onSaved: (value) => title = value),
          const SizedBox(height: 16),
          CustomTextField(
            hintText: 'Content',
            maxLines: 4,
            onSaved: (value) => content = value,
          ),
          const SizedBox(height: 24),
          CustomBottn(
            text: 'Add',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 200),
        ],
      ),
    );
  }
}
