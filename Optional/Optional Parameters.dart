void calculerNote({
  required String nom,
  required int note,
  String matiere = "général",
}) => print("$nom a eu $note/20 en $matiere");

void reserverHotel({
  required String hotel,
  required String ville,
  int nuits = 1,
  bool petitDejeuner = false,
}) => print(
  "Réservation: $hotel à $ville — $nuits nuit(s) — PDJ: $petitDejeuner",
);

class Voiture {
  String marque;
  String modele;
  int annee;
  String couleur;

  Voiture({
    required this.marque,
    required this.modele,
    this.annee = 2024,
    this.couleur = "blanc",
  });
  void afficher() => print("$marque |$modele | $annee | $couleur");
}

main() {
  calculerNote(nom: "Rachid", note: 19);
  reserverHotel(
    hotel: "ALMOGAR",
    ville: "AGADIR",
    nuits: 3,
    petitDejeuner: true,
  );

  Voiture v1 = Voiture(marque: "Dacia", modele: "Duster");
  v1.afficher();
}
