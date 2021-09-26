void game() {
  //background
  image(cat2, 0, 0, 800, 800);

  //buttons
  textFont(catlove);
  fill(0);
  rect(0, 700, 400, 100);
  fill(250);
  rect(400, 700, 400, 100);
  fill(250);
  textSize(60);
  text("True", 120, 770);
  fill(0);
  text("False", 520, 770);

  //score+lives
  textFont(baligle);
  textSize(20);
  text("score:" +score, 250, 50);
  text("lives:"+lives, 50, 50);

  //displaying the puzzle
  fill(colors[c]);
  textSize(100);
  text(words[w], 150, 400);

  //timer
  textSize(20);
  timer++;
  fill(0);
  text("timer:", 450, 50);

  // timer rectangle
  rect(580, 30, a, 20);
  a--;

  //visualize timer
  if (timer>=100) {
    mode=GAMEOVER;
    timer=0;
    a=100;
  }
}

void gameClicks() {
  //if match & click ture button
  if (mouseX>0&&mouseX<400&&mouseY>700&&mouseY<800) {
    if (c==w) {
      //reset colour
      w=int(random(0, 7));
      c=int(random(0, 7));

      //reset possibility
      z=int(random(0, 2));
      if (z==0) {
        c=w;
      } else {
        c=(w+int(random(1, 7)))%7;
        // c=(w+3)%7;
      }
      //change score,timer
      score=score+1;
      timer=0;
      a=100;
    } else {
      mode=GAMEOVER;
    }
    //if doesn't match & click false button
  } else if (mouseX>400&&mouseX<800&&mouseY>700&&mouseY<800) {
    if (c!=w) {
      //reset colour
      w=int(random(0, 7));
      c=int(random(0, 7));

      //reset possibility
      z=int(random(0, 2));
      if (z==0) {
        c=w;
      } else {
        c=(w+int(random(1, 7)))%7;
        //c=(w+3)%7;
      }
      //change score, timer
      score=score+1;
      timer=0;
      a=100;
    } else {
      mode=GAMEOVER;
    }
  }


  //
}
