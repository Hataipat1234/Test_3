class Barrel {
  double gasVolume;
  Barrel(this.gasVolume);
}

class DistanceConverter {
  int distance;
  DistanceConverter(Barrel barrel)
      : this.distance = (barrel.gasVolume * 13000 * 95 / 100000).floor();
}

void main() {
  var barrel = Barrel(10);
  var distanceConverter = DistanceConverter(barrel);
  print(distanceConverter.distance);
}