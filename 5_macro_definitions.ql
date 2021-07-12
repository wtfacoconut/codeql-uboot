import cpp 

// Eventually I guess this will be the "source" later in the lab.
from Macro m
where m.getName().regexpMatch("ntoh(s|ll?)")
select m