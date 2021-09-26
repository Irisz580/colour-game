void intro() {
  //background
  image(gif[f], 0, 0, width, height);

  //gif 
  if (frameCount % 2 == 0) f=f+1;
  if (f==numberOfFrames)f=0;

  //text
  textSize(10);
  //textAlign(CENTER,CENTER);
  textFont(catlove);
  fill(0);
  text("Color Game", 130, 300);
  fill(250);
  text("Color Game", 140, 310);
  textSize(50);
  text("Click to start", 200, 600);
}

void introClicks() {
  if (mouseX>0&&mouseX<800&&mouseY>0&&mouseY<800) {
    mode=GAME;
    //randomize colour
    w=int(random(0, 7));
    c=int(random(0, 7));
  }
}
