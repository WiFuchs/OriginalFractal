void setup(){
  size(600,600);
  noFill();
  stroke(#66FFCC);
}
void draw(){
  background(0);
  fractal(300, 300, 100);
}
void fractal(int x, int y, int rad){
  if(rad>1){
    ellipse(x, y, rad*2, rad*2);
    int x2 = (int)(rad*cos(2*PI-(rad/10)))+x;
    int y2 = (int)(rad*sin(2*PI-(rad/10)))+y;
    int x3 = (int)(rad*cos(PI-(rad/10)))+x;
    int y3 = (int)(rad*sin(PI-(rad/10)))+y;
    int x4 = (int)(rad*cos(3*PI/2-(rad/10)))+x;
    int y4 = (int)(rad*sin(3*PI/2-(rad/10)))+y;
    int x5 = (int)(rad*cos(PI/2-(rad/10)))+x;
    int y5 = (int)(rad*sin(PI/2-(rad/10)))+y;
    fractal(x2, y2, rad/2);
    fractal(x3, y3, rad/2);
    fractal(x4, y4, rad/2);
    fractal(x5, y5, rad/2);
  }
}
