.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 5
cmp.i.v LTE
bf [2]

:[1]
push.v self.lerptimer
push.e 1
add.i.v
pop.v.v self.lerptimer
push.v self.lerptimer
pushi.e 5
conv.i.d
div.d.v
pushi.e 1
conv.i.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.lerptimer
pushi.e 5
conv.i.d
div.d.v
pushi.e 1
conv.i.v
push.v self.image_yscale
call.i lerp(argc=3)
pop.v.v self.image_yscale

:[2]
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.lerptimer

:[4]
push.v self.timer
pushi.e 5
cmp.i.v GTE
bf [6]

:[5]
push.v self.timer
pushi.e 8
cmp.i.v LTE
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self.lerptimer
push.e 1
add.i.v
pop.v.v self.lerptimer
push.v self.lerptimer
pushi.e 3
conv.i.d
div.d.v
push.d 0.5
conv.d.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.lerptimer
pushi.e 3
conv.i.d
div.d.v
pushi.e 2
conv.i.v
push.v self.image_yscale
call.i lerp(argc=3)
pop.v.v self.image_yscale

:[9]
push.v self.timer
pushi.e 8
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i self.lerptimer

:[11]
push.v self.timer
pushi.e 8
cmp.i.v GTE
bf [13]

:[12]
push.v self.timer
pushi.e 10
cmp.i.v LTE
b [14]

:[13]
push.e 0

:[14]
bf [18]

:[15]
push.v self.lerptimer
push.e 1
add.i.v
pop.v.v self.lerptimer
push.v self.lerptimer
pushi.e 2
cmp.i.v GTE
bf [17]

:[16]
pushi.e 2
pop.v.i self.lerptimer

:[17]
push.v self.lerptimer
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
conv.i.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.lerptimer
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
conv.i.v
push.v self.image_yscale
call.i lerp(argc=3)
pop.v.v self.image_yscale

:[18]
push.v self.xstart
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x
push.v self.timer
pushi.e 35
cmp.i.v GTE
bf [end]

:[19]
push.v self.vspeed
pushi.e 1
sub.i.v
pop.v.v self.vspeed
push.v self.image_yscale
push.d 0.1
add.d.v
pop.v.v self.image_yscale
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[end]