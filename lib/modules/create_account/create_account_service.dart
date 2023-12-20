

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test2/config/server_config.dart';
import 'package:test2/models/user.dart';
class CreateAccountService{
  var message;
  var url = Uri.parse(ServerConfig.domainNameServer+ServerConfig.register);
   Future<bool> register(User user) async{
    var response = await http.post(
      url,
      headers: {}
        ,
      body: {
        'name' : '${user.name}',
        'phone':'${user.phoneNumber}',
        'password':'${user.password}',
        'verifed_code' : "1#*cv2",
      }
    );
    print(response.statusCode);
    print(response.body);

    if(response.statusCode==200){
      var jsonResponse = jsonDecode(response.body);
      message = jsonResponse['message'];

   return true;
    }
    else if(response.statusCode==422){
      var jsonResponse = jsonDecode(response.body);
      message = jsonResponse['errors'];

     return false;
    }
    else{
  return false;
    }

  }
}