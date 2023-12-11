class WalletObject:
    def __init__(self, obj_id):
        self.id = obj_id
        self.is_lost = False

    def is_lost(self):
        return self.is_lost

    def set_lost(self, lost):
        self.is_lost = lost

    def get_id(self):
        return self.id
