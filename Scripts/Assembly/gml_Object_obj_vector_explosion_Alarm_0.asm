.localvar 2 arguments

:[0]
push.v 777.dead
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i 777.dead
pushi.e 809
conv.i.v
pushi.e 240
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]