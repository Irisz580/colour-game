//Iris Zhao
//Sept 26th 2021
//A very simple game: when the colour matches the word, click "true:;
//when doesn't match, click "false". enjoy:)

int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;

//score,lives,highscore
int score, lives;
int highscore;

//timer
int timer;
int a;

//font
PFont catlove;
PFont baligle;

//array
String[] words;
color[]colors;


//colours
color red=#FF0307;
color orange=#FF8E03;
color yellow=#FFEC12;
color green=#C7FF12;
color cyan=#12FFD1;
color blue=#1296FF;
color purple=#BE88F5;

//choosing random words+colors
int w=int(random(0, 7));
int c=int(random(0, 7));//choosing random words+colors
int z=int(random(0, 2));

//gif variables
PImage[] gif;
int numberOfFrames;
int f;

//background picture
PImage cat1;
PImage cat2;

void setup() {
  size(800, 800);
  mode= INTRO;

  //background image
  cat1=loadImage("cat1.jpeg");
  cat2=loadImage("cat2.png");

  //create font
  catlove=createFont("Catlove.ttf", 100);
  baligle=createFont ("Baligle Regular.otf", 100);

  //create gif
  numberOfFrames=8;
  gif= new PImage[numberOfFrames];
  int i=0;
  while (i<numberOfFrames) {
    gif[i]=loadImage("frame_" +i+ "_delay-0.08s.gif");
    i++;
  }

  //rectangle timer
  a=100;

  //match word and colour 
  words=new String[7];
  colors=new color[7];
  words[0]="red";
  colors[0]=red;
  words[1]="orange";
  colors[1]=orange;
  words[2]="yellow";
  colors[2]=yellow;
  words[3]="green";
  colors[3]=green;
  words[4]="cyan";
  colors[4]=cyan;
  words[5]="blue";
  colors[5]=blue;
  words[6]="purple";
  colors[6]=purple;

  //initialize lives;
  lives=1;

  //setup timer
  while (timer<200&&timer>0) {
    a--;
  }
  //setup possibility 50/50
  z=int(random(0, 2));
  if (z==0) {
    c=w;
  } else {
    c=(w+int(random(1, 7)))%7;
  }
}


void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode== GAME) {
    game();
  } else if (mode== PAUSE) {
    pause();
  } else if (mode== GAMEOVER) {
    gameover();
  } else {
    println("Error:Mode="+ mode);
  }
}
