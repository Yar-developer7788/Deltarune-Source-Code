.localvar 2 arguments

:[0]
push.v self.image_angle
pushi.e 90
cmp.i.v GT
bf [2]

:[1]
push.v self.image_angle
pushi.e 270
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.image_angle
pushi.e 180
sub.i.v
pop.v.v self.image_angle

:[5]
push.v self.bufferstate
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.i 8421504
pop.v.i self.image_blend
pushi.e 1
pop.v.i self.bufferstate
push.v self.speed
pop.v.v self.originalspeed
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.image_speed
b [16]

:[10]
push.v self.bufferstate
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
not.b
b [13]

:[12]
push.e 0

:[13]
bf [16]

:[14]
push.i 16777215
pop.v.i self.image_blend
push.v self.originalspeed
pop.v.v self.speed
pushi.e 0
pop.v.i self.bufferstate
pushi.e 1929
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_speed
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.damage
call.i gml_Script_scr_bullet_heal(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[16]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.fadeaway
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.v self.timer
pushi.e 90
cmp.i.v GTE
b [19]

:[18]
push.e 0

:[19]
bf [22]

:[20]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
push.v self.slowdown
pushi.e 1
cmp.i.v EQ
bf [end]

:[23]
push.v self.speed
pushi.e 2
cmp.i.v GT
bf [end]

:[24]
push.v self.speed
push.d 0.2
sub.d.v
pop.v.v self.speed

:[end]