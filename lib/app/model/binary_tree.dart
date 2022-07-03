class Tree {
  final String node;
  Tree? left, right;

  Tree({required this.node});

  Tree addLeft(Tree? root, String value) {
    if (root!.left == null) {
      final newNode = Tree(node: value);
      root.left = newNode;
      return newNode;
    } else {
      return addLeft(root.left, value);
    }
  }

  Tree addRight(Tree? root, String value) {
    if (root!.right == null) {
      final newNode = Tree(node: value);
      root.right = newNode;
      return newNode;
    } else {
      return addRight(root.right, value);
    }
  }
}
