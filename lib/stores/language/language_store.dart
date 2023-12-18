
import 'package:appwrite/models.dart';
import 'package:mobx/mobx.dart';


import '../../data/repository/repository.dart';

part 'language_store.g.dart';

class LanguageStore = _LanguageStore with _$LanguageStore;

abstract class _LanguageStore with Store {
  static const String TAG = "LanguageStore";

  // repository instance
  final Repository _repository;



  // supported languages
  List<Language> supportedLanguages = [
    // Language(
    //     code: 'US',
    //     locale: 'en',
    //     language: 'English',
    //     dictionary: Strings.dictionaryEnglish, name: '', nativeName: ''),
    // Language(code: 'DK', locale: 'da', language: 'Danish'),
    // Language(code: 'ES', locale: 'es', language: 'España'),
    // Language(code: 'AR', locale: 'ar', language: 'Arabic'),
  ];

  // constructor:---------------------------------------------------------------
  _LanguageStore(Repository repository) : this._repository = repository {
    init();
  }

  // store variables:-----------------------------------------------------------
  @observable
  String _locale = "en";

  @computed
  String get locale => _locale;

  // actions:-------------------------------------------------------------------
  @action
  void changeLanguage(String value) {
    _locale = value;
    _repository.changeLanguage(value).then((_) {
      // write additional logic here
    });
  }

  @action
  String getCode() {
    var code;

    if (_locale == 'en') {
      code = "US";
    } else if (_locale == 'da') {
      code = "DK";
    } else if (_locale == 'es') {
      code = "ES";
    } else if (_locale == 'ar') {
      code = 'AR';
    }

    return code;
  }

  // @action
  // String? getLanguage() {
  //   return supportedLanguages[supportedLanguages
  //           .indexWhere((language) => language.locale == _locale)]
  //       .language;
  // }

  // general:-------------------------------------------------------------------
  void init() async {
    // getting current language from shared preference
    if (_repository.currentLanguage != null) {
      _locale = _repository.currentLanguage!;
    }
  }

  // dispose:-------------------------------------------------------------------
  @override
  dispose() {}
}