import 'package:core/data/repositories/auth_repository_impl.dart';
import 'package:core/domain/repositories/auth_repository.dart';
import 'package:core/domain/usecases/do_sign_in.dart';
import 'package:core/domain/usecases/do_sign_up.dart';
import 'package:core/domain/usecases/do_sign_up_with_google.dart';
import 'package:core/presentation/bloc/auth/auth_bloc.dart';
import 'package:core/presentation/bloc/auth/auth_sign_in_bloc.dart';
import 'package:core/presentation/bloc/auth/auth_with_google_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

final locator = GetIt.instance;

void init (){
  locator.registerFactory(() => AuthBloc(locator()));
  locator.registerFactory(() => AuthWithGoogleBloc(locator()));
  locator.registerFactory(() => AuthSignInBloc(locator()));

  locator.registerLazySingleton(() => DoSignUp(locator()));
  locator.registerLazySingleton(() => DoSignUpWithGoogle(locator()));
  locator.registerLazySingleton(() => DoSignIn(locator()));

  locator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(locator(), locator()));

  locator.registerLazySingleton(() => FirebaseAuth.instance);
  locator.registerLazySingleton(() => GoogleSignIn());
}