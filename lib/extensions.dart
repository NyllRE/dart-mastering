part of './parts.dart'; //=> a code part of the parts.dart file to extend the extensions to there

void extensions() {
  print("double ".duplicate);
}

//==<< EXTENSIONS >>==//
//=>> you can easily add any method you like to any datatype or method by extending it
extension StringDuplication on String {
  String get duplicate => this + this;
}
