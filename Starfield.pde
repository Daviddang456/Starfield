//your code here
NormalParticle [] particles;
void setup()
{
   size(600,600);
  particles = new NormalParticle[100];
	//your code here
  
}
void draw()
{
  background(0);
	//your code here
}
class NormalParticle
{
	//your code here
  float myX;
  float myY;
  float myXTwo;
  float myYTwo;
  NormalParticle(){
   myX = 0;
   myY = 0;
   myXTwo = 0;
   myYTwo = 0;
   
  }
  
  public void show(){
    fill(0,255,0);
    line(myX, myY, myXTwo, myYTwo);
  }
  
  public void move(){
  }
  
}
interface Particle
{
	//your code here
  public void show();
  public void move();
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}
