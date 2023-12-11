class WalletObject {
  final int id;
  bool isLost;

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
