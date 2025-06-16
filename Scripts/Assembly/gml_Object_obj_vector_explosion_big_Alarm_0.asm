.localvar 2 arguments

:[0]
pushi.e 777
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 777.dead
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
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

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]