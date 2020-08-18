PImage img;

void setup(){  
  size(800,799);
  img = loadImage("Weeping_Angel.JPG");
  img.resize(800,800);

}

void draw(){
  background(#FFFFFF);
  fill(0);
  noStroke();
//image(img,100,0);

float tiles = mouseX/5;
float tilesize = width/tiles;
translate(tilesize/2,tilesize/2);

for(int x = 0;x<tiles;x++){
  for(int y= 0; y<tiles;y++){
    
     color c = img.get(int(x*tilesize),int(y*tilesize));
     float size = map(brightness(c),0,255,0,10);  
    ellipse(x*tilesize,y*tilesize,size,size);
  
  }
}

}
