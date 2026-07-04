abstract class Vehicule {
  String _marque;
  int _vitesseMax;
  Vehicule(this._marque, this._vitesseMax);

  void demarrer();

  void klaxonner() {
    print("$_marque: Taratata! ,vitesse $_vitesseMax");
  }

  String getMarque() => _marque;
}

class Voiture extends Vehicule {
  Voiture(String marque, int vitesse) : super(marque, vitesse);

  void demarrer() {
    print("$_marque démarre: Vroom!");
  }
}

class Moto extends Vehicule {
  Moto(String marque, int vitesse) : super(marque, vitesse);
  void demarrer() {
    print("$_marque démarre: Brraaap!");
  }
}

class Camion extends Vehicule {
  Camion(String marque, int vitesse) : super(marque, vitesse);
  void demarrer() {
    print("$_marque démarre: Bfffffftt!");
  }
}

void main(List<String> args) {
  var V1 = Voiture("Dacia", 100);
  V1.demarrer();
  V1.klaxonner();
  var M1 = Moto("Tmax", 220);
  M1.demarrer();
  M1.klaxonner();
  var C1 = Camion("VOLVO", 240);
  C1.demarrer();
  C1.klaxonner();
}
