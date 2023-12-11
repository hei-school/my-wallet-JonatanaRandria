import Card from '../model/Card.js';
import Money from '../model/Money.js';
import CardType from '../model/common/type/card-type.js';
import PromptSync from 'prompt-sync';

const prompt = PromptSync();

class AppUtils {
    
    static consoleUtils() {
    console.log("\n" +
    "                                __           __                 \n" +
    "  ____           ______   ____ |  | __ _____/  |_____________   \n" +
    "_/ __ \\   ______ \\____ \\ /  _ \\|  |/ // __ \\   __\\_  __ \\__  \\  \n" +
    "\\  ___/  /_____/ |  |_> >  <_> )    <\\  ___/|  |  |  | \\// __ \\_\n" +
    " \\___  >         |   __/ \\____/|__|_ \\\\___  >__|  |__|  (____  /\n" +
    "     \\/          |__|               \\/    \\/                 \\/ \n");
    }

    static menu() {
        console.log("Welcome to e-poketra!");
        AppUtils.consoleUtils();
        console.log("1 - Put object in");
        console.log("2 - Put object out");
        console.log("3 - Get money balance");
        console.log("4 - Get identifier)");
        console.log("5 - Quit");
    }

    static objectTypeMenu(wallet, objectId, pocketNumber, type) {
        switch (type) {
            case 1:
                console.log("Money amount: ");
                const amount = parseFloat(prompt());
                wallet.putObjectIn(pocketNumber, new Money(objectId, amount));
                break;
            case 2:
                wallet.putObjectIn(pocketNumber, new Photo(objectId));
                break;
            case 3:
                wallet.putObjectIn(pocketNumber, new Card(objectId, CardType.CREDIT_CARD));
                break;
            case 4:
                wallet.putObjectIn(pocketNumber, new Card(objectId, CardType.VISIT_CARD));
                break;
            case 5:
                wallet.putObjectIn(pocketNumber, new Card(objectId, CardType.DRIVING_CARD));
                break;
            case 6:
                wallet.putObjectIn(pocketNumber, new Card(objectId, CardType.NI_CARD));
                break;
            default:
                console.log("Unrecognized object type ");
        }
    }

    static objectCountMenu(wallet, type) {
        switch (type) {
            case 1:
                console.log(`Credit card count: ${wallet.countObject(CardType.CREDIT_CARD)}`);
                break;
            case 2:
                console.log(`Visit card count: ${wallet.countObject(CardType.VISIT_CARD)}`);
                break;
            case 3:
                console.log(`Driving card count: ${wallet.countObject(CardType.DRIVING_CARD)}`);
                break;
            case 4:
                console.log(`NI card count: ${wallet.countObject(CardType.NI_CARD)}`);
                break;
            default:
                console.log("Unrecognized object type ");
        }
    }
}

export default AppUtils;