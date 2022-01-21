class LoginWidgetController {
  bool login(String email, String password) {
    const defaultEmail =
        String.fromEnvironment('defaultEmail', defaultValue: "email@email.com");

    const defaultPassword =
        String.fromEnvironment('defaultPassword', defaultValue: "123456");

    if (email == defaultEmail && password == defaultPassword) {
      return true;
    }

    return false;
  }
}
