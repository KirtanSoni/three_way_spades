import 'card.dart';
import 'deck.dart';
import 'player.dart';

import 'package:flutter/foundation.dart';



class ThreeWaySpades extends ChangeNotifier{
  List<Player> players = [];
  int turnPlayer = 0; //index of the players
  int leadingPlayer = 0; //index of the players
  late List<int> PartnerPlayers; //index of the players
  
  int numDecks = 1;
  int round = 0;
  int Bestbid=numDecks*125 ;;
  late int leadingsuit;
  late List<Pair<int,Card>> partnerCards;

  ThreeWaySpades(List<Player> players, int numDecks){
    this.players = players;
    this.numDecks = numDecks;
  }

  void initGame(){
    this.partnerCards.clear();
    this.Partners.clear();
    this.leadingsuit = -1;
    this.round++;
    this.Bestbid = numDecks*125;
    this.leadingPlayer = round % players.length;
    Deck deck = Deck(numDecks);
    int mod = deck.cards.length % players.length;
    deck.normaliseAndShuffle(mod);
    for(Player p in players){
      while(deck.cards.length > 0){
        p.addCard(deck.draw());
      }
    }
    notifyListeners();
  }
 // TODO : implement 
  void bid();
  void selectPartnerAndLeadSuit();
  void playCard();
  void game();
  void checkCardforPartner();







}