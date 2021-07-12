import cpp

class NetworkByteSwap extends Expr { // No mystery here. Just copied over the previous query to this class.
    NetworkByteSwap(){
        exists( MacroInvocation mi |
            this = mi.getExpr()
            and mi.getMacroName().regexpMatch("ntoh(s|ll?)")
        )
    }
}

from NetworkByteSwap n
select n, "Network byte swap."