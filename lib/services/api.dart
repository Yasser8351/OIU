import 'dart:convert';
import 'dart:io';

import 'package:http/io_client.dart';
import 'package:http/http.dart' as http;

class Api {
  var data;
//https://madeinsudan2.com/lazerApp/php_code/show_slide_image.php
  Map<String, dynamic> responseData = {"isLogin": false, "statusCode": 200};

  /* 
  

  Future<List<ActivitysModel>> fetchActivity([int isComing = 0]) async {
    //bool isComing = false
    var url = "";

    if (isComing == 0) {
      url =
          "https://192.168.1.4:3000/api/MyActivityComing/id?facultyNo=1107&&facultyBatchNo=1616&&facultyProgramNo=10078&&facultyProgramSpecializationNo=12134";
//        "https://192.168.1.4:3000/api/MyActivity/id?facultyNo=22&&facultyBatchNo=1380&&facultyProgramNo=9058&&facultyProgramSpecializationNo=11104";

    } else if (isComing == 1) {
      url =
          "https://192.168.1.4:3000/api/MyActivity/id?facultyNo=22&&facultyBatchNo=1380&&facultyProgramNo=9058&&facultyProgramSpecializationNo=11104";
    } else {
      url =
          "https://192.168.1.4:3000/api/MyActivity/id?facultyNo=22&&facultyBatchNo=1380&&facultyProgramNo=9058&&facultyProgramSpecializationNo=11104";
    }

    try {
      bool trustSelfSigned = true;
      HttpClient httpClient = new HttpClient()
        ..badCertificateCallback =
            ((X509Certificate cert, String host, int port) => trustSelfSigned);
      IOClient ioClient = new IOClient(httpClient);

      http.Response response = await ioClient.get(
        Uri.parse(url),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },
      );
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        ActivitysList news = ActivitysList.fromJson(jsonData);
        List<ActivitysModel> newsList =
            news.listActivitys.map((e) => ActivitysModel.fromJson(e)).toList();
        return newsList;
      } else {}
    } catch (ex) {
      print(ex);
    }
    return [];
  }

  Future<List<ExamsModel>> fetchExams() async {
    var url = "https://192.168.1.4:3000/api/ExamsTimetable?facultyBatchId=1336";

    try {
      bool trustSelfSigned = true;
      HttpClient httpClient = new HttpClient()
        ..badCertificateCallback =
            ((X509Certificate cert, String host, int port) => trustSelfSigned);
      IOClient ioClient = new IOClient(httpClient);

      http.Response response = await ioClient.get(
        Uri.parse(url),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },
      );
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        ExamsList news = ExamsList.fromJson(jsonData);
        List<ExamsModel> newsList =
            news.listExams.map((e) => ExamsModel.fromJson(e)).toList();
        return newsList;
      } else {}
    } catch (ex) {
      print(ex);
    }
    return [];
  }

  static Future<void> getCard() async {
    //var url = "https://192.168.1.4:3000/api/CardInfo";
    var url = "https://192.168.1.4:3000/api/CardInfo/id?stdId=61883";
    var data;
    try {
      bool trustSelfSigned = true;
      HttpClient httpClient = new HttpClient()
        ..badCertificateCallback =
            ((X509Certificate cert, String host, int port) => trustSelfSigned);
      IOClient ioClient = new IOClient(httpClient);

      final response = await ioClient.get(Uri.parse(url), headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      });
      data = json.decode(response.body);
      var d = CardModel.fromJson(data);
      //var card = cardModelFromJson(response.body);
      // return data.map((job) => new CardModel.fromJson(job)).toList();
      // return CardModel.fromJson(data[0]);
      //return card;
    } catch (error) {
      print(error.toString());
    }
  }

// /String userName, String password
 
*/

  Future<bool> logins(String userName, String password) async {
    var url = "https://192.168.1.4:3000/api/UserIndex";

    bool isLogin = false;
    try {
      bool trustSelfSigned = true;
      HttpClient httpClient = new HttpClient()
        ..badCertificateCallback =
            ((X509Certificate cert, String host, int port) => trustSelfSigned);
      IOClient ioClient = new IOClient(httpClient);
      final msg = jsonEncode({
        // "username": userName,
        // "password": password,
        // "studentIndexNo": password
        "username": userName,
        "password": password,
        "studentIndexNo": password
      });
      http.Response response = await ioClient.post(
        Uri.parse(url),
        body: msg,
        headers: {
          'charset': 'utf-8',
          'content-type': 'text/plain',
          HttpHeaders.contentTypeHeader: 'application/json',
        },
      );
      //print("response :${response.statusCode}");

      if (response.statusCode == 200) {
        isLogin = true;
        responseData = {"isLogin": true, "statusCode": 200};
        data = json.decode(response.body);
        //print("response :${data['firstName']}");

        // print("response.statusCode :${response.statusCode}");
      } else if (response.statusCode == 400) {
        isLogin = false;
        responseData = {"isLogin": false, "statusCode": 400};
        // print("response :${response.statusCode}");
      } else {
        isLogin = false;
        // print("response :${response.statusCode}");
      }
    } catch (error) {
      responseData = {"isLogin": false, "statusCode": 500};

      //  print(error.toString());
      isLogin = false;
    }
    return isLogin;
  }

  Future<String> login(String phone, String password) async {
    var url =
        "https://madeinsudan2.com/e-commerce/php_code/login.php?phone=$phone&password=$password";
    String data = "";
    try {
      var response = await http.post(
        Uri.parse(url),
        body: {
          "phone": phone,
          "password": password,
        },
      );

      data = json.decode(response.body);
      print(data);
    } catch (error) {
      print(error.toString());
    }
    return data;
  }

  Future<String> register(String phone, String password) async {
    var url =
        "https://madeinsudan2.com/e-commerce/php_code/register.php?phone=$phone&password=$password";
    String data = "";
    try {
      var response = await http.post(
        Uri.parse(url),
        body: {
          "phone": phone,
          "password": password,
        },
      );

      data = json.decode(response.body);
      print(data);
    } catch (error) {
      print(error.toString());
    }
    return data;
  }
}
