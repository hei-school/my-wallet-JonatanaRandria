import 'dart:io';
import 'dart:math';

import './model/wallet.dart';
import './model/common/wallet_object.dart';
import './utils/wallet_utils.dart' ;

void main() {
  

  while (true) {
    WalletUtils.menu();
    stdout.write('I want to : ');
    var choice = int.parse(stdin.readLineSync()!);
    redirect(Wallet, choice);
  }
}

void redirect(Wallet wallet, int choice) {
  var objectId = Random().nextInt(100) + 1;
  switch (choice) {
    case 1:
      print(objectId);
      stdout.write('Which pocket ? (1 - 5) ');
      var pocketNumber = int.parse(stdin.readLineSync()!);
      print('Object type : ');
      print('1 - Money ');
      print('2 - Photo');
      print('3 - Credit Card');
      print('4 - Visit Card');
      print('5 - Driving Card');
      print('6 - National Identity Card');
      stdout.write('Choice : ');
      var type = int.parse(stdin.readLineSync()!);
      WalletUtils.objectTypeMenu(wallet, objectId, pocketNumber, type);
      break;
    case 2:
      print('All objects you can put out ');
      var objects = wallet.getObjects();
      for (var obj in objects) {
        print('[${obj.getId()} - ${obj.runtimeType}]');
      }
      stdout.write('Choose object identifier : ');
      var objId = int.parse(stdin.readLineSync()!);
      wallet.putObjectOut(objId);
      break;
    case 3:
      print('Actual Balance : ${wallet.getBalance()} MGA');
      break;
    case 4:
      print('It provides your identity as your name and location, coming soon');
      break;
    case 5:
      print('Object type : ');
      print('1 - Credit Card');
      print('2 - Visit Card');
      print('3 - Driving Card');
      print('4 - National Identity Card');
      stdout.write('Choice : ');
      var cardType = int.parse(stdin.readLineSync()!);
      WalletUtils.objectCountMenu(wallet, cardType);
      break;
  }
}
