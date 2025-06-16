.localvar 2 arguments
.localvar 11034 __prop 2885
.localvar 11035 __bind 2886
.localvar 11036 __val 2887
.localvar 11038 __backinfo 2888
.localvar 11041 __res 2889

:[0]
b [3]

> gml_Script___background_set (locals=5, argc=3)
:[1]
push.v arg.argument0
pop.v.v local.__prop
push.v arg.argument1
pop.v.v local.__bind
push.v arg.argument2
pop.v.v local.__val
pushloc.v local.__bind
call.i gml_Script___background_get_element(argc=1)
pop.v.v local.__backinfo
pushloc.v local.__backinfo
pushloc.v local.__val
pushloc.v local.__bind
pushloc.v local.__prop
call.i gml_Script___background_set_internal(argc=4)
popz.v
pushloc.v local.__backinfo
pushloc.v local.__bind
pushloc.v local.__prop
call.i gml_Script___background_get_internal(argc=3)
pop.v.v local.__res
pushloc.v local.__res
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script___background_set
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.__background_set
popz.v

:[end]