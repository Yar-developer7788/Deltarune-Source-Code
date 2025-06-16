.localvar 2 arguments

:[0]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v other.object_index
pushi.e 419
cmp.i.v EQ
bt [7]

:[3]
push.v other.object_index
push.v self.object_index
cmp.v.v EQ
bf [5]

:[4]
push.v other.direction
pushi.e 0
cmp.i.v NEQ
b [6]

:[5]
push.e 0

:[6]
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
exit.i

:[10]
push.v self.direction
pushi.e 0
cmp.i.v EQ
bt [12]

:[11]
push.v other.object_index
pushi.e 414
cmp.i.v EQ
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.spawnVirus
pushi.e 1
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.speed
b [end]

:[15]
push.v other.object_index
pushi.e 1242
cmp.i.v NEQ
bt [17]

:[16]
push.v self.direction
push.v other.direction
call.i angle_difference(argc=2)
pushi.e 90
cmp.i.v GT
conv.b.v
call.i abs(argc=1)
conv.v.b
b [18]

:[17]
push.e 1

:[18]
bf [end]

:[19]
push.v self.spawning
pushi.e 1
cmp.b.v EQ
bf [21]

:[20]
pushi.e 0
pop.v.b self.spawning
pushi.e 2658
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index

:[21]
pushi.e 1
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.active
pushi.e 1
pop.v.i self.spawnVirus
pushi.e 1
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.infection
push.v other.object_index
pushi.e 421
cmp.i.v NEQ
bf [23]

:[22]
push.v other.x
pop.v.v self.targetx
push.v other.y
pop.v.v self.targety
push.v other.sprite_index
pop.v.v self.targetsprite
push.v other.image_index
pop.v.v self.targetimage
b [24]

:[23]
push.d 0.5
conv.d.v
push.v other.x
push.v self.x
call.i lerp(argc=3)
pop.v.v self.targetx
push.d 0.5
conv.d.v
push.v other.y
push.v self.y
call.i lerp(argc=3)
pop.v.v self.targety
push.i 16777215
pop.v.i self.poisoncolor

:[24]
call.i @@Other@@(argc=0)
call.i instance_destroy(argc=1)
popz.v

:[end]