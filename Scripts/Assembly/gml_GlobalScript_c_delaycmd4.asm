.localvar 2 arguments

:[0]
b [2]

> gml_Script_c_delaycmd4 (locals=0, argc=6)
:[1]
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.s "delaycmd"@59
conv.s.v
call.i gml_Script_c_cmd_x(argc=7)
popz.v
exit.i

:[2]
push.i [function]gml_Script_c_delaycmd4
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_delaycmd4
popz.v

:[end]