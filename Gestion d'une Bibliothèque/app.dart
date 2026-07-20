abstract class Media {
  String _titre;
  int _annee;
  String? _emprunteur;

  Media(this._titre, this._annee);

  String get titre => _titre;
  int get annee => _annee;
  String? get emprunteur => _emprunteur;

  String afficherType();

  void emprunter(String nomPersonne) {
    _emprunteur = nomPersonne;
  }

  void retourner() {
    _emprunteur = null;
  }

  bool estDisponible() {
    return _emprunteur == null;
  }
}

class Livre extends Media {
  String auteur;
  Livre(String titre, int annee, this.auteur) : super(titre, annee);

  @override
  String afficherType() {
    return 'Livre: "$titre" de $auteur ($annee)';
  }
}

class Magazine extends Media {
  int numero;

  Magazine(String titre, int annee, this.numero) : super(titre, annee);

  @override
  String afficherType() {
    return 'Magazine: "$titre" N°$numero ($annee)';
  }
}

Future<List<Media>> chargerBibliotheque() {
  return Future.delayed(Duration(seconds: 2), () {
    return [
      Livre('L Alchimiste', 1988, 'Paulo Coelho'),
      Livre('Le Petit Prince', 1943, 'Antoine de Saint-Exupéry'),
      Magazine('Science & Vie', 2026, 1254),
    ];
  });
}

void afficherEtatBibliotheque(List<Media> biblio) {
  for (var media in biblio) {
    String etat = media.estDisponible()
        ? 'Disponible'
        : 'Emprunté par: ${media.emprunteur ?? "Inconnu"}';
    print('- ${media.afficherType()} | État: $etat');
  }
}

// Main Function
void main() async {
  print(' Chargement de la bibliothèque...');
  var bibliotheque = await chargerBibliotheque();
  print(' Bibliothèque chargée !');

  afficherEtatBibliotheque(bibliotheque);

  List<String> lesPersonnes = ['Rachid', 'Jamila', 'Ahmed'];
  for (int i = 0; i < bibliotheque.length; i++) {
    bibliotheque[i].emprunter(lesPersonnes[i]);
  }
  afficherEtatBibliotheque(bibliotheque);
}
