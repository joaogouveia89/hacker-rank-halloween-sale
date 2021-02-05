fun howManyGames(p: Int, d: Int, m: Int, s: Int): Int {
    if(s < p) return 0 
    
    var lastN = (((m - p)/d.toDouble() * (-1)) + 1)
    
    if(lastN != Math.ceil(lastN)){
        lastN = Math.floor(lastN)
    }
    val an = p + (lastN - 1).toDouble() * (d * -1)
    
    val sum = ((p + an) * lastN) / 2.toDouble();
    
    val numberOfGames = if(sum > s){
        sum / s
    }else{
        ((p - m) / d) + 1 + ((s - sum) / m)
    }
    
    return Math.floor(numberOfGames).toInt()
}