import 'dart:convert';
import 'dart:math';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/material.dart';
import 'package:red_business247/data/exceptions/appwrite_exceptions.dart';

import 'package:shared_preferences/shared_preferences.dart';
import '../sharedpref/shared_preference_helper.dart';



class ClientAppWrite{
  String? email;

   Client client=Client();
  var account;
  AppwriteErrorUtil appwriteErrorUtil=AppwriteErrorUtil();



   ClientAppWrite(){
     client = Client()
        .setEndpoint("")
        .setProject("")
        .setSelfSigned(status: true); // For self signed certificates, only use for development

      account = Account(client);
  }



   Future<dynamic> signUpSession(String userName,String email, String password, String teams_id, List<String>batch_id) async{
     print("enter email session");
     print("enter email :: $email");
     print("enter UserName :: $userName");
     print("enter Password :: $password");
     //print("enter UserID :: $userID");
     Account account = Account(client);


     try{
       final user = await account.create(
           userId: ID.unique(),
           name: userName,
           email: email,
           password: password,
       );
       email = user.email;
       print("get response after registration::$user");
       print("get response after registration::${user.password}");
       //return user;

        emailSession(email, password);

       addTeamtoUser(email, teams_id, batch_id, "http://penciltech001.penciltech.xyz");
     }catch(e){
       print("exception::$e");
       return AppwriteErrorUtil.handleError(e as AppwriteException);
     }
   }









   Future<dynamic> studentAuthFunction(String email, String teams_id, List<String>batch_id, String url, String institution, String userName, String password,) async{
     print("enter email session");
     print("enter email :: $email");
     print("enter UserName :: $userName");
     print("enter Password :: $password");
     //print("enter UserID :: $userID");
     Account account = Account(client);


     try{
       final user = await account.create(
           userId: ID.unique(),
           name: userName,
           email: email,
           password: password,
       );
       email = user.email;
       print("get response after registration::$user");
       print("get response after registration::${user.password}");
       //return user;

       emailSession(email, password);
       addTeamtoUser(email, teams_id, batch_id, url);
       studentAuthMailFT(userName, institution, userName, password, email);
     }catch(e){
       print("exception::$e");
       return AppwriteErrorUtil.handleError(e as AppwriteException);
     }
   }


  Future<dynamic> addTeamtoUser(String email, String teams_id,List<String> batch_id,String url) async{

    final functions = Functions(client);

    var body =  {"email":email,"teams-id":teams_id,"batch-id":batch_id,"url":url};

    try {
      final execution = await functions.createExecution(
          functionId: '6550d2603f8db9b34e26',
          body: json.encode(body),
          xasync: false,
          path: '/',
          method: 'GET',
          headers: {
            'X-Custom-Header': '123'
          }
      );
      print("Execution Map for Function ::: ${execution.toMap()}");

    } catch (e) {
      print("Execution exception for Function ::: ${e.toString()}");
    }
  }


  Future passwordRecover(String email, String url) async{
     var Secret = "0310e2a75fe5bb275853afa52b0698dbb0a4469ab8d6550720076765093fafdfaf1949f44fc127035b484cc577bd09f9219391b8782b5dc9e10df03253d0743d45c78de00ac38a7509771d27755d30cad6dd4f45259301a83fe36afe8f1bee7313bb321ef77637b52aa6503352c3dac1aacd21b8d1033d9b3e7f2f7609df9610";

    // Future result = account.createRecovery(
    //   email: email ,
    //   url: url,
    // );
    //
    // result
    //     .then((response) {
    //   print("passwordRecover response :: ${response}");
    //
    // }).catchError((error) {
    //   print("passwordRecover error response ::${error.response}");
    // });
    Future result = account.updateRecovery(
      userId: '655306cf4f0980432a4f',
      secret: Secret,
      password: 'Pencil@123456',
      passwordAgain: 'Pencil@123456',
    );

    result
        .then((response) {
      print("passwordRecover response :: ${response}");
    }).catchError((error) {
      print("passwordRecover error response ::${error.response}");
    });

  }

