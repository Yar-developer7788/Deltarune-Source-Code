.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.cont
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.d 0.5
pop.v.d self.image_speed
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [3]

:[2]
pushi.e 2
pop.v.i self.cont

:[3]
push.v self.cont
pushi.e 2
cmp.i.v EQ
bf [end]

:[4]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 2
pop.v.i self.multiplier
pushi.e 142
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 267
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.explosion
pushi.e 3
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [7]

:[6]
pushi.e 262
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
push.v self.i
pushi.e 45
mul.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 1
push.v self.multiplier
mul.v.i
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.speed
push.d -0.08
push.v self.multiplier
mul.v.d
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.friction
push.v self.bullet
pushi.e -9
push.v [stacktop]self.direction
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 1
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.explosiontype
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]