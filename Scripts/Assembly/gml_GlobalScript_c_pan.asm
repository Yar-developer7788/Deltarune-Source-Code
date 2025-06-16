.localvar 2 arguments

:[0]
b [2]

> gml_Script_c_pan (locals=0, argc=3)
:[1]
pushi.e 0
conv.i.v
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.s "pan"@9858
conv.s.v
call.i gml_Script_c_cmd(argc=5)
popz.v
exit.i

:[2]
push.i [function]gml_Script_c_pan
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_pan
popz.v

:[end]