  Future<dynamic> studentAuthMailFT(
      String student_name, String institution_name,String user_name, String pass,String email
      ) async{

    final functions = Functions(client);

    var body =  {"student-name":student_name,"institution-name":institution_name,"user-name":user_name,"pass":pass,"email":email};
    //var body =  {"student-name":"Meraj","institution-name":"Pencil Edu Care", "user-name":"Meraj","pass":"Pencil@123456","email":"pushpal.aust@gmail.com"};

    try {
      final execution = await functions.createExecution(
          functionId: '65514b6921ac4040bb07',
          body: json.encode(body),
          xasync: false,
          path: '/',
          method: 'GET',
          headers: {
            'X-Custom-Header': '123'
          }
      );
      print("studentAuthMailFT Execution Map for Function ::: ${execution.toMap()}");
    } catch (e) {
      print("studentAuthMailFT Execution exception for Function ::: ${e.toString()}");
    }
  }



   Future<dynamic> updateSignUp(String userId, List<String> labels) async{
     print("enter email session");
     //final users =Users(client);
     try{
       // final user = await account.update;
       // print("success::$user");
       // return user;

     }catch(e){
       print("exception::$e");
       return AppwriteErrorUtil.handleError(e as AppwriteException);
     }
   }

   Future<dynamic> emailSession(String email,password) async{
     print("enter email session");
     print("enter email :: $email");
     print("enter password :::$password");
     Account account = Account(client);
     Session? session;
     try{
       session = await account.createEmailSession(
         email: email,
         password: password,
       );

       //passwordRecover("maraj@penciltech.co","http://penciltech001.penciltech.xyz:9080");
       // studentAuthMailFT();
       // addTeamtoUser( "pushpal.aust@gmail.com", "student",["cse","math"],"http://penciltech001.penciltech.xyz");
/*
       gotString(email);

*/
       print("Login success::$session");
       return session;
     }catch(e){
       print("exception::$e");
       return AppwriteErrorUtil.handleError(e as AppwriteException);
     }
   }
/*
   gotString(String email){
     return email;
   }
*/
   Future<dynamic> getDocument(String databaseId,List doc)async {
     final databases = Databases(client);
     try{
       Document response = await databases.getDocument(
         databaseId:databaseId,
         collectionId: doc.first,
         documentId: doc.last,
       );
       print("document-response::${response.data}");
       return response;

     }catch(e){
       print("document-exception::$e");
       return AppwriteErrorUtil.handleError(e as AppwriteException);
     }

   }

   Future<dynamic> addDocument(String databaseId,tag,data)async {
     final databases = Databases(client);
     print("enter tag :: $tag");
     print("enter data :: $data");
     print("enter databaseID :: $databaseId");
     try{
       Document response = await databases.createDocument(
         databaseId:databaseId,
         collectionId: tag,
         data: data,
         documentId: ID.unique(),
       );
       print("create-document-response::${response.data}");
       return response;


     }catch(e){
       print("create-document-exception::$e");
       return AppwriteErrorUtil.handleError(e as AppwriteException);
     }

   }

   // Future<dynamic> addPayment(data)async {
   //   final databases = Databases(client);
   //   //print("enter tag :: $tag");
   //   print("enter data :: $data");
   //   //print("enter databaseID :: $databaseId");
   //   try{
   //     Document response = await databases.createDocument(
   //       databaseId:"652e50b2725012f30b48",
   //       collectionId: "652e50d8ac19b143e33c",
   //       data: data,
   //       documentId: "123456abc",
   //     );
   //     print("create-document-response::${response.data}");
   //     return response;
   //
   //
   //   }catch(e){
   //     print("create-document-exception::$e");
   //     return AppwriteErrorUtil.handleError(e as AppwriteException);
   //   }
   //
   // }




   Future<dynamic> listDocuments(String databaseId,String collectionId)async {
     print(databaseId);
     print(collectionId);
     final databases = Databases(client);
     try{
       DocumentList response = await databases.listDocuments(
         databaseId:databaseId,
         collectionId: collectionId,
         queries: [
           Query.limit(100)
         ]
       );

       print("listdocument-response::${response.documents.length}");
       print("listdocument-first::${json.encode(response.documents.last.data)}");
       print("listdocument-element:${response.documents.elementAt(0).data}");
       return response;

     }catch(e){
       print("listdocument-exception::$e");
       return AppwriteErrorUtil.handleError(e as AppwriteException);
     }

   }


  // //auth
  //  Future<dynamic> post(String path,header) {
  //
  //  }
  //
  //
  //  //data features
  //  Future<dynamic> post(String path,header) {
  //
  //  }
  //  Future<dynamic> update(String path,header) {
  //
  //  }
  //  Future<dynamic> delete(String path,header) {
  //
  //  }
  //  Future<dynamic> getAll(String path,header) {
  //
  //  }
  //  Future<dynamic> find(String path,header) {
  //
  //  }
}
