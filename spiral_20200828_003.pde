// Rupert Russell
// 28 August 2020
// Code on Github at: https://github.com/rupertrussell/spiral_20200828_002
// artwork on redbubble at: https://www.redbubble.com/shop/ap/56100636?ref=studio-promote
float radSec;
float count = 0 ;
float initialSize = 9411 * 2;
float newSize;
int saveCount = 0;
int oldSaveCount = 0;
void setup() {
  size(9411, 9411);
  smooth();
  strokeWeight(26);
  stroke(0);
  background(255,0,0);
  fill(255,0,0);
}

void draw() {
  saveCount ++;

  count = count + 1;
//  translate(width / 3, height / 3);
  radSec = 360 / 60 * count;
  pushMatrix();
  rotate(radians(radSec));
  newSize = initialSize / 2 - count;
  rect(0, 0, newSize, newSize);
  popMatrix();

  if (saveCount == oldSaveCount + 800) {
    save(saveCount + ".png");
    println("saved " + saveCount + ".png");
    oldSaveCount = saveCount;
  }

  if (newSize <= 0) {
    save("spiral-9411x9411-26.png");
    exit();
  }
}
