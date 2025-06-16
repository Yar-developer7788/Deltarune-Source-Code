.localvar 2 arguments

:[0]
b [4]

> gml_Script_c_instant (locals=0, argc=1)
:[1]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [3]

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
push.s "instant"@9759
conv.s.v
pushi.e 0
conv.i.v
pushi.e 898
conv.i.v
call.i instance_find(argc=2)
push.s "var"@9781
conv.s.v
call.i gml_Script_c_cmd_x(argc=7)
popz.v

:[3]
exit.i

:[4]
push.i [function]gml_Script_c_instant
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_instant
popz.v

:[end]