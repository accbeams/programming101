class Ball{
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float size;
  
  void move(){
    x+=xSpeed;
    y+=ySpeed;
    
    if (x<0 || x>width){
      xSpeed *= -1;
    }
    if (y<0 || y>height){
      ySpeed *= -1;
    }
  }
  void display(){
    ellipse(x,y,size,size);
  }
  
  Ball(){
    x = random(width);
    y = random(height);
    xSpeed = random(-5,5);
    ySpeed = random(-5,5);
    size = 10;
  }
}