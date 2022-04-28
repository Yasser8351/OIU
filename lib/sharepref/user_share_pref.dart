import 'package:oiu/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefUser {
  late SharedPreferences _prefs;
  Future<bool> login() async {
    _prefs = await SharedPreferences.getInstance();
    return await _prefs.setBool('login', true);
  }

  Future<bool> update(UserModel user) async {
    _prefs = await SharedPreferences.getInstance();
    await _prefs.setInt('stdId', user.stdId);
    // await _prefs.setString('phone', user.phone);
    // await _prefs.setString('name', user.fullName);
    // await _prefs.setString('address', user.address);
    // await _prefs.setInt('is_active', user.isActive);
    // await _prefs.setInt('sub_area_id', user.isActive);
    // await _prefs.setInt('account_balance', user.accountBalance);
    // await _prefs.setInt('discount_rate', user.discountRate);
    return await _prefs.setString('email', user.email);
  }

  Future<bool> isLogin() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs.getBool('login') ?? false;
  }

  Future<int> getID() async {
    _prefs = await SharedPreferences.getInstance();
    return (_prefs.getInt('stdId') ?? -1);
  }

  Future<bool> logout() async {
    _prefs = await SharedPreferences.getInstance();
    await _prefs.setBool('login', false);
    return await _prefs.clear();
  }

  // Future<UserModel> getUser() async {
  //   _prefs = await SharedPreferences.getInstance();
  //   var model = UserModel(
  //     stdId: _prefs.getInt('stdId') ?? 0,
  //     facultyBatchNo: _prefs.getInt('stdId') ?? 0,
  //     facultyNo: _prefs.getInt('stdId') ?? 0,
  //     facultyProgramNo: _prefs.getInt('stdId') ?? 0,
  //     facultyProgramSpecializationNo: _prefs.getInt('stdId') ?? 0,
  //     facultySemesterNo: _prefs.getInt('stdId') ?? 0,
  //     studentIndexNo: _prefs.getString('stdId') ?? '',
  //     email: _prefs.getString('email') ?? '',
  //   );
  //   return model;
  // }
  // Future<void> saveUser(UserModel user) async {
  //   _prefs = await SharedPreferences.getInstance();
  //   await _prefs.setInt('stdId', user.stdId);
  //   await _prefs.setInt('facultyNo', user.facultyNo);
  //   await _prefs.setInt('facultyBatchNo', user.facultyBatchNo);
  //   await _prefs.setInt('facultyProgramNo', user.facultyProgramNo);
  //   await _prefs.setInt(
  //       'facultyProgramSpecializationNo', user.facultyProgramSpecializationNo);
  //   await _prefs.setInt('facultySemesterNo', user.facultySemesterNo);
  //   await _prefs.setString('studentIndexNo', user.studentIndexNo);
  //   await _prefs.setString('email', user.email);
  // }
  // Future<Map<String, dynamic>> saveUser(Map<String, dynamic> user) async {
  //   _prefs = await SharedPreferences.getInstance();

  //   // await _prefs.setInt('stdId', user["stdId"] ?? 0);
  //   // await _prefs.setInt('facultyNo', user["facultyNo"] ?? 0);
  //   // await _prefs.setInt('facultyBatchId', user["facultyBatchId"] ?? 0);
  //   // await _prefs.setInt('facultyProgramNo', user["facultyProgramNo"] ?? 0);
  //   // await _prefs.setInt('facultyProgramSpecializationNo',
  //   //     user["facultyProgramSpecializationNo"] ?? 0);
  //   // await _prefs.setInt('facultySemesterId', user["facultySemesterId"] ?? 0);
  //   // await _prefs.setString('studentIndexNo', user["studentIndexNo"] ?? '');
  //   // await _prefs.setString('firstName', user["firstName"] ?? '');
  //   await _prefs.setString('phone', user["phone"] ?? '');
  //   return user;
  // }
  Future<String> saveUser(String phone) async {
    _prefs = await SharedPreferences.getInstance();

    await _prefs.setString('phone', phone);
    return phone;
  }

  Future<Map<String, dynamic>> getUserData() async {
    Map<String, dynamic> user = {};
    _prefs = await SharedPreferences.getInstance();
    final stdId = await _prefs.getInt('stdId');
    final facultyNo = await _prefs.getInt('facultyNo');
    final facultyBatchNo = await _prefs.getInt('facultyBatchId');
    final facultyProgramNo = await _prefs.getInt('facultyProgramNo');
    final facultyProgramSpecializationNo =
        await _prefs.getInt('facultyProgramSpecializationNo');
    final facultySemesterId = await _prefs.getInt('facultySemesterNo');
    final studentIndexNo = await _prefs.getInt('studentIndexNo');
    final firstName = await _prefs.getString('firstName');

    user = {
      'stdId': stdId,
      'facultyNo': facultyNo,
      'facultyBatchId': facultyBatchNo,
      'facultyProgramNo': facultyProgramNo,
      'facultyProgramSpecializationNo': facultyProgramSpecializationNo,
      'facultySemesterId': facultySemesterId,
      'studentIndexNo': studentIndexNo,
      'firstName': firstName,
    };

    return user;
  }
}

/*
  "firstName": "Abubaker",
  "facultyNo": 27,
  "batchNo": 1164,
  "groupNo": 207,
  "photoImage": "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",
  "facultySemesterId": 1267,
  "facultyBatchId": 1164,
  "facultyProgramNo": 8021,
  "programNo": 5,
  "facultyProgramSpecializationNo": 10042,
  "studentIndexNo": "BU-2009-002",
  "stdId": 151,
*/