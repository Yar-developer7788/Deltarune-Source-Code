.localvar 2 arguments
.localvar 11034 __prop 3055
.localvar 11101 __index 3056
.localvar 11036 __val 3057
.localvar 11041 __res 3058

:[0]
b [3]

> gml_Script___view_set (locals=4, argc=3)
:[1]
push.v arg.argument0
pop.v.v local.__prop
push.v arg.argument1
pop.v.v local.__index
push.v arg.argument2
pop.v.v local.__val
pushloc.v local.__val
pushloc.v local.__index
pushloc.v local.__prop
call.i gml_Script___view_set_internal(argc=3)
popz.v
pushloc.v local.__index
pushloc.v local.__prop
call.i gml_Script___view_get(argc=2)
pop.v.v local.__res
pushloc.v local.__res
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script___view_set
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.__view_set
popz.v

:[end]