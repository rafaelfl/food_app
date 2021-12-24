class LoginWidgetController {
  bool login(String email, String password) {
    print(">>> $email // $password");
    if (email == "rafaelf@lsdi.ufma.br" && password == "123456") {
      return true;
    }

    return false;
  }
}
