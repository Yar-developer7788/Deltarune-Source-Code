.localvar 2 arguments
.localvar 10271 b 6493

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
pushi.e 1
pop.v.i self.init
push.v self.crushedObj
pushi.e 1
cmp.i.v NEQ
bf [6]

:[2]
push.v self.crushedObj
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 15
conv.i.v
b [5]

:[4]
pushi.e 0
conv.i.v

:[5]
pop.v.v self.offsetCap

:[6]
push.v self.vbounce
pushi.e 1
cmp.i.v EQ
bf [11]

:[7]
push.v self.y
push.v self.bottomy
cmp.v.v GT
bf [9]

:[8]
push.v self.bottomy
pushi.e 1
sub.i.v
pop.v.v self.y
push.v self.vspeed
call.i abs(argc=1)
neg.v
pop.v.v self.vspeed

:[9]
push.v self.y
push.v self.topy
cmp.v.v LT
bf [11]

:[10]
push.v self.topy
pushi.e 1
add.i.v
pop.v.v self.y
push.v self.vspeed
call.i abs(argc=1)
pop.v.v self.vspeed

:[11]
push.v self.siner
push.d 0.4
add.d.v
pop.v.v self.siner
push.v self.xstart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 60
mul.i.v
add.v.v
pop.v.v self.x
push.v self.shoottimer
push.e 1
add.i.v
pop.v.v self.shoottimer
push.v self.shoottimer
pushi.e 54
cmp.i.v GTE
bf [end]

:[12]
pushi.e 0
pop.v.i local.b
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [16]

:[13]
pushi.e 361
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.radialshot
push.v self.radialshot
pushi.e -9
pushenv [15]

:[14]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v

:[15]
popenv [14]
pushi.e 1377
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 631.y
pushi.e 10
add.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.radialshot
pushi.e -9
push.v [stacktop]self.y
push.v self.radialshot
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.radialshot
pushi.e -9
push.v [stacktop]self.direction
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 255
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.active
push.d 3.5
push.v self.radialshot
pushi.e -9
pop.v.d [stacktop]self.speed
push.d -0.33
pushloc.v local.b
add.v.d
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.friction
push.v self.depth
pushi.e 1
sub.i.v
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.target
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 0
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.grazed
pushi.e 6
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.element
pushi.e 0
pop.v.i self.shoottimer
push.v local.b
push.d 0.07
add.d.v
pop.v.v local.b
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [13]

:[16]
popz.i

:[end]