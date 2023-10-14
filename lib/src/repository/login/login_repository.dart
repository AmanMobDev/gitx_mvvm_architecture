import '../../data/network/network_api_services.dart';
import '../../model/login/request/login_api_request.dart';
import '../../model/login/response/login_api_response.dart';
import '../../res/app_url/app_url.dart';


class LoginRepository {
  final _api = NetworkApiServices();

  Future<LoginResponseModel> loginRepository(LoginApiRequestModel loginApiRequest) async {
  dynamic response =   await _api.postApi(AppUrl.loginUrl, loginApiRequest.toJson());
  return LoginResponseModel.fromJson(response);
  }
}
