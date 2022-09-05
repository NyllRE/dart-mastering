void extensions() {
  print("double ".duplicate);
}

extension StringDuplication on String {
  String get duplicate => this + this;
}
