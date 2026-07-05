void main() {
  Map<String, double> notes = {
    "Rachid": 17.5,
    "Karim": 12.0,
    "Sara": 19.0,
    "Youssef": 8.5,
    "Fatima": 15.0,
  };
  print(notes["Rachid"]);
  notes["Amine"] = 14.0;
  notes["Karim"] = 16.0;
  notes.remove("Youssef");

  notes.forEach((cle, val) => print("$cle : $val"));
  print(notes);

  var bons = notes.entries.where((e) => e.value >= 15);
  bons.forEach((e) => print("${e.key}: ${e.value}"));
  double moyenne = notes.values.reduce((a, b) => a + b) / notes.length;
  print("Moyenne: $moyenne");
}
