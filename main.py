# main.py
from service import WalletService

def main():
    # Création de deux instances de WalletService
    wallet1 = WalletService()
    wallet2 = WalletService()

    # Interaction avec le portefeuille électronique
    wallet1.deposit(100.0)
    wallet1.withdraw(30.0)
    wallet1.transfer(20.0, wallet2)

    print(f"Solde du portefeuille 1: {wallet1.get_balance()}")
    print(f"Solde du portefeuille 2: {wallet2.get_balance()}")

    wallet1.print_transaction_history()
    wallet2.print_transaction_history()

if __name__ == "__main__":
    main()
