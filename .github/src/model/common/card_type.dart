class CardType {
  static const CardType DRIVING_CARD = CardType._('DRIVING_CARD');
  static const CardType VISIT_CARD = CardType._('VISIT_CARD');
  static const CardType NI_CARD = CardType._('NI_CARD');
  static const CardType CREDIT_CARD = CardType._('CREDIT_CARD');

  final String value;

  const CardType._(this.value);

  @override
  String toString() {
    return value;
  }
}
