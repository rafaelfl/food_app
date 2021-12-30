class LoginWidgetController {
  bool login(String email, String password) {
    print(">>> $email // $password");
    if (email == "email@email.com" && password == "123456") {
      return true;
    }

    return false;
  }
}
