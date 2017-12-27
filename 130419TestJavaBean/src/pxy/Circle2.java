package pxy;
public class Circle2{ 
   double radius=1;
   double circleArea=0;
   double circleLength=0;
   public double getRadius(){
     return radius;
   }
   public void setRadius(double newRadius){
     radius=newRadius;
   }
   public double getCircleArea(){
     circleArea=Math.PI*radius*radius;
     return circleArea;
   }
   public double getCircleLength(){
     circleLength=2.0*Math.PI*radius;
     return circleLength;
   }
}