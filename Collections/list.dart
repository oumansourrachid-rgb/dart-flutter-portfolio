main() {
  List<String> etudiants = [];
  etudiants.addAll(["Rachid", "Karim", "Sara", "Youssef", "Fatima"]);
  print(etudiants);
  print(etudiants.length);
  print(etudiants.first);
  print(etudiants.last);
  etudiants.insert(2, "Amin");
  etudiants.remove("Karim");
  print(etudiants.contains("Sara"));
  print(etudiants);
  var maj = etudiants.map((i) => i.toUpperCase()).toList();
  print("Majuscules: $maj");

  var lett = etudiants.where((i) => i.length > 5).toList();
  print("Produits longs: $lett");
  print(lett);
}
