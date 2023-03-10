import 'package:bmdmct_getx_project/app/model/login_user_model.dart';
import 'package:get/get.dart';

import '../helper/base_url.dart';

class LoginProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.timeout = Duration(seconds: AppSettings().timeout);
    super.onInit();
  }

  Future<LoginResponse?> login(String mobile) async {
    var requestBody = FormData({"mobile": mobile});
    final response = await post("${BaseUrl().baseUrl}login.aspx", requestBody);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return LoginResponse.fromJson(response.body);
    }
  }
}
