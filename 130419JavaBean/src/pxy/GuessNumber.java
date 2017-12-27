package pxy;
public class GuessNumber{
   int answer=0,    //待猜测的整数
   guessNumber=0,   //用户的猜测
   guessCount=0;    //用户猜测的次数
   String result=null; 
   boolean right=false;
   public void setAnswer(int n){
      answer=n;
      guessCount=0;
   }
   public int  getAnswer(){
      return answer;
   }
   public void  setGuessNumber(int n){
      guessNumber=n;
      guessCount++;
      if(guessNumber==answer){
         result="恭喜，猜对了";
         right=true;
      }
      else if(guessNumber>answer){
         result="猜大了";
         right=false;  
     }
     else if(guessNumber<answer){
         result="猜小了";
         right=false; 
     }   
   }
   public int getGuessNumber(){
      return guessNumber;
   }
   public int getGuessCount(){
      return guessCount;
   }
   public String getResult(){
      return result;
   }
   public boolean isRight(){
      return right;
   }
}
