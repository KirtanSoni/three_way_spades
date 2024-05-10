import 'package:flutter/foundation.dart';
import 'card.dart';

class Player extends ChangeNotifier {
  final List<Card> hand;
  final String name;
  late int points;
  Player(this.name) : hand = [], points = 0;

  void addCard(Card card) {
    hand.add(card);
    notifyListeners();
  }
  void removeCard(Card card) {
    hand.remove(card);
    notifyListeners();
  }
  void addPoints(int points) {
    this.points += points;
    notifyListeners();
  }

  // TODO : sort the cards in the hand

}