import 'wallet_object.dart';
import 'card_type.dart';

class Card extends WalletObject {
  final CardType type;

  Card(int id, this.type) : super(id);

  CardType getType() {
    return type;
  }

  @override
  String toString() {
    return 'Card{type=$type}';
  }
}
