.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.image_index
pushi.e 17
cmp.i.v GT
bf [3]

:[2]
push.v self.image_index
push.d 0.4
sub.d.v
pop.v.v self.image_index
b [4]

:[3]
pushi.e 1
pop.v.i self.con

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1729
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e -8
pop.v.i self.hspeed
push.d 0.5
pop.v.d self.friction
push.d -1.5
pop.v.d self.gravity
pushi.e 482
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 6
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.spare
push.v self.depth
pushi.e 1
add.i.v
push.v self.spare
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.x
pushi.e 6
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 8
add.i.v
pop.v.v self.y

:[7]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]