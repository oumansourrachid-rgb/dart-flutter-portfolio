class generique<t, u> {
  t premier;
  u deuxieme;
  generique(this.premier, this.deuxieme);
  void afficher() => print("($premier, $deuxieme)");
}

void main() {
  var g1 = generique<String, int>("Rachid", 21);
  var g2 = generique<int, bool>(42, true);
  g1.afficher();
  g2.afficher();
}
