void setup() {
  size(600, 600);
}
 
void draw() {
  background(-1);
  for (int i=0;i<10;i++) {
    for (int j=0;j<10;j++) {
      int index = i + j*10;
      rect(i*50, j*50, 50, 50);
      pushStyle();
      fill(255, 0, 0);
      text(index, i*50+20, j*50+20);
      popStyle();
    }
  }
}