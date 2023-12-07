# main.py
from service import WalletService

def main():
    # Création de deux instances de WalletService
    wallet1 = WalletService()
    wallet2 = WalletService()

    # Interaction avec le portefeuille électronique en fonction de l'input utilisateur
    wallet1.deposit(float(input("Entrez le montant du dépôt pour le portefeuille 1: ")))
    wallet1.withdraw(float(input("Entrez le montant du retrait pour le portefeuille 1: ")))
    amount_to_transfer = float(input("Entrez le montant à transférer du portefeuille 1 au portefeuille 2: "))
    wallet1.transfer(amount_to_transfer, wallet2)

    print(f"Solde du portefeuille 1: {wallet1.get_balance()}")
    print(f"Solde du portefeuille 2: {wallet2.get_balance()}")

    wallet1.print_transaction_history()
    wallet2.print_transaction_history()

if __name__ == "__main__":
    main()
