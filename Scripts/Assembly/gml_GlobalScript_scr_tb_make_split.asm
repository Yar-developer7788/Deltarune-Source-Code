.localvar 2 arguments
.localvar 107 i 3187
.localvar 11587 _bul 3188

:[0]
b [8]

> gml_Script_scr_tb_make_split (locals=2, argc=5)
:[1]
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
push.v arg.argument3
cmp.v.v LT
bf [7]

:[3]
pushi.e 1
conv.b.v
push.v arg.argument4
push.v arg.argument2
push.v arg.argument1
pushloc.v local.i
push.v arg.argument3
div.v.v
pushi.e 360
mul.i.v
add.v.v
push.v arg.argument0
call.i gml_Script_scr_tb_make(argc=5)
pop.v.v local._bul
pushloc.v local._bul
pushi.e -9
pushenv [6]

:[4]
pushloc.v local.i
push.v arg.argument3
div.v.v
pushi.e 360
mul.i.v
pop.v.v self.offsetAngle
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.b self.eatMe

:[6]
popenv [4]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [2]

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_tb_make_split
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_tb_make_split
popz.v

:[end]