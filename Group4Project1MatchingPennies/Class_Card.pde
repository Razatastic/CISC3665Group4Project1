class Card {
  String coin;
  boolean clicked;
  PImage cardImage;
  PImage cardImageFlipped;
  int x, y;

  Card(String value) {
    coin = value;
    clicked = false;
    imageMode(CENTER);
    cardImage = loadImage( "default.png" );
    cardImage.resize(80, 80);
    cardImageFlipped = loadImage(value + ".png");
    cardImageFlipped.resize(80, 80);
  }

  boolean getClicked() {
    return clicked;
  }

  void setClicked() { 
    clicked = true;
  }

  String getCoin() {
    return coin;
  }

  PImage getImage() {
    if (clicked == false) {
      return cardImage;
    } else {    
      return cardImageFlipped;
    }
  }
}
