void main() {
  var ages = [33, 15, 27, 40, 22];
  ages.sort();

  var sum = ages.reduce((a, b) => a + b);

  var prom = sum / ages.length;

  print(ages);
  print("La edad menor es: " + ages[0].toString());
  print("La edad mayor es: " + ages[4].toString());
  print("La edad promedio es: $prom");
}
