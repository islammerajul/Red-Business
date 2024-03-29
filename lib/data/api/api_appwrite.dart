
import 'package:appwrite/models.dart' as aw;
import 'package:red_business247/constants/database.dart';
import 'package:red_business247/data/client/client_appwrite.dart';
import 'package:red_business247/data/exceptions/network_exceptions.dart';
import 'package:red_business247/data/sharedpref/constants/preferences.dart';
import 'package:red_business247/data/sharedpref/shared_preference_helper.dart';
import 'package:red_business247/models/base/model_response_object.dart';
import 'package:red_business247/utils/sentry_utils.dart';



class AppwriteApi {
  // dio instance

  ClientAppWrite _clientAppWrite = ClientAppWrite();
  final SharedPreferenceHelper sharedPreferenceHelper;
  //injecting dio instance
  AppwriteApi(this._clientAppWrite,this.sharedPreferenceHelper);

  //sentry
  final SentryUtils _sentryUtils = SentryUtils();


  //email session
  Future<ResponseObject> signupSession(String userName,String email,String password, teams_id, batch_id) async {
    try {

      final res = await _clientAppWrite.signUpSession(userName,email,password, teams_id, batch_id);
      print("_clientAppWrite.signUpSession mehod in AppwriteApi class return res ::: $res");
      if (res is NetworkException) {
        return ResponseObject(id: ResponseCode.FAILED, object: res.message);

      } else {
        //_storeUserSession(res);
/*
        final user = res.object as UserModel;
        email = user.email;
        print("User email from api_appwrite(signupSession function) ::: $email");

*/
        sharedPreferenceHelper.setEmailFromLogin(email);
        sharedPreferenceHelper.setUserFromSignup(userName);
        sharedPreferenceHelper.saveIsLoggedIn(true);
        emailSession(email, password, "teacher");
        return ResponseObject(id: ResponseCode.SUCCESSFUL, object: res);

      }
    } catch (e) {

      return ResponseObject(id: ResponseCode.FAILED, object: "Try again.");
    }
  }
Future<ResponseObject> updateSignupInfo(String userId, List<String> labels) async {
    try {

      final res = await _clientAppWrite.updateSignUp(userId,labels);
      if (res is NetworkException) {
        return ResponseObject(id: ResponseCode.FAILED, object: res.message);

      } else {
        _storeUserSession(res);
        return ResponseObject(id: ResponseCode.SUCCESSFUL, object: res);

      }
    } catch (e) {

      return ResponseObject(id: ResponseCode.FAILED, object: "Try again.");
    }
  }


  //email session
  Future<ResponseObject> emailSession(String email,String password,String user_type) async {
    try {

      final res = await _clientAppWrite.emailSession(email,password);
      print("_clientAppWrite.emailSession is ::: $res");
      if (res is NetworkException) {
        return ResponseObject(id: ResponseCode.FAILED, object: res.message);

      } else {
        _storeUserSession(res);
        sharedPreferenceHelper.setEmailFromLogin(email);
        sharedPreferenceHelper.saveIsLoggedIn(true);
        sharedPreferenceHelper.setUserType(user_type);
        return ResponseObject(id: ResponseCode.SUCCESSFUL, object: res);

      }
    } catch (e) {

      return ResponseObject(id: ResponseCode.FAILED, object: "Try again.");
    }
  }

  // Future<ResponseObject> getAppSettings() async {
  //   try {
  //     //final res = await _clientAppWrite.listDocuments();
  //     if (res is NetworkException) {
  //       return ResponseObject(id: ResponseCode.FAILED, object: res.message);
  //
  //     } else {
  //       _storeUserSession(res);
  //       return ResponseObject(id: ResponseCode.SUCCESSFUL, object: res);
  //     }
  //   } catch (e) {
  //
  //     return ResponseObject(id: ResponseCode.FAILED, object: "Try again.");
  //   }
  // }

  // Future<ResponseObject> getProductList() async {
  //   try {
  //     final res = await _clientAppWrite.listDocuments(AppDatabase.core_db,AppDatabase.productlist);
  //
  //     if (res is NetworkException) {
  //       return ResponseObject(id: ResponseCode.FAILED, object: res.message);
  //     } else {
  //       _storeProducts(res);
  //       print("SUCCESSFUL");
  //       print(res);
  //       return ResponseObject(id: ResponseCode.SUCCESSFUL, object: res);
  //     }
  //   } catch (e) {
  //      print("productlist-exception::$e");
  //     return ResponseObject(id: ResponseCode.FAILED, object: "Try again.");
  //   }
  // }

  // Future<ResponseObject> getOrderList() async {
  //   try {
  //     final res = await _clientAppWrite.listDocuments(AppDatabase.core_db,AppDatabase.orderlist);
  //
  //     if (res is NetworkException) {
  //       return ResponseObject(id: ResponseCode.FAILED, object: res.message);
  //     } else {
  //       return ResponseObject(id: ResponseCode.SUCCESSFUL, object: res);
  //     }
  //   } catch (e) {
  //     print("order_list_exception::$e");
  //     return ResponseObject(id: ResponseCode.FAILED, object: "Try again.");
  //   }
  // }

