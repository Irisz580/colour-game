void gameover() {
  //background
  image(cat1, 0, 0, 800, 800);

  //highscore
  if (score>highscore) {
    highscore = score;
  }

  //text
  textSize(50);
  fill(0);
  text("GAME OVER", 160, 290);
  fill(red); 
  text("GAME OVER", 150, 280);
  textSize(30);
  fill(0);
  text("HIGH SCORE :"+highscore, 160, 490);
  fill(255);
  text("HIGH SCORE :"+highscore, 150, 480);
}


void gameoverClicks() {
  if (mouseX>0&&mouseX<800&&mouseY>0&&mouseY<800) {
    mode=INTRO;
  }
  //reset lives and score
  lives=1;
  score=0;
}
