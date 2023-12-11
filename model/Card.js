import WalletObject from './common/WalletObject.js';


class Card extends WalletObject {
    constructor(id, type) {
        super(id);
        this._type = type;
    }

    getType() {
        return this._type;
    }

    toString() {
        return `Card{type=${this._type}}`;
    }
}

export default Card