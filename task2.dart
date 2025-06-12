void main() {
  String sex = "male";
  int age = 22;

  switch (sex) {
    case "male":
      switch (age) {
        case >= 0 && <= 20:
          print("Im Schnitt 181,4m");
        case >= 21 && <= 25:
          print("Im Schnitt 181,3m");
        case >= 26 && <= 30:
          print("Im Schnitt 180,4m");
        case >= 31 && <= 35:
          print("Im Schnitt 179.8m");
        default:
          print("Altersbereich für männlich nicht definiert");
      }
      break;
    case "female":
      switch (age) {
        case >= 0 && <= 20:
          print("Im Schnitt 167,5m");
        case >= 21 && <= 25:
          print("Im Schnitt 167,3m");
        case >= 26 && <= 30:
          print("Im Schnitt 167,2m");
        case >= 31 && <= 35:
          print("Im Schnitt 166.8m");
        default:
          print("Altersbereich für weiblich nicht definiert");
      }
    default:
      print("Geschlecht nicht definiert");
  }
}
