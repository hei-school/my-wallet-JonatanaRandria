class WalletObject {
  final int id;
  bool isLost = true;

  WalletObject(this.id);

  bool getIsLost() {
    return isLost;
  }

  void setIsLost(bool lost) {
    isLost = lost;
  }

  int getId() {
    return id;
  }
}
