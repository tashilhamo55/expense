import 'dart:convert';

import 'package:expenses/domain/auth/auth_model.dart';
import 'package:expenses/plugins/http.dart';
import 'package:expenses/plugins/local_shared_preferences.dart';

Future loginWithEmailAndPassword() async {
  final res = await PostRequest('authentication', <String, String>{
    'username': 'admin@expense.com',
    'password': 'admin'
  });
  await setTokenToLocalStorage(jsonDecode(res.body)['data']['accessToken']);
}

class AuthRepo{
  Future loginWithEmailAndPassword(AuthModel authData) async {
    final res = await PostRequest('authentication', <String, String>{
      'username': authData.username,
      'password': authData.password
    });

    if(res.statusCode == 401){
      throw Exception('Username or Password is incorrect');

    }
    await setTokenToLocalStorage(jsonDecode(res.body)['data']['accessToken']);
    return res;
  }
}