.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 5
cmp.i.v GT
bf [2]

:[1]
pushi.e 240
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.spawned

:[5]
push.v self.spawned
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
push.v self.spawntimer
push.e 1
add.i.v
pop.v.v self.spawntimer
push.v self.spawntimer
pushi.e 60
cmp.i.v EQ
bf [end]

:[7]
pushi.e 136
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.chest
call.i instance_destroy(argc=0)
popz.v

:[end]