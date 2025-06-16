.localvar 2 arguments

:[0]
b [2]

> gml_Script_c_pan_wait (locals=0, argc=3)
:[1]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_c_pan(argc=3)
popz.v
push.v arg.argument2
call.i gml_Script_c_wait(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_c_pan_wait
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_pan_wait
popz.v

:[end]