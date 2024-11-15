List<int> getLeafSequence(TreeNode? root) {
  List<int> leaves = [];
  
  void dfs(TreeNode? node) {
    if (node == null) return;
    if (node.left == null && node.right == null) {
      leaves.add(node.val);
    }
    dfs(node.left);
    dfs(node.right);
  }
  
  dfs(root);
  return leaves;
}

bool leafSimilar(TreeNode? root1, TreeNode? root2) {
  List<int> leaves1 = getLeafSequence(root1);
  List<int> leaves2 = getLeafSequence(root2);
  
  // �� ����Ʈ�� ���̰� �����ϰ�, ��� ��Ұ� ���� ������ ��ġ�ϴ��� Ȯ��
  if (leaves1.length != leaves2.length) {
    return false;
  }
  
  for (int i = 0; i < leaves1.length; i++) {
    if (leaves1[i] != leaves2[i]) {
      return false;
    }
  }
  
  return true;
}
