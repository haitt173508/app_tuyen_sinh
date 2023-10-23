enum RecieveType {
  email(1, 'Email'),
  phone(2, 'Số điện thoại');

  final int id;
  final String recieveType;

  const RecieveType(this.id, this.recieveType);
}
