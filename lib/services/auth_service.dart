import 'api_service.dart';

class AuthService {
  Future register(String email, String password) async {
    final response = await ApiService.post("register", {
      "email": email,
      "password": password,
    });

    return response;
  }

  Future login(String email, String password) async {
    final response = await ApiService.post("login", {
      "email": email,
      "password": password,
    });

    return response;
  }
}