  // Future<ResponseObject> getAppSettingsList() async {
  //   try {
  //     final res = await _clientAppWrite.listDocuments(AppDatabase.core_db,AppDatabase.appSettings);
  //
  //     if (res is NetworkException) {
  //       return ResponseObject(id: ResponseCode.FAILED, object: res.message);
  //     } else {
  //       _storeAppSettings(res);
  //       return ResponseObject(id: ResponseCode.SUCCESSFUL, object: res);
  //     }
  //   } catch (e) {
  //     print("app settings list-exception::$e");
  //     return ResponseObject(id: ResponseCode.FAILED, object: "Try again.");
  //   }
  // }


  Future<ResponseObject> getDocumentList(tag) async {
    try {
      final res = await _clientAppWrite.listDocuments(AppDatabase.core_db,tag);

      if (res is NetworkException) {
        return ResponseObject(id: ResponseCode.FAILED, object: res.message);
      } else {
        //_storeAppSettings(res);
        return ResponseObject(id: ResponseCode.SUCCESSFUL, object: res);
      }
    } catch (e) {
      print("app settings list-exception::$e");
      return ResponseObject(id: ResponseCode.FAILED, object: "Try again.");
    }
  }
  Future<ResponseObject> getDocument(tag,doc) async {
    try {
      final res = await _clientAppWrite.getDocument(AppDatabase.core_db,doc);

      if (res is NetworkException) {
        return ResponseObject(id: ResponseCode.FAILED, object: res.message);
      } else {
        _storeAppSettings(res);
        return ResponseObject(id: ResponseCode.SUCCESSFUL, object: res);
      }
    } catch (e) {
      print("app settings list-exception::$e");
      return ResponseObject(id: ResponseCode.FAILED, object: "Try again.");
    }
  }

  Future<ResponseObject> addDocument(tag,data) async {
    try {
      final res = await _clientAppWrite.addDocument(AppDatabase.core_db,tag,data);

      print("_clientAppWrite.addDocument data: $data, ${AppDatabase.core_db}, $tag");

      if (res is NetworkException) {
        return ResponseObject(id: ResponseCode.FAILED, object: res.message);
      } else {
        return ResponseObject(id: ResponseCode.SUCCESSFUL, object: res);
      }

    } catch (e) {
      print("app document-exception::$e");
      return ResponseObject(id: ResponseCode.FAILED, object: "Try again.");
    }
  }
  // Future<ResponseObject> addPayment(data) async {
  //   try {
  //     final res = await _clientAppWrite.addPayment(data);
  //
  //     print("_clientAppWrite.addDocument data: $data, ${AppDatabase.core_db}");
  //
  //     if (res is NetworkException) {
  //       return ResponseObject(id: ResponseCode.FAILED, object: res.message);
  //     } else {
  //       return ResponseObject(id: ResponseCode.SUCCESSFUL, object: res);
  //     }
  //
  //   } catch (e) {
  //     print("app document-exception::$e");
  //     return ResponseObject(id: ResponseCode.FAILED, object: "Try again.");
  //   }
  // }
  Future<ResponseObject> addStudentWithFunction(email,teams_id,batch_id,url,institution,user,password) async {
    try {
      final res = await _clientAppWrite.studentAuthFunction(email,teams_id,batch_id,url,institution,user,password);

      if (res is NetworkException) {
        return ResponseObject(id: ResponseCode.FAILED, object: res.message);
      } else {
        return ResponseObject(id: ResponseCode.SUCCESSFUL, object: res);
      }
    } catch (e) {
      print("app Function-exception::$e");
      return ResponseObject(id: ResponseCode.FAILED, object: "Try again.");
    }
  }
  Future<ResponseObject> studentAuthMails(student_name, institution_name, user_name, pass, email) async {
    try {
      final res = await _clientAppWrite.studentAuthMailFT(student_name, institution_name, user_name, pass, email);

      if (res is NetworkException) {
        return ResponseObject(id: ResponseCode.FAILED, object: res.message);
      } else {
        return ResponseObject(id: ResponseCode.SUCCESSFUL, object: res);
      }
    } catch (e) {
      print("app Function-exception::$e");
      return ResponseObject(id: ResponseCode.FAILED, object: "Try again.");
    }
  }
  // Future<ResponseObject> studentAuthMail(student_name,institution_name,user_name,pass,email) async {
  //   try {
  //     final res = await _clientAppWrite.studentAuthMailFT(student_name,institution_name,user_name,pass,email);
  //
  //     if (res is NetworkException) {
  //       return ResponseObject(id: ResponseCode.FAILED, object: res.message);
  //     } else {
  //       return ResponseObject(id: ResponseCode.SUCCESSFUL, object: res);
  //     }
  //   } catch (e) {
  //     print("app Function-exception::$e");
  //     return ResponseObject(id: ResponseCode.FAILED, object: "Try again.");
  //   }
  // }

  Future<void> _storeUserSession(aw.Session session) async {
    sharedPreferenceHelper.saveSession(session);
    sharedPreferenceHelper.saveIsLoggedIn(true);


    final email = await _clientAppWrite..account;
    print("get Email::$email");


  }
  void _storeProducts(aw.DocumentList documentList) {
    sharedPreferenceHelper.setDocumentList( documentList.toMap(),Preferences.product_list);
  }
  void _storeAppSettings(aw.DocumentList documentList) {
    sharedPreferenceHelper.setDocumentList( documentList.toMap(),Preferences.app_setting);
  }




}