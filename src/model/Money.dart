import './common/wallet_object.dart';

class Money extends WalletObject {
  double amount;

  Money(int id, this.amount) : super(id);

  double getAmount() {
    return amount;
  }

  void setAmount(double amount) {
    this.amount = amount;
  }

  @override
  String toString() {
    return 'Money{amount=$amount}';
  }
}
