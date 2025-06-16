.localvar 2 arguments

:[0]
push.v self.fallspeed
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 30
pop.v.i self.timer
push.v self.speed
pop.v.v self.fallspeed
push.v self.gravity
pop.v.v self.initialgravity
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
push.v self.image_angle
pushi.e 180
add.i.v
pop.v.v self.image_angle
push.v self.direction
pushi.e 180
add.i.v
pop.v.v self.direction
push.v self.x
pushi.e 20
sub.i.v
pop.v.v self.x
b [8]

:[5]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [8]

:[6]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [8]

:[7]
push.v self.fallspeed
pop.v.v self.speed
push.v self.initialgravity
neg.v
pop.v.v self.gravity

:[8]
push.v self.fallspeed
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
push.v self.y
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 30
sub.i.v
cmp.v.v GTE
b [11]

:[10]
push.e 0

:[11]
bf [end]

:[12]
pushi.e 142
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 459
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 2071
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 5
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
call.i instance_destroy(argc=0)
popz.v

:[end]