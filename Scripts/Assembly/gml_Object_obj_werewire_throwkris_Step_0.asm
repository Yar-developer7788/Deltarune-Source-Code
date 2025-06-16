.localvar 2 arguments

:[0]
push.v self.throwcon
pushi.e 1
cmp.i.v EQ
bf [13]

:[1]
push.v self.throwready
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.angle
push.v self.anglespeed
add.v.v
pop.v.v self.angle

:[3]
push.v self.angle
pushi.e 42
cmp.i.v GTE
bf [5]

:[4]
pushi.e -2
pop.v.i self.anglespeed

:[5]
push.v self.angle
pushi.e -2
cmp.i.v LTE
bf [7]

:[6]
pushi.e 2
pop.v.i self.anglespeed

:[7]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [11]

:[8]
pushi.e 1
pop.v.i self.activatethrow
pushi.e 64
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]

:[11]
push.v self.activatethrow
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.i self.throwready
pushi.e 0
pop.v.i self.activatethrow
pushi.e 0
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 1451
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.angledraw
pushi.e 2
pop.v.i self.throwcon
pushi.e 158
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 479
conv.i.v
push.v self.ky
push.v self.kx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kris
push.v self.mypower
push.v self.kris
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.mypower
push.v self.kris
pushi.e -9
pop.v.v [stacktop]self.mypower
pushi.e 2
push.v self.kris
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.kris
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.angle
push.v self.kris
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.angle
push.v self.kris
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.krisgrav
push.v self.kris
pushi.e -9
pop.v.v [stacktop]self.gravity

:[13]
push.v self.throwcon
pushi.e 2
cmp.i.v EQ
bf [16]

:[14]
push.v self.image_index
pushi.e 5
cmp.i.v GTE
bf [16]

:[15]
pushi.e 0
pop.v.i self.image_speed

:[16]
push.v self.angledraw
pushi.e 1
cmp.i.v EQ
bf [end]

:[17]
push.v self.angle
push.v self.mypower
call.i lengthdir_x(argc=2)
pop.v.v self.lx
push.v self.angle
push.v self.mypower
call.i lengthdir_y(argc=2)
pop.v.v self.ly
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
pushi.e 42
cmp.i.v LT
bf [end]

:[19]
push.v self.krisgrav
push.v self.krisgrav
push.v self.i
mul.v.v
add.v.v
pop.v.v self.krisyadd
push.v self.i
pushi.e 0
cmp.i.v GT
bf [21]

:[20]
push.i 170549
setowner.e
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.krisyoff
push.v self.krisyadd
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.krisyoff
b [22]

:[21]
push.i 170549
setowner.e
push.v self.krisyadd
pushi.e -1
pushi.e 0
pop.v.v [array]self.krisyoff

:[22]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [18]

:[end]