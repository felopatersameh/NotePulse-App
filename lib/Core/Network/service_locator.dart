import 'package:get_it/get_it.dart';
import 'package:note_pulse/Features/Main/presentation/manager/cubit.dart';

import '../../Features/Main/data/repositories/main_repo.dart';
import '../../Features/Main/domain/repositories/main_repo_impl.dart';
import '../../Features/Main/domain/use_cases/main_use_case.dart';
import '../SqlLite/database_process.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<DatabaseHelper>(() => DatabaseHelper());

  // Register Repos
  getIt.registerLazySingleton<MainRepo>(
      () => MainRepoImpl(getIt<DatabaseHelper>()));

  // Register Use Cases
  getIt.registerLazySingleton<GetNotesUseCase>(
      () => GetNotesUseCase(getIt<MainRepo>()));
  getIt.registerLazySingleton<InsertNoteUseCase>(
      () => InsertNoteUseCase(getIt<MainRepo>()));
  getIt.registerLazySingleton<RemoveNoteUseCase>(
      () => RemoveNoteUseCase(getIt<MainRepo>()));
  getIt.registerLazySingleton<UpdateNoteUseCase>(
      () => UpdateNoteUseCase(getIt<MainRepo>()));

  // Register Cubit
  getIt.registerFactory<AppCubit>(() => AppCubit(
        getIt<GetNotesUseCase>(),
        getIt<InsertNoteUseCase>(),
        getIt<RemoveNoteUseCase>(),
        getIt<UpdateNoteUseCase>(),
      ));
}
