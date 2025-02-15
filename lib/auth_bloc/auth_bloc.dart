import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gymnote/auth_bloc/auth_event.dart';
import 'package:gymnote/auth_bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthBloc() : super(AuthInitial()) {

    on<AuthSignIn>((event, emit) async {
      emit(AuthLoading());
      try{
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: event.email,
          password: event.password
          );
        emit(Authenticated(userCredential.user!.email!));
      } catch(e) {
        emit(AuthError(e.toString()));
      }


     
    });

    on<AuthSignOut>((event, emit) async {
        emit(AuthLoading());
        await _auth.signOut();
        emit(Unauthenticated());
    });

    on<AuthCheckStatus>((event, emit) {
      final user = _auth.currentUser;
      if (user != null){
          emit(Authenticated(user.email!));
      } else {
        emit(Unauthenticated());
      }
    });
  }
}