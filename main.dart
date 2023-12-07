// main.dart
import 'service.dart';

void main() {
  // Création de deux instances de WalletService
  WalletService wallet_koto = WalletService();
  WalletService wallet_bozy = WalletService();

  // Interaction avec le portefeuille électronique
  wallet_koto.deposit(100.0);
  wallet_koto.withdraw(30.0);
  wallet_koto.transfer(20.0, wallet_bozy);

  print("Solde du portefeuille 1: ${wallet_koto.getBalance()}");
  print("Solde du portefeuille 2: ${wallet_bozy.getBalance()}");

  wallet_koto.printTransactionHistory();
  wallet_bozy.printTransactionHistory();
}
