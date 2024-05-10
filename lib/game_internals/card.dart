class Card{
  final int suit;
  final int rank;
  
  Card(this.suit, this.rank);

  int getPoints(){
    if(rank>=10)
      return 10;
    else if (rank == 5)
      return 5;
    else if (rank == 3 && suit == 0)
      return 30;
    else
      return 0;
  }

  String getRank(){
    if(rank == 11)
      return 'Jack';
    else if(rank == 12)
      return 'Queen';
    else if(rank == 13)
      return 'King';
    else if(rank == 14)
      return 'Ace';
    else
      return rank.toString();
  }

  String getSuit(){
    if(suit == 0)
      return 'Spades';
    else if(suit == 1)
      return 'Hearts';
    else if(suit == 2)
      return 'Clubs';
    else
      return 'Diamonds';
  }
  @override
  String toString() {
    String suits = getSuit();
    String ranks = getRank();
    return '$ranks of $suits';
  }
}