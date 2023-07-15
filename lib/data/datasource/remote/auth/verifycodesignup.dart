
import '../../../../core/class/crud.dart';
import '../../../../linkapi.dart';

class VerifyCodeSignupData{
  Crud crud ;

  VerifyCodeSignupData(this.crud);

  postData(String username ,String verifycode ) async {
    var response = await crud.postData(AppLink.signup, {
      "username" : username ,
    //  "password" : password,
      "verifycode" : verifycode ,


    });

    return response.fold((l) => l, (r) => r);
  }


}