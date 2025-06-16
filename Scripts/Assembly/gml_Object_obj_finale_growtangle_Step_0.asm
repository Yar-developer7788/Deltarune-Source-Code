.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.growth
push.v self.timer
push.v self.maxtimer
pushi.e 5
mul.i.v
cmp.v.v LT
bf [2]

:[1]
push.v self.growcon
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.growth

:[5]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.growcon
pushi.e 3
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.growth

:[10]
push.v self.growth
pushi.e 1
cmp.i.v EQ
bf [end]

:[11]
push.v self.growcon
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v self.timer
push.v self.timeincrease
add.v.v
pop.v.v self.timer

:[13]
push.v self.timeincrease
push.d 0.025
add.d.v
pop.v.v self.timeincrease
push.v self.growcon
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.v self.timer
pushi.e 1
sub.i.v
pop.v.v self.timer

:[15]
push.v self.maxxscale
push.v self.timer
push.v self.maxtimer
div.v.v
mul.v.v
pop.v.v self.image_xscale
push.v self.maxyscale
push.v self.timer
push.v self.maxtimer
div.v.v
mul.v.v
pop.v.v self.image_yscale
pushi.e 180
pushi.e 180
push.v self.timer
push.v self.maxtimer
div.v.v
mul.v.i
add.v.i
push.v self.target_angle
add.v.v
pop.v.v self.image_angle
push.d 0.5
push.v self.timer
push.v self.maxtimer
div.v.v
push.d 0.5
mul.d.v
add.v.d
pushi.e 1
conv.i.v
call.i min(argc=2)
pop.v.v self.image_alpha
pushi.e 352
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.sprite_index
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_xscale
push.v self.maxxscale
pushi.e 2
conv.i.d
div.d.v
div.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.maxyscale
pushi.e 2
conv.i.d
div.d.v
div.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.image_angle
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.depth
pushi.e 3
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.growcon
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.timer
push.v self.maxtimer
cmp.v.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.v self.image_xscale
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v 872.sprite_index
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.i 16777215
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
push.e 1
sub.i.v
pop.i.v [stacktop]self.depth
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_alpha
b [21]

:[20]
push.v self.image_blend
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
pushi.e 1
push.v self.timer
push.v self.maxtimer
pushi.e 5
mul.i.v
div.v.v
sub.v.i
push.d 0.5
mul.d.v
push.d 0.1
add.d.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_alpha

:[21]
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.timer
push.v self.maxtimer
pushi.e 5
mul.i.v
cmp.v.v GTE
bf [23]

:[22]
push.v self.growcon
pushi.e 1
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 2
pop.v.i self.growcon
push.v self.target_angle
pop.v.v self.image_angle

:[26]
push.v self.growcon
pushi.e 3
cmp.i.v EQ
bf [28]

:[27]
push.v self.timer
push.v self.maxtimer
cmp.v.v LTE
b [29]

:[28]
push.e 0

:[29]
bf [end]

:[30]
pushi.e 0
pop.v.i global.turntimer
call.i instance_destroy(argc=0)
popz.v

:[end]