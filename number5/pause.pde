 void pause() {
 //PAUSE BUTTON
   fill(0);
  rect(750,50,50,50);
  stroke(255,0,0);
  line(740,35,740,65);
  line(760,35,760,65);
  //MID
  triangle(365,250,365,350,450,300);
  
  
}

    void pauseClicks(){
       if (dist(mouseX, mouseY, 750,50 )<50){
   mode=GAME;
    
   
    }
    }
