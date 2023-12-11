const readlineSync = require('prompt-sync');
const Wallet = require('./model/wallet');
const { menu, objectTypeMenu, objectCountMenu } = require('./utils/input_utils');

function main() {
  const myWallet = new Wallet();

  while (true) {
    menu();
    const choice = parseInt(readlineSync.question('I want to: '));
    redirect(myWallet, choice);
  }
}

function redirect(wallet, choice) {
  const objectId = Math.floor(Math.random() * 100) + 1;

  switch (choice) {
    case 1:
      console.log(objectId);
      const pocketNumber = parseInt(readlineSync.question('Which pocket? (1 - 5) '));
      console.log('Object type: ');
      console.log('1 - Money ');
      console.log('2 - Photo');
      console.log('3 - Credit Card');
      console.log('4 - Visit Card');
      console.log('5 - Driving Card');
      console.log('6 - National Identity Card');
      const type = parseInt(readlineSync.question('Choice: '));
      objectTypeMenu(wallet, objectId, pocketNumber, type);
      break;
    case 2:
      console.log('All objects you can put out ');
      const objects = wallet.getObjects();
      for (const obj of objects) {
        console.log(`[${obj.getId()} - ${obj.constructor.name}]`);
      }
      const objId = parseInt(readlineSync.question('Choose object identifier: '));
      wallet.putObjectOut(objId);
      break;
    case 3:
      console.log(`Actual Balance: ${wallet.getBalance()} MGA`);
      break;
    case 4:
      console.log('It provides your identity as your name and location, coming soon');
      break;
    case 5:
      console.log('Object type: ');
      console.log('1 - Credit Card');
      console.log('2 - Visit Card');
      console.log('3 - Driving Card');
      console.log('4 - National Identity Card');
      const cardType = parseInt(readlineSync.question('Choice: '));
      objectCountMenu(wallet, cardType);
      break;
  }
}

main();
