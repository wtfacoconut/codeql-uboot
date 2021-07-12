
import cpp

from MacroInvocation me
where me.getMacroName().regexpMatch("ntoh(s|ll?)")
select me.getExpr()
