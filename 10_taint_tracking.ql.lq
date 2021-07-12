/**
 * @kind path-problem
 */

import cpp
import semmle.code.cpp.dataflow.TaintTracking
import DataFlow::PathGraph

class NetworkBtyeSwap extends Expr {
    NetworkBtyeSwap(){
        exists( MacroInvocation mi |
        this = mi.getExpr()
        and mi.getMacroName().regexpMatch("ntoh(s|ll?)")
        )
    }
}

class Config extends TaintTracking::Configuration {
     Config () { this = "Config" }
     
     override predicate isSource(DataFlow::Node node) {
        node.asExpr() instanceof NetworkBtyeSwap
     }
     
     override predicate isSink(DataFlow::Node node) {
        exists( FunctionCall fc |
            fc.getTarget().getName().matches("memcpy")
            and node.asExpr() = fc.getArgument(2) // arg 2 is the length param for memcpy
            )
     }
}

from Config cfg, DataFlow::PathNode source, DataFlow::PathNode sink
where cfg.hasFlowPath(source, sink)
select sink, source, sink, "Network byte swap flows to memcpy"