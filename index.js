const prompt = require("prompt-sync")();

const WalletService = require('./WalletService');

function main() {
  // Création de deux instances de WalletService
  const wallet1 = new WalletService();
  const wallet2 = new WalletService();

  // Interaction avec le portefeuille électronique en fonction de l'input utilisateur
  const depositAmount = parseFloat(prompt("Entrez le montant du dépôt pour le portefeuille 1: "));
  wallet1.deposit(depositAmount);

  const withdrawAmount = parseFloat(prompt("Entrez le montant du retrait pour le portefeuille 1: "));
  wallet1.withdraw(withdrawAmount);

  const transferAmount = parseFloat(prompt("Entrez le montant à transférer du portefeuille 1 au portefeuille 2: "));
  wallet1.transfer(transferAmount, wallet2);

  console.log(`Solde du portefeuille 1: ${wallet1.getBalance()}`);
  console.log(`Solde du portefeuille 2: ${wallet2.getBalance()}`);

  wallet1.printTransactionHistory();
  wallet2.printTransactionHistory();
}

main();
