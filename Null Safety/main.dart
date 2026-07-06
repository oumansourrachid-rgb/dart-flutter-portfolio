void AfficherEtudiant({
  required String nom,
  String? ville,
  int? age,
  double? note,
}) {
  print(
    " Nom: $nom , ville: ${ville ?? 'non renseignée'},"
    " Age: ${age ?? 'non renseigné'},"
    "Note: ${note ?? 'non renseignée'},"
    "longueur nom: ${nom.length},"
    "longueur ville: ${ville?.length ?? 0} ,",
  );
}

main() {
  AfficherEtudiant(nom: "Majda", ville: "Agadir", age: 19, note: 18.90);
  AfficherEtudiant(nom: "Rachid", age: 21);
  AfficherEtudiant(nom: "Sara");
}
