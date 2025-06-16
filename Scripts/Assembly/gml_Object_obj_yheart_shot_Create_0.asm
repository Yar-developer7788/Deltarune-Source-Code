.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.f
pushi.e 1
pop.v.i self.makeanim
pushi.e 8
push.v self.f
mul.v.i
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.big
pushi.e 1
pop.v.i self.damage
pushi.e 0
pop.v.i self.sucked
pushi.e 0
pop.v.i self.trail
pushi.e 0
pop.v.i self.trail_timer
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 697.upgrade
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i self.big
pushi.e 1965
pop.v.i self.sprite_index
pushi.e 9
pop.v.i self.hspeed
push.d -0.4
pop.v.d self.friction
push.d 0.5
pop.v.d self.image_alpha
push.d 0.1
pop.v.d self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_index
pushi.e 4
pop.v.i self.damage
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
pushi.e 1
pop.v.i 697.bigshotused

:[end]