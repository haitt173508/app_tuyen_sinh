class PathManager {
  static const String _auth = 'auth/';
  static const String _user = 'user/';

  static _authPath(String path) => '$_auth$path';
  static _authOtpPath(String path) => '${_authPath('otp')}/$path';
  static _authPasswordPath(String path) => '${_authPath('password')}/$path';

  static _userPath(String path) => '$_user$path';

  static final login = _authPath('login');
  static final logout = _authPath('logout');
  static final registerOneSignalDevice = _authPath('register_one_signal_device');
  static final inputForgotPassword = _authPasswordPath('input_email_or_phone');
  static final updatePassword = _authPasswordPath('update_password');
  static final sendOtp = _authOtpPath('send');
  static final confirmOtp = _authOtpPath('confirm');
  static final register = _authPath('register');
  static final updateUserInfo = _userPath('update_user');
}
