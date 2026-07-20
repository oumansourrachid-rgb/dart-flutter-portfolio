class Etudiants {
  String? nom;
  int? age;
  Etudiants(this.nom, this.age);

  String toString() => "Nom: $nom — Age: $age";

  void calcul(String nome) {
    if (nome == nom) {
      print("yes — $nome = $nom");
    } else {
      print("no — $nome != $nom");
    }
  }
}

Future<Etudiants> etudiants(String nom, int age) {
  return Future.delayed(Duration(seconds: 2), () => Etudiants(nom, age));
}

void main() {
  print("⏳ Chargement...");

  etudiants("Rachid", 20).then((e) {
    print("✅ Étudiant chargé:");
    print(e);
    e.calcul("Rachid");
    e.calcul("Karim");
  });

  print("📋 En attente...");
}
