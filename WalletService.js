// WalletService.js

class WalletService {
    constructor() {
      this.balance = 0.0;
      this.transactionHistory = [];
    }
  
    deposit(amount) {
      this.balance += amount;
      this.transactionHistory.push(`Dépôt de ${amount}`);
    }
  
    withdraw(amount) {
      if (this.balance >= amount) {
        this.balance -= amount;
        this.transactionHistory.push(`Retrait de ${amount}`);
      } else {
        console.log("Solde insuffisant");
      }
    }
  
    getBalance() {
      return this.balance;
    }
  
    transfer(amount, recipient) {
      if (this.balance >= amount) {
        this.withdraw(amount);
        recipient.deposit(amount);
        this.transactionHistory.push(`Transfert de ${amount} à ${recipient}`);
      } else {
        console.log("Solde insuffisant pour effectuer le transfert");
      }
    }
  
    printTransactionHistory() {
      console.log("Historique des transactions:");
      for (const transaction of this.transactionHistory) {
        console.log(transaction);
      }
    }
  }
  
  module.exports = WalletService;
  