// Fetch all products
import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:gofarmng/Screens/Authentication/loginPage.dart';
import 'package:gofarmng/Utilities/routers.dart';
import 'package:http/http.dart' as http;
import 'dbProvider.dart';
import '../../Constants/url.dart';

//Base Url
final requestBaseUrl = ApiUrl.baseUrl;

class LogoutProvider extends ChangeNotifier {
  // Setter
  bool _isLoading = false;
  String _resMessage = '';

  //Getter
  bool get isLoading => _isLoading;
  String get resMessage => _resMessage;

  // A null function to send user email for reset password
  void logOut({required BuildContext context}) async {
    _isLoading = false;
    notifyListeners();

    //Initialize Url
    String url = "$requestBaseUrl/api/logout";
    String accessToken = await DatabaseProvider().getToken();

    Map<String, String> requestHeaders = {
      "Content-type": "application/json; charset=utf-8",
      "Accept": "/",
      "Authorization": "Bearer $accessToken",
    };

    //Rap request in try&catch because errors from the internet
    try {
      http.Response request =
          await http.get(Uri.parse(url), headers: requestHeaders);
      if (request.statusCode == 201) {
        final response = json.decode(request.body);
        print(response);
        _isLoading = false;
        _resMessage = response['message'];
        notifyListeners();

        PageNavigator(ctx: context).nextPageOnly(page: const LoginPage());
      } else {
        _resMessage = "Couldn't log out";
        _isLoading = false;
        notifyListeners();
      }
    } on SocketException catch (_) {
      _isLoading = false;
      _resMessage = 'Internet connection is not available !';
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      _resMessage = 'Please try again';
      notifyListeners();
      // print('errorMessage: ${e.toString()}');
    }
  }
}
