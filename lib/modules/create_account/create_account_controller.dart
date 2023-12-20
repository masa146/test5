import 'package:get/get.dart';
import 'package:test2/models/user.dart';
import 'package:test2/modules/create_account/create_account_service.dart';

class CreateAccountController extends GetxController{
  var userName='';
  var phoneNumber='';
  var password='';
  var createAccountStutus = false;
  var message;
CreateAccountService service = CreateAccountService();
  Future<void> registerOnClick() async {
    User user = User(
      name: userName,
      phoneNumber: phoneNumber,
      password: password
    );
    createAccountStutus =  await service.register(user);
    message = service.message;
    if(message is List){
      String temp = '';
      for(String s in message)
        temp+=s + '\n';
      message=temp;
    }
}
}