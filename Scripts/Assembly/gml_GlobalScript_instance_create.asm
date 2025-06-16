.localvar 2 arguments
.localvar 11149 myDepth 3010

:[0]
b [3]

> gml_Script_instance_create (locals=1, argc=3)
:[1]
push.v arg.argument2
call.i gml_Script_object_get_depth(argc=1)
pop.v.v local.myDepth
push.v arg.argument2
pushloc.v local.myDepth
push.v arg.argument1
push.v arg.argument0
call.i instance_create_depth(argc=4)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_instance_create
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.instance_create
popz.v

:[end]