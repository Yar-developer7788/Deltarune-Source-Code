.localvar 2 arguments

:[0]
push.v self.times
pushi.e 1
add.i.v
pop.v.v self.times
pushi.e 366
conv.i.v
push.v self.y
pushi.e 30
add.i.v
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 30
add.i.v
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.i 68097
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.times
pushi.e 2
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]