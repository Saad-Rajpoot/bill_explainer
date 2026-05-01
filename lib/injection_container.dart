import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/network/network_info.dart';
import 'data/datasources/local/bill_local_datasource.dart';
import 'data/datasources/remote/supabase_datasource.dart';
import 'data/repositories/bill_repository_impl.dart';
import 'domain/repositories/bill_repository.dart';
import 'domain/usecases/compare_bills_usecase.dart';
import 'domain/usecases/explain_bill_usecase.dart';
import 'domain/usecases/get_bill_history_usecase.dart';
import 'domain/usecases/scan_bill_usecase.dart';
import 'presentation/blocs/bill_explain/bill_explain_bloc.dart';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'presentation/blocs/bill_history/bill_history_bloc_impl.dart';
import 'presentation/blocs/bill_scan/bill_scan_bloc.dart';
import 'features/bill_scan/data/services/gemini_bill_service.dart';
import 'features/bill_scan/data/services/hybrid_bill_extractor.dart';

/// Global GetIt service locator.
final GetIt sl = GetIt.instance;

/// Initialises all dependencies.
/// Call once from [main()] after Flutter & Supabase are initialized.
Future<void> initDependencies(Isar isar) async {
  // ─── External ─────────────────────────────────────────────────────
  sl.registerLazySingleton<Connectivity>(() => Connectivity());
  sl.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
  sl.registerLazySingleton<Dio>(() => Dio());
  sl.registerLazySingleton<FlutterSecureStorage>(
      () => const FlutterSecureStorage());

  // ─── Core ─────────────────────────────────────────────────────────
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(sl<Connectivity>()),
  );

  // ─── Data Sources ─────────────────────────────────────────────────
  sl.registerLazySingleton<BillLocalDatasource>(
    () => BillLocalDatasource(isar),
  );

  sl.registerLazySingleton<SupabaseDatasource>(
    () => SupabaseDatasource(sl<SupabaseClient>()),
  );

  sl.registerLazySingleton<GeminiBillService>(
    () => GeminiBillService(
      dio: sl<Dio>(),
      apiKey:
          'AIzaSyAKxlvqZQEeP6DmMz3Brj5IvuokYV3Yidc', // Get it from https://aistudio.google.com/
    ),
  );

  sl.registerLazySingleton(() => HybridBillExtractor(
        geminiService: sl(),
      ));

  // ─── Repositories ─────────────────────────────────────────────────
  sl.registerLazySingleton<BillRepository>(
    () => BillRepositoryImpl(
      localDatasource: sl(),
      remoteDatasource: sl(),
      networkInfo: sl(),
      hybridExtractor: sl(),
    ),
  );

  // ─── Use Cases ────────────────────────────────────────────────────
  sl.registerLazySingleton(() => ScanBillUseCase(sl<BillRepository>()));
  sl.registerLazySingleton(() => ExplainBillUseCase(sl<BillRepository>()));
  sl.registerLazySingleton(() => GetBillHistoryUseCase(sl<BillRepository>()));
  sl.registerLazySingleton(() => CompareBillsUseCase(sl<BillRepository>()));

  // ─── BLoCs (factory — new instance per screen) ────────────────────
  sl.registerFactory(
    () => BillScanBloc(scanBillUseCase: sl<ScanBillUseCase>()),
  );
  sl.registerFactory(
    () => BillExplainBloc(explainBillUseCase: sl<ExplainBillUseCase>()),
  );
  sl.registerFactory(
    () => BillHistoryBlocImpl(
      getBillHistoryUseCase: sl<GetBillHistoryUseCase>(),
      billRepository: sl<BillRepository>(),
    ),
  );
}
