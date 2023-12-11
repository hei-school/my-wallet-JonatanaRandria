import 'wallet_object.dart';

class Pocket {
  final List<WalletObject> objects;
  final int number;

  Pocket(this.number) : objects = <WalletObject>[];

  List<WalletObject> getObjects() {
    return List<WalletObject>.from(objects);
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

  @override
  String toString() {
    return 'Pocket{objects=$objects, number=$number}';
  }
}
