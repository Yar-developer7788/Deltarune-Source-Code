.localvar 2 arguments

:[0]
push.v self.explosiontype
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_xscale
pushi.e 4
cmp.i.v LT
bf [3]

:[2]
push.v self.image_xscale
push.d 0.1
add.d.v
pop.v.v self.image_xscale

:[3]
push.v self.explosiontype
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
push.v self.image_xscale
pushi.e 2
cmp.i.v LT
bf [6]

:[5]
push.v self.image_xscale
push.d 0.05
add.d.v
pop.v.v self.image_xscale

:[6]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 150
cmp.i.v GT
bf [8]

:[7]
pushi.e 0
pop.v.i self.active

:[8]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [12]

:[9]
push.v self.image_alpha
push.d 0.1
cmp.d.v GT
bf [11]

:[10]
push.v self.image_alpha
push.d 0.7
mul.d.v
pop.v.v self.image_alpha
b [12]

:[11]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[12]
push.v self.friction
push.d 0.025
sub.d.v
pop.v.v self.friction
pushi.e 8
conv.i.v
pushi.e -8
conv.i.v
push.v self.speed
call.i clamp(argc=3)
pop.v.v self.speed

:[end]