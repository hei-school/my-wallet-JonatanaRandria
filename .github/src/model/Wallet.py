from model.common import CardType
from model.common import WalletObject

class Card(WalletObject):
    def __init__(self, id, card_type):
        super().__init__(id)
        self.type = card_type

    def get_type(self):
        return self.type

    def __str__(self):
        return f"Card{{type={self.type}}}"
