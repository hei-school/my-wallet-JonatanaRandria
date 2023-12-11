import WalletObject from './common/WalletObject.js';

class Money extends WalletObject {
    constructor(id, amount) {
        super(id);
        this._amount = amount;
    }

    getAmount() {
        return this._amount;
    }

    setAmount(amount) {
        this._amount = amount;
    }

    toString() {
        return `Money{amount=${this._amount}}`;
    }
}

export default Money;
