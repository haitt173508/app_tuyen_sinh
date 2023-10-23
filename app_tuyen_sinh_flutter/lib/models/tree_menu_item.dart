class TreeMenuItem {
  final dynamic id;
  final TreeMenuItem? parent;
  final List<TreeMenuItem>? children;
  final String name;

  TreeMenuItem({
    this.id,
    required this.name,
    this.parent,
    this.children,
  });

  bool get hasChildren => children?.isNotEmpty == true;

  @override
  int get hashCode => Object.hash(id, null);

  @override
  bool operator ==(Object other) => other is TreeMenuItem && other.id == id;
}
