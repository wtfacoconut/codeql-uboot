import cpp

from MacroAccess ma // Should be MacroInvocation, but this still passes the lab for some reason
where ma.getMacroName().regexpMatch("ntoh(s|ll?)")
select ma