
//gloabal variables

final int INTRO=1;
final int PAUSE = 2;
final int GAME=3;
final int GAMEOVER = 4;
final int SHOP=5;
final int HELP=6;
final int COOLR=7;

int mode=INTRO;

//keyboard
boolean wkey, akey, skey, dkey, spacekey;

//Oother variasbles
int timer;
int score;
int highscore;
int counter;
int newcoins;
int coins;
int bank;
int live;
boolean AI;
color selectedcolor;

//array listt
ArrayList<GameObject> objects;
Starfighter player1;



void setup() {
  size(800, 600);
  rectMode(CENTER);
  textMode(CENTER);
  imageMode (CENTER);
  noStroke();

  //game function
  timer=5;
  score=0;
  highscore=score;
  counter=0;
  bank=0;
  newcoins=0;
  coins=0;
  live=0;
  //new objects
  objects=new ArrayList <GameObject>();
  player1=new Starfighter();
  objects.add(player1);
  AI=false;
  selectedcolor=#FF0000;
}

void draw() {
  if (mode==INTRO)        intro();
  else if (mode==GAME)     game();
  else if (mode==PAUSE)    pause();
  else if (mode==GAMEOVER) gameover();
  else if (mode==SHOP) shop();
  else if (mode==HELP) help();
  else if(mode==COOLR) coolr();
  else  println("Error: Mode = "+mode);
}
