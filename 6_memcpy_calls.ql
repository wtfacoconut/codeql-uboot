import cpp

from FunctionCall fc
where fc.getTarget().getName() = "memcpy" //getTarget return type is Function
select fc