import 'package:firebase_ddd_app/presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:firebase_ddd_app/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:firebase_ddd_app/application/auth/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                settings: const RouteSettings(name: '/NotesOverviewPage'),
                builder: (ctx) => const NotesOverviewPage(),
              ),
            );
          },
          unauthenticated: (_) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (ctx) => const SignInPage(),
              ),
            );
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
