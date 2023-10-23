enum OtpType {
  auth(id: 1, otpType: 'Xác thực'),
  password(id: 2, otpType: 'Mật khẩu');

  final int id;
  final String otpType;

  const OtpType({
    required this.id,
    required this.otpType,
  });
}
