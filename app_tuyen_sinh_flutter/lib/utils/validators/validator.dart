class Validator {
  static String? validateEmpty(
    String? value, [
    String fieldName = 'Trường',
  ]) {
    if (value?.isNotEmpty != true) return '$fieldName không được bỏ trống';
    return null;
  }

  static String? validateEmail(String? value, [String field = 'Email']) {
    var emptyVal = validateEmpty(value, field);
    if (emptyVal != null) return emptyVal;

    var regExp = RegExp(
        r'^[a-zA-Z][a-zA-Z0-9_\.]{1,32}@[a-zA-Z0-9]{2,}(\.[a-zA-Z0-9]{2,4}){1,2}$');
    if (!regExp.hasMatch(value!)) return '$field không đúng định dạng';
    return null;
  }

  static String? validatePhone(String? value,
      [String field = 'Số điện thoại']) {
    var emptyVal = validateEmpty(value, field);
    if (emptyVal != null) return emptyVal;

    var regExp = RegExp(r'^(0[9|3|7|8|5]|84[9|3|7|8|5])([0-9]{8})$');
    if (!regExp.hasMatch(value!)) return '$field không đúng định dạng';
    return null;
  }

  static String? validatePassword(
    String? value, [
    String field = 'Mật khẩu',
  ]) {
    var empty = validateEmpty(value, field);
    if (empty != null) return empty;
    return null;
  }

  static String? validateConfirmPassword(
    String? value,
    String? inputPassword, [
    String field = 'Mật khẩu xác nhận',
  ]) {
    var pass = validatePassword(inputPassword);
    if (pass != null) return pass;
    var confirmPass = validatePassword(value, field);
    if (confirmPass != null) return confirmPass;
    if (value != inputPassword) return 'Mật khẩu xác nhận không trùng khớp';
    return null;
  }
}
