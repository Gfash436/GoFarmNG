import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/url.dart';
import 'package:http/http.dart' as http;

class Authentication extends ChangeNotifier {
  //Base Url
  final requestBaseUrl = ApiUrl.baseUrl;

  // Setter
  bool _isLoading = false;
  String _resMessage = '';

  //Getter
  bool get isLoading => _isLoading;
  String get resMessage => _resMessage;

  //An null function to Register User
  void SignupUser(
      {required String firstName,
      required String lastName,
      required String phoneNumber,
      required String email,
      required String password,
      required String confirmPassword,
      required String buyer,
      BuildContext? context}) async {
    _isLoading = false;
    notifyListeners();

    //Initialize Url
    String url = "$requestBaseUrl/api/register";

    //Create the payload(body) that the API needs
    final body = {
      "firstname": firstName,
      "lastname": lastName,
      "phoneNumber": phoneNumber,
      "password": password,
      "email": email,
      "confirmPassword": confirmPassword,
      "role": buyer
    };
    print(body);

    //Rap request in try&catch because errors from the internet
    try {
      http.Response request =
          await http.post(Uri.parse(url), body: jsonEncode(body));
    } on SocketException catch (_) {
      _isLoading = false;
      _resMessage = 'Internet connection is not available';
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      _resMessage = 'Please try again';
      notifyListeners();
    }
    ;
  }
}
