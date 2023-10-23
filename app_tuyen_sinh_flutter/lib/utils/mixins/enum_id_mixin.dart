mixin EnumIdMixin {
  int get id;
  String get name;

  @override
  String toString() => name;
}
