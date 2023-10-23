extension NumExt on num {
  static num parse(
    Object? object, [
    num defaultValue = 0,
  ]) =>
      object == null
          ? defaultValue
          : num.tryParse(object.toString()) ?? defaultValue;
}
