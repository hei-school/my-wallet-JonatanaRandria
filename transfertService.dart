class WalletService {
  double balance = 0.0;
  List<String> transactionHistory = [];

  void deposit(double amount) {
    balance += amount;
    transactionHistory.add("Dépôt de $amount");
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      transactionHistory.add("Retrait de $amount");
    } else {
      print("Solde insuffisant");
    }
  }

  double getBalance() {
    return balance;
  }

  void transfer(double amount, WalletService recipient) {
    if (balance >= amount) {
      withdraw(amount);
      recipient.deposit(amount);
      transactionHistory.add("Transfert de $amount à ${recipient.toString()}");
    } else {
      print("Solde insuffisant pour effectuer le transfert");
    }
  }

  void printTransactionHistory() {
    print("Historique des transactions:");
    for (String transaction in transactionHistory) {
      print(transaction);
    }
  }
}
