public int radius = 0;
public boolean Counter = false;
public int numParticles = 52;
Particle[] particles;

void setup(){
  size(600,600);
	particles= new Particle[numParticles];

  for(int i = 0; i < numParticles;i++){
    particles[i] = new NormalParticle();
  }
 
 particles[0] = new OddballParticle();
 particles[1] = new JumboParticle();
}

void draw(){ 
 if(Counter == false){
   background(0);
   
   for(int i = 0; i < numParticles; i++){ 
     particles[i].show();
     particles[i].move();
   }
   
 }
 
}

public void mousePressed(){
  Counter = true;
  
  if(Counter == true){
    delay(1);
    Counter = false;
    
    for(int i = 1; i < numParticles; i++){
      particles[0].setMyX(0);  
      particles[i].setMyX(mouseX);
      particles[i].setMyY(mouseY);
      particles[i].setMyAngle();
      particles[i].setMySpeed();
    }  
   redraw();
  }
}

class NormalParticle implements Particle{
  protected double myX;
  protected double myY; 
  private double mySpeed;
  private double myAngle;
  private double myRadius;
  
  public NormalParticle(){
    myX = 300;
    myY = 300;
    mySpeed = (Math.random()*15);
    myAngle = Math.random()*2*Math.PI;
    myRadius = 15;
  }
 public void show(){
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    ellipse((float)myX, (float)myY, (float)myRadius, (float)myRadius);
  }
  
  public void move(){
    myX = myX + (mySpeed * Math.cos(myAngle));
    myY = myY + (mySpeed * Math.sin(myAngle));
  }
  
  public void setMyX(double X){
   myX = X; 
  }
  
  public void setMyY(double Y){
   myY = Y; 
  }
  
  public void setMyAngle(){
   myAngle = Math.random()*2*Math.PI; 
  }
  
  public void setMySpeed(){
    mySpeed = (Math.random()*15);
  }
}

interface Particle{
  public void move();
  public void show();
  public void setMyX(double X);
  public void setMyY(double Y);
  public void setMyAngle();
  public void setMySpeed();
}

class OddballParticle implements Particle{
 private double myX;
 private double myY;
 
 public OddballParticle(){
  myX = 0;
  myY = 275;
 }
 
 public void show(){
   fill(255,255,255);
   textSize(25);
   text("Oddball Particle LOL!!!", (float)myX , (float)myY);
 } 
 
 public void move(){
   myX = myX + 5; 
 } 
 
 public void setMyX(double X){
   myX = X;
  }
  
  public void setMyY(double Y){}
  public void setMyAngle(){}
  public void setMySpeed(){}
}

class JumboParticle extends NormalParticle{
  public void show(){
    fill(255);
    ellipse((float)myX,(float)myY,50,50);
  }
}
