.localvar 2 arguments
.localvar 107 i 3248

:[0]
b [5]

> gml_Script_scr_tb_make_crescent (locals=1, argc=6)
:[1]
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
push.v arg.argument5
cmp.v.v LT
bf [4]

:[3]
pushi.e 1
conv.b.v
push.v arg.argument4
push.v arg.argument3
push.v arg.argument1
pushloc.v local.i
push.v arg.argument2
mul.v.v
add.v.v
push.v arg.argument0
call.i gml_Script_scr_tb_make(argc=5)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_tb_make_crescent
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_tb_make_crescent
popz.v

:[end]