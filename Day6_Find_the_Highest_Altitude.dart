int largestAltitude(List<int> gain) {
  int maxAltitude = 0;
  int currentAltitude = 0;

  for (int change in gain) {
    currentAltitude += change;
    if (currentAltitude > maxAltitude) {
      maxAltitude = currentAltitude;
    }
  }

  return maxAltitude;
}
