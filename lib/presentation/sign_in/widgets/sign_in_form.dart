import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../application/auth/auth_bloc.dart';
import '../../notes/notes_overview/notes_overview_page.dart';
import '../../../domain/auth/auth_failure.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              const Text(
                '📑',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 150),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) =>
                    BlocProvider.of<SignInFormBloc>(context).add(
                  EmailChanged(value),
                ),
                validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (failure) => failure.maybeMap(
                        invalidEmail: (_) => 'Invalid Email',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) =>
                    BlocProvider.of<SignInFormBloc>(context).add(
                  PasswordChanged(value),
                ),
                validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                    .state
                    .password
                    .value
                    .fold(
                      (failure) => failure.maybeMap(
                        shortPassword: (_) => 'Short Password',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        BlocProvider.of<SignInFormBloc>(context).add(
                          const SignInWithEmailAndPasswordPressed(),
                        );
                      },
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        BlocProvider.of<SignInFormBloc>(context).add(
                          const RegisteredWithEmailAndPasswordPressed(),
                        );
                      },
                      child: const Text(
                        'REGISTER',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<SignInFormBloc>(context).add(
                    const SignInWithGooglePressed(),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.secondary,
                  ),
                ),
                child: const Text(
                  'SIGN IN WITH GOOGLE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(height: 8),
                const LinearProgressIndicator(value: null),
              ]
            ],
          ),
        );
      },
      listener: (context, state) {
        SnackBar snackBar(AuthFailure failure) {
          return SnackBar(
            content: failure.map(
              cancelledByUser: (_) => const Text('Cancelled'),
              serverError: (_) => const Text('Server Error'),
              emailAlreadyInUse: (_) => const Text('Email already in use'),
              invalidEmailAndPasswordCombination: (_) => const Text(
                'Invalid email and password combination',
              ),
            ),
          );
        }

        state.authFailureOrSuccessOption.fold(
          () => const SizedBox.shrink(),
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(snackBar(failure));
            },
            (_) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) => const NotesOverviewPage(),
                ),
              );
              BlocProvider.of<AuthBloc>(context)
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
    );
  }
}
