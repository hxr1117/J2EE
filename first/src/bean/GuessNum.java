package bean;
import java.util.*;

public class GuessNum {
    private int num;
    public GuessNum(){

    }
    public int getNum(){
        try{
            Random r = new Random();
            this.num = r.nextInt(100);
            return num;
        }
        catch (Exception e) {
            return -1;
        }
    }
    public int guessNum(int n){
        try{
            if(n == num){
                return 1;
            }
            else if(n > num){
                return 2;
            }
            else{
                return 3;
            }
        }
        catch (Exception e){
            return 4;
        }
    }
}
