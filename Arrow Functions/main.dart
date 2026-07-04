int cube(int n) => n * n * n; //3

bool estPositif(int a) => a > 0;

String saluerUtilisateur(String nom, String ville) => "Bonjour $nom de $ville!";

class Rectangle {
  double largeur;
  double hauteur;
  Rectangle(this.largeur, this.hauteur);

  double surface() => largeur * hauteur;
  double perimetre() => (largeur + hauteur) * 2;
  bool estCarre() => largeur == hauteur;
}

main() {
  print(cube(6));
  print(estPositif(7));
  print(saluerUtilisateur("Rachid", "Agadir"));
  Rectangle r1 = Rectangle(5, 3);
  // var r1 = Rectangle(5, 3);
  print("la sourface :${r1.surface()}");
  print("la perimetre :${r1.perimetre()}");
  print("est carre :${r1.estCarre()}");
}
