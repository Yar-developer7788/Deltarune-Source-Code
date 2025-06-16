.localvar 2 arguments

:[0]
b [9]

> gml_Script_scr_moveheart (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i global.inv
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [7]

:[5]
pushi.e 379
conv.i.v
push.v 777.y
pushi.e 120
sub.i.v
push.v 777.x
pushi.e 4
add.i.v
call.i gml_Script_instance_create(argc=3)
ret.v

:[6]
b [8]

:[7]
pushi.e 379
conv.i.v
push.v 372.y
pushi.e 40
add.i.v
push.v 372.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_scr_moveheart
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_moveheart
popz.v

:[end]