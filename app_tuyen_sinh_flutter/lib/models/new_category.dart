class NewCategory {
  final String name;

  NewCategory(this.name);

  @override
  String toString() {
    return name;
  }
}

var newCategory = [
  NewCategory('Tuyển sinh đại học'),
  NewCategory('Tuyển sinh sau đại học'),
  NewCategory('Học phí - Học bổng'),
  NewCategory('Tin tức - Sự kiện'),
  NewCategory('Đánh giá tư duy'),
];
