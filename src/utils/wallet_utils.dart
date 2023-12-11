import 'dart:io';

import '../model/Card.dart';
import '../model/Money.dart';
import '../model/Wallet.dart';

import '../model/common/card_type.dart';

class WalletUtils {
  static void consoleUtils() {
    String sigle = '''
                                __           __                 
  ____           ______   ____ |  | __ _____/  |_____________   
_/ __ \\   ______ \\____ \\ /  _ \\|  |/ // __ \\   __\\_  __ \\__  \\  
\\  ___/  /_____/ |  |_> >  <_> )    <\\  ___/|  |  |  | \\// __ \\_
 \\___  >         |   __/ \\____/|__|_ \\\\___  >__|  |__|  (____  /
     \\/          |__|               \\/    \\/                 \\/ 
''';

    print(sigle);
  }

  static void menu() {
    print('Welcome to e-poketra!');
    consoleUtils();
    print('1 - Put object in');
    print('2 - Put object out');
    print('3 - Get my balance');
    print('4 - Give my identifier');
    print('5 - Count object [Credit card, visit card, driving card, National Identity Card]');
  }

  static void objectTypeMenu(Wallet wallet, int objectId, int pocketNumber, int type) {
    switch (type) {
      case 1:
        stdout.write('Money amount : ');
        double amount = double.parse(stdin.readLineSync()!);
        wallet.putObjectIn(pocketNumber, Money(objectId, amount));
        break;
      case 2:
        break;
      case 3:
        wallet.putObjectIn(pocketNumber, Card(objectId, CardType.CREDIT_CARD));
        break;
      case 4:
        wallet.putObjectIn(pocketNumber, Card(objectId, CardType.VISIT_CARD));
        break;
      case 5:
        wallet.putObjectIn(pocketNumber, Card(objectId, CardType.DRIVING_CARD));
        break;
      case 6:
        wallet.putObjectIn(pocketNumber, Card(objectId, CardType.NI_CARD));
        break;
      default:
        print('Unrecognized object type');
    }
  }

  static void objectCountMenu(Wallet wallet, int type) {
    switch (type) {
      case 1:
        print('Credit card count : ${wallet.countObject(CardType.CREDIT_CARD)}');
        break;
      case 2:
        print('Credit card count : ${wallet.countObject(CardType.VISIT_CARD)}');
        break;
      case 3:
        print('Credit card count : ${wallet.countObject(CardType.DRIVING_CARD)}');
        break;
      case 4:
        print('Credit card count : ${wallet.countObject(CardType.NI_CARD)}');
        break;
      default:
        print('Unrecognized object type');
    }
  }
}
