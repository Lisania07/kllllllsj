//IMAGES
PImage Gameover;

void gameover() {
  //background
  Gameover=loadImage("gover.jpg"); 
  image(Gameover, width/2, height/2, width, height);
  
  //exit
  fill(0);
  rect(600, 50, 100, 50);

  //text
  textSize(15);
  fill(255);
  text("PLAY AGAIN:", 600, 600);
  text("PRESS ANYWHERE TO RESPAWN", 600, 650);
  textSize(20);
  text("EXIT", 577, 57);
  text("HIGHSCORE:"+highscore, 150, 50);
  text("COIN balance:"+bank,950,50);
  //HIGHSCORE

  if (score>highscore) {
    highscore=score;
  }
 
  bank=coins+newcoins;

}


void gameoverClicks() {

  if (mouseX>550 && mouseX<650 && mouseY>25 && mouseY<75) {
    exit();
  } else {
    mode=INTRO;
  }
}
