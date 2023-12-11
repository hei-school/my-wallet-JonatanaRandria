import Wallet from './model/Wallet.js';
import AppUtils from './utils/AppUtils.js';
import PromptSync from 'prompt-sync';

const prompt = PromptSync();

function main() {
    const myWallet = new Wallet();

    while (true) {
        AppUtils.menu();
        console.log("I want to : ");
        const choice = parseInt(prompt());
        redirect(myWallet, choice);
    }
}

function redirect(wallet, choice) {
    const objectId = Math.floor(Math.random() * 100) + 1;

    switch (choice) {
        case 1:
            console.log("Which pocket ? (1 - 5) ");
            const pocketNumber = parseInt(prompt());
            console.log("Object type : ");
            console.log("1 - Money ");
            console.log("2 - Credit Card");
            console.log("2 - Visit Card");
            console.log("4 - Driving Card");
            console.log("5 - National Identity Card");
            console.log("Choice : ");
            const type = parseInt(prompt());
            AppUtils.objectTypeMenu(wallet, objectId, pocketNumber, type);
            break;
        case 2:
            console.log("All object you can put out ");
            const objects = wallet.getObjects();
            for (const obj of objects) {
                console.log(`[${obj.getId()} - ${obj.constructor.name}] `);
            }
            console.log("Choose object identifier : ");
            const objId = parseInt(prompt());
            wallet.putObjectOut(objId);
            break;
        case 3:
            console.log(`Actual Balance : ${wallet.getBalance()} MGA `);
            break;
        case 4:
            console.log("Which pocket ? (1 - 5) ");
            const pocket = parseInt(prompt());
            console.log(`All objects in pocket number ${pocket} `);
            const objectList = wallet.getObjectIn(pocket);
            for (const obj of objectList) {
                console.log(`[${obj.getId()} - ${obj.constructor.name}] `);
            }
            break;
        case 5:
            console.log("See you soon,thanks for visit");
            process.exit(1)
            break;
        
        default:
            break;
    }
}

main();