

import 'package:get_it/get_it.dart';
import 'package:red_business247/data/api/api_appwrite.dart';
import 'package:red_business247/data/client/client_appwrite.dart';
import 'package:red_business247/data/repository/repository.dart';
import 'package:red_business247/data/sharedpref/shared_preference_helper.dart';
import 'package:red_business247/di/module/local_module.dart';
import 'package:red_business247/services/navigation_service.dart';
import 'package:red_business247/stores/language/language_store.dart';
import 'package:red_business247/stores/theme/theme_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt getIt=GetIt.instance;

Future<void> setupLocator() async {

  getIt.registerSingleton(ClientAppWrite());
  getIt.registerSingletonAsync<SharedPreferences>(() => LocalModule.provideSharedPreferences());
  getIt.registerSingleton(SharedPreferenceHelper(await getIt.getAsync<SharedPreferences>()));

  getIt.registerSingleton(AppwriteApi( getIt<ClientAppWrite>(), getIt<SharedPreferenceHelper>()));
  getIt.registerLazySingleton(() => NavigationService());
  // repository:----------------------------------------------------------------
  getIt.registerSingleton(Repository(
      getIt<AppwriteApi>(),
      getIt<SharedPreferenceHelper>(),
  ));

  // stores:--------------------------------------------------------------------

  // getIt.registerSingleton(AuthStore(getIt<Repository>()));
  // getIt.registerSingleton(AdminStore(getIt<Repository>()));

  getIt.registerSingleton(ThemeStore(getIt<Repository>()));
  getIt.registerSingleton(LanguageStore(getIt<Repository>()));

  // getIt.registerSingleton(CustomerStore(getIt<Repository>()));
  // getIt.registerSingleton(VendorStore(getIt<Repository>()));

}
