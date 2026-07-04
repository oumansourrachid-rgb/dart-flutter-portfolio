class Photocopieur implements Imprimable, Scannabe {
  String nom;
  Photocopieur(this.nom);
  void imprimer() {
    print("impression de $nom");
  }

  void scanner() {
    print("scan de $nom");
  }
}

class Imprimable {
  void imprimer() {}
}

class Scannabe {
  void scanner() {}
}

main() {
  var I1 = Imprimable();
  I1.imprimer();
  var S1 = Scannabe();
  S1.scanner();
  var P1 = Photocopieur("HP-2050");
  P1.imprimer();
  P1.scanner();
}
