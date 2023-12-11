import 'dart:collection';
import './common/wallet_object.dart';
import './Card.dart';
import './Money.dart';
import './common/card_type.dart';

class Wallet {
  final List<Pocket> pockets;

  Wallet() : pockets = List.of([Pocket(1), Pocket(2), Pocket(3), Pocket(4), Pocket(5)]);

  List<Pocket> putObjectIn(int pocketNumber, WalletObject object) {
    return pockets
        .where((pk) => pk.getNumber() == pocketNumber)
        .map((pocket) {
          pocket.putObject(object);
          return pocket;
        })
        .toList();
  }

  List<Pocket> putObjectOut(int objectId) {
    WalletObject object = getObjects().firstWhere((obj) => obj.getId() == objectId);
    return pockets
        .map((pocket) {
          pocket.retrieveObject(object);
          return pocket;
        })
        .toList();
  }

  Pocket getObjectLocation(int objectId) {
    WalletObject object = getObjects().firstWhere((obj) => obj.getId() == objectId);
    return pockets.firstWhere((pocket) => pocket.getObjects().contains(object));
  }

  List<WalletObject> getObjects() {
    List<WalletObject> objects = [];
    pockets.map((pocket) => pocket.getObjects()).forEach((objectList) {
      objects.addAll(objectList);
    });
    return objects;
  }

  List<WalletObject> getObjectIn(int pocketNumber) {
    return pockets
        .where((pk) => pk.getNumber() == pocketNumber)
        .map((pocket) => pocket.getObjects())
        .isEmpty
        ? []
        : pockets
            .where((pk) => pk.getNumber() == pocketNumber)
            .first
            .getObjects();
  }

  double getBalance() {
    List<Money> money = [];
    pockets.map((pocket) => pocket.getObjects()).forEach((objectList) {
      for (WalletObject obj in objectList) {
        if (obj is Money) {
          money.add(obj);
        }
      }
    });

    return money.map((Money money) => money.getAmount()).fold(0.0, (a, b) => a + b);
  }

  int countObject(CardType objectType) {
    List<Card> cards = [];
    getObjects().forEach((obj) {
      if (obj is Card) {
        cards.add(obj);
      }
    });

    switch (objectType) {
      case CardType.NI_CARD:
        return cards.where((cd) => cd.getType() == CardType.NI_CARD).toList().length;
      case CardType.CREDIT_CARD:
        return cards.where((cd) => cd.getType() == CardType.CREDIT_CARD).toList().length;
      case CardType.DRIVING_CARD:
        return cards.where((cd) => cd.getType() == CardType.DRIVING_CARD).toList().length;
      case CardType.VISIT_CARD:
        return cards.where((cd) => cd.getType() == CardType.VISIT_CARD).toList().length;
      default:
        return 0;
    }
  }
}

class Pocket {
  final List<WalletObject> objects;
  final int number;

  Pocket(this.number) : objects = [];

  List<WalletObject> getObjects() {
    return UnmodifiableListView(objects);
  }

  int getNumber() {
    return number;
  }

  void empty() {
    objects.clear();
  }

  void putObject(WalletObject object) {
    objects.add(object);
  }

  void retrieveObject(WalletObject object) {
    objects.remove(object);
  }
}
