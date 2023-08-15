import '../../core/models/card.dart';

class  ShippingAddressesController {
  Card? selectedCard ;
  final List<Card> cards = [
    Card(
      title1: 'Use as the shipping address',
      title2: 'Bruno Fernandes',
      title3: '25 rue Robert Latouche, Nice, 06200, Côte \n D’azur, France',
    ),
    Card(
      title1: 'Use as the shipping address',
      title2: 'Bruno Fernandes',
      title3: '25 rue Robert Latouche, Nice, 06200, Côte \n D’azur, France',
    ),
    Card(
      title1: 'Use as the shipping address',
      title2: 'Bruno Fernandes',
      title3: '25 rue Robert Latouche, Nice, 06200, Côte \n D’azur, France',
    ),
  ];

  void selectCard(Card value) {
    if (selectedCard == value) {
      return selectedCard = null;
    }
    selectedCard = value;
  }

}