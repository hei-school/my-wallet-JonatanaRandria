# service.py

class WalletService:
    def __init__(self):
        self.balance = 0.0
        self.transaction_history = []

    def deposit(self, amount):
        self.balance += amount
        self.transaction_history.append(f"Dépôt de {amount}")

    def withdraw(self, amount):
        if self.balance >= amount:
            self.balance -= amount
            self.transaction_history.append(f"Retrait de {amount}")
        else:
            print("Solde insuffisant")

    def get_balance(self):
        return self.balance

    def transfer(self, amount, recipient):
        if self.balance >= amount:
            self.withdraw(amount)
            recipient.deposit(amount)
            self.transaction_history.append(f"Transfert de {amount} à {recipient}")

    def print_transaction_history(self):
        print("Historique des transactions:")
        for transaction in self.transaction_history:
            print(transaction)
