.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [9]

:[1]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.timer
pushi.e 40
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [5]

:[5]
push.v self.timer
pushi.e 40
cmp.i.v EQ
bf [9]

:[6]
pushi.e 617
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
push.i 236805
setowner.e
pushi.e 1989
conv.i.v
pushi.e 697
pushi.e 4
pop.v.v [array]self.partsprite
push.i 233521
setowner.e
push.v self.chestoriginx
pushi.e 697
pushi.e 4
pop.v.v [array]self.partx
push.i 231357
setowner.e
push.v self.chestoriginy
pushi.e 697
pushi.e 4
pop.v.v [array]self.party
pushi.e 609
conv.i.v
push.v 697.y
pushi.e 80
add.i.v
push.v 697.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 613
conv.i.v
push.v 697.y
pushi.e 80
add.i.v
push.v 697.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shard
pushi.e 135
push.v self.shard
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 613
conv.i.v
push.v 697.y
pushi.e 80
add.i.v
push.v 697.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shard
pushi.e 1
push.v self.shard
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 170
push.v self.shard
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 613
conv.i.v
push.v 697.y
pushi.e 80
add.i.v
push.v 697.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shard
pushi.e 2
push.v self.shard
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 205
push.v self.shard
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 613
conv.i.v
push.v 697.y
pushi.e 80
add.i.v
push.v 697.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shard
pushi.e 3
push.v self.shard
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 240
push.v self.shard
pushi.e -9
pop.v.i [stacktop]self.direction

:[9]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[10]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [18]

:[11]
pushi.e 613
pushenv [13]

:[12]
pushi.e 6
pop.v.i self.speed
push.v self.direction
pushi.e 180
add.i.v
pop.v.v self.direction
pushi.e 0
pop.v.i self.friction
pushi.e 0
pop.v.i self.image_alpha
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[13]
popenv [12]
pushi.e 614
pushenv [15]

:[14]
pushi.e 1
pop.v.i self.con

:[15]
popenv [14]
pushi.e 615
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]

:[18]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [end]

:[19]
push.i 236805
setowner.e
pushi.e 1981
conv.i.v
pushi.e 697
pushi.e 4
pop.v.v [array]self.partsprite
pushi.e 3322
conv.i.v
pushi.e 697
pushi.e 5
pop.v.v [array]self.partsprite
call.i instance_destroy(argc=0)
popz.v

:[end]