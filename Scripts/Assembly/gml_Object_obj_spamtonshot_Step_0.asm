.localvar 2 arguments

:[0]
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage

:[2]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 1
pop.v.i self.dontexplode
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[5]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 280
add.i.v
cmp.v.v GT
bf [7]

:[6]
push.v 631.depth
pushi.e 100
add.i.v
pop.v.v self.depth
b [8]

:[7]
push.v 631.depth
pushi.e 2
add.i.v
pop.v.v self.depth

:[8]
b [12]

:[9]
pushi.e 603
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[10]
push.v 603.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
b [12]

:[11]
push.v 631.depth
pushi.e 2
add.i.v
pop.v.v self.depth

:[12]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [18]

:[13]
push.v self.siner
pushi.e 1
push.v self.f
mul.v.i
add.v.v
pop.v.v self.siner
push.d 0.5
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
push.v self.f
mul.v.v
add.v.d
pop.v.v self.image_xscale
push.d 0.5
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
push.v self.f
mul.v.v
add.v.d
pop.v.v self.image_yscale
push.v self.siner
pushi.e 30
cmp.i.v GTE
bf [15]

:[14]
push.v self.dontexplode
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1
pop.v.i self.con

:[18]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[19]
push.v self.image_xscale
push.d 0.05
push.v self.f
mul.v.d
sub.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.05
push.v self.f
mul.v.d
sub.v.v
pop.v.v self.image_yscale
push.v self.image_xscale
pushi.e 0
cmp.i.v LTE
bf [21]

:[20]
push.v self.image_yscale
pushi.e 0
cmp.i.v LTE
b [22]

:[21]
push.e 0

:[22]
bf [end]

:[23]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.uniformangleoff
pushi.e -1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.uniformanglespeed
pushi.e 20
pop.v.i self.shotamount
pushi.e 0
pop.v.i self.off
pushi.e 0
pop.v.i self.i

:[24]
push.v self.i
push.v self.shotamount
cmp.v.v LT
bf [33]

:[25]
push.i 168880
setowner.e
pushi.e 593
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shot
push.v self.off
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
push.i 233343
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.i 133654
setowner.e
push.i 65535
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 1
pop.v.i self.off
b [28]

:[27]
pushi.e 0
pop.v.i self.off

:[28]
push.i 133626
setowner.e
pushi.e 1
push.v self.f
mul.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.v [stacktop]self.speed
push.i 133627
setowner.e
push.d -0.05
push.v self.f
mul.v.d
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.v [stacktop]self.friction
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
push.i 233399
setowner.e
push.v self.uniformanglespeed
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.v [stacktop]self.angle_speed

:[30]
push.v self.mode
pushi.e 5
cmp.i.v EQ
bf [32]

:[31]
pushi.e -2
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.v [stacktop]self.angle_speed

:[32]
push.i 133650
setowner.e
push.d 1.5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.i 133651
setowner.e
push.d 1.5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 133642
setowner.e
pushi.e 1994
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [24]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[end]