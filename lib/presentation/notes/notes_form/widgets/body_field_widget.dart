import 'package:firebase_ddd_app/application/notes/note_form/note_form_bloc.dart';
import 'package:firebase_ddd_app/domain/notes/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyField extends StatelessWidget {
  BodyField({Key? key}) : super(key: key);
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.note.body.getOrCrash();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: 'Note',
            counterText: '',
          ),
          maxLength: NoteBody.maxLength,
          maxLines: null,
          minLines: 5,
          onChanged: (value) => BlocProvider.of<NoteFormBloc>(context).add(
            NoteFormEvent.bodyChanged(value),
          ),
          validator: (_) => BlocProvider.of<NoteFormBloc>(context)
              .state
              .note
              .body
              .value
              .fold(
                (f) => f.maybeMap(
                    orElse: () => null,
                    empty: (_) => 'Cannot be empty',
                    exceedingLength: (f) => 'Exceeding length, max: ${f.max}'),
                (_) => null,
              ),
        ),
      ),
    );
  }
}
