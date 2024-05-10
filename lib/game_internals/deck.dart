import 'card.dart';


class Deck{
  List<Card> cards = [];
  Deck(int numDecks = 1) {
     for(int i = 0; i < numDecks; i++){ 
      for(int i = 0; i < 4; i++){
        for(int j = 2; j < 15; j++){
          cards.add(Card(i, j));
        }
      }
     }
  }
  Card draw(){
    return cards.removeLast();
  }
  // n = 0 will only shuffle, n > 0 will remove n cards from the top of the deck and then shuffle
  void normaliseAndShuffle(int n = 1){
    for(int i = 0; i < n; i++)
    {
      if(cards.elementAt(0).getRank() == '3' && cards.elementAt(0).getSuit() == 'Spades')
        cards.removeAt(1);
      cards.removeAt(0);
    }
    cards.shuffle();
  }
  String toString(){
    String s = '';
    for(Card c in cards){
      s += c.toString() + '\n';
    }
    return s;
  }
}