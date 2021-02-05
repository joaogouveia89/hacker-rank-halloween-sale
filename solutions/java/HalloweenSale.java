import java.math.*;

public class HalloweenSale{
	public static int howManyGames(int p, int d, int m, int s) {
        if(s < p) return 0;
        
        double lastN = (((m - p)/(float)d * (-1)) + 1);
        
        if(lastN != Math.ceil(lastN)){
            lastN = Math.floor(lastN);
        }
        
        double an = p + (double)(lastN - 1) * (d * -1);
        
        double v
        
        double numberOfGames = 0;
        
        if(sum > s){
            numberOfGames = sum / s;
        }else{
            numberOfGames = ((p - m) / d) + 1 + ((s - sum) / m);
        }
        
        return (int)Math.floor(numberOfGames);
    }
}