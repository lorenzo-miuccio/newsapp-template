bool checkValidity(DateTime? lastFetch) {
  return lastFetch != null && DateTime.now().difference(lastFetch).inSeconds < 15;
}