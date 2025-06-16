.localvar 2 arguments

:[0]
b [2]

> gml_Script_c_delayfacing (locals=0, argc=2)
:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument1
push.s "facing"@341
conv.s.v
push.v arg.argument0
push.s "delaycmd"@59
conv.s.v
call.i gml_Script_c_cmd_x(argc=7)
popz.v
exit.i

:[2]
push.i [function]gml_Script_c_delayfacing
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_delayfacing
popz.v

:[end]