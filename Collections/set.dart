main() {
  Set<String> permissions = {"read", "write", "delete"};
  print("length ${permissions.length}");
  permissions.add("admin");
  permissions.add("read");
  print(permissions);
  Set<String> permissions2 = {"read", "admin", "execute"};
  print("___union______");
  print(permissions2.union(permissions));
  print("___intersection__");
  print(permissions.intersection(permissions2));
  print(permissions2.intersection(permissions));
  print("______difference_____");
  print(permissions.difference(permissions2));

  List<int> nombres = [1, 2, 3, 2, 4, 1, 5, 3];
  var sans_doublons = nombres.toSet().toList();
  print(sans_doublons);
}
