extension valid on String {
  bool isValidEmail() {
    return RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(this);
  }

  bool get isValidPassword {
    return this.length >= 6;
  }
}