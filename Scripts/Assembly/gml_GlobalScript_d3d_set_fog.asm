.localvar 2 arguments

:[0]
b [2]

> gml_Script_d3d_set_fog (locals=0, argc=4)
:[1]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gpu_set_fog(argc=4)
popz.v
exit.i

:[2]
push.i [function]gml_Script_d3d_set_fog
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.d3d_set_fog
popz.v

:[end]