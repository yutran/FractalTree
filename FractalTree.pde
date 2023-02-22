private double fractionLength = .8; 
private int smallestBranch = 3; 
private double branchAngle = .2; 
public void setup() 
{   
  size(500,500); 
  noLoop(); 
} 
public void draw() 
{   
  background(0); 
  strokeWeight(1.5);
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));   
  drawBranches(255,430,150,3*Math.PI/2,300); 
} 
public void drawBranches(int x,int y, double branchLength, double angle, int random) 
{   
  double angle1 = angle;
  double angle2 = angle + branchAngle;
  double angle3 = angle - branchAngle;
    
  int endX1 = (int)(branchLength*Math.cos(angle1) + x );
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  int endX3 = (int)(branchLength*Math.cos(angle3) + x);
  int endY3 = (int)(branchLength*Math.sin(angle3) + y);
  line(x,y,endX2,endY2);
  line(x,y,endX3,endY3);
  
 if(branchLength > smallestBranch){
   drawBranches(endX1,endY1,branchLength/2,angle1,random/2);
   drawBranches(endX2,endY2,branchLength/2,angle2+PI/3,random/2);
   drawBranches(endX3,endY3,branchLength/2,angle3-PI/3,random/2);
 }
}
