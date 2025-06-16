.localvar 2 arguments

:[0]
push.v self.throwcon
pushi.e 1
cmp.i.v EQ
bf [29]

:[1]
push.v 574.aimact
pushi.e 0
cmp.i.v EQ
bf [9]

:[2]
push.v self.throwready
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.angle
push.v self.anglespeed
add.v.v
pop.v.v self.angle

:[4]
push.v self.angle
pushi.e 42
cmp.i.v GTE
bf [6]

:[5]
pushi.e -2
pop.v.i self.anglespeed

:[6]
push.v self.angle
pushi.e -2
cmp.i.v LTE
bf [8]

:[7]
pushi.e 2
pop.v.i self.anglespeed

:[8]
b [19]

:[9]
call.i gml_Script_up_h(argc=0)
conv.v.b
bf [11]

:[10]
push.v self.angle
pushi.e 42
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.v self.angle
pushi.e 2
add.i.v
pop.v.v self.angle

:[14]
call.i gml_Script_down_h(argc=0)
conv.v.b
bf [16]

:[15]
push.v self.angle
pushi.e -2
cmp.i.v GT
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
push.v self.angle
pushi.e 2
sub.i.v
pop.v.v self.angle

:[19]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [23]

:[20]
pushi.e 1
pop.v.i self.activatethrow
pushi.e 64
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]

:[23]
push.v self.activatethrow
pushi.e 1
cmp.i.v EQ
bf [29]

:[24]
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
push.v self.throwXcon
pushi.e 3
cmp.i.v NEQ
bf [26]

:[25]
pushi.e 570
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
b [27]

:[26]
pushi.e 571
conv.i.v
push.v self.ky
pushi.e 20
sub.i.v
push.v self.kx
pushi.e 20
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ralsei
push.v self.mypower
push.v self.ralsei
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.mypower
push.v self.ralsei
pushi.e -9
pop.v.v [stacktop]self.mypower
pushi.e 2
push.v self.ralsei
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.ralsei
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.angle
push.v self.ralsei
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.angle
push.v self.ralsei
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.krisgrav
push.v self.ralsei
pushi.e -9
pop.v.v [stacktop]self.gravity

:[27]
push.v self.throwXcon
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 2
pop.v.i self.throwXcon

:[29]
push.v self.throwcon
pushi.e 2
cmp.i.v EQ
bf [32]

:[30]
push.v self.image_index
pushi.e 5
cmp.i.v GTE
bf [32]

:[31]
pushi.e 0
pop.v.i self.image_speed

:[32]
push.v self.throwXcon
pushi.e 3
cmp.i.v EQ
bf [34]

:[33]
pushi.e 569
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [35]

:[34]
push.e 0

:[35]
bf [49]

:[36]
pushi.e 372
pushenv [38]

:[37]
pushi.e 1
pop.v.i self.visible

:[38]
popenv [37]
pushi.e 373
pushenv [40]

:[39]
pushi.e 1
pop.v.i self.visible

:[40]
popenv [39]
pushi.e 568
pushenv [42]

:[41]
call.i instance_destroy(argc=0)
popz.v

:[42]
popenv [41]
pushi.e 570
pushenv [44]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[44]
popenv [43]
pushi.e 571
pushenv [46]

:[45]
call.i instance_destroy(argc=0)
popz.v

:[46]
popenv [45]
pushi.e 569
pushenv [48]

:[47]
call.i instance_destroy(argc=0)
popz.v

:[48]
popenv [47]
pushi.e 5
pop.v.i self.throwXcon

:[49]
push.v self.throwXcon
pushi.e 5
cmp.i.v EQ
bf [51]

:[50]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
pushi.e 35
pop.v.i 574.actcon
call.i instance_destroy(argc=0)
popz.v

:[54]
push.v self.angledraw
pushi.e 1
cmp.i.v EQ
bf [end]

:[55]
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

:[56]
push.v self.i
pushi.e 42
cmp.i.v LT
bf [end]

:[57]
push.v self.krisgrav
push.v self.krisgrav
push.v self.i
mul.v.v
add.v.v
pop.v.v self.krisyadd
push.v self.i
pushi.e 0
cmp.i.v GT
bf [59]

:[58]
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
b [60]

:[59]
push.i 170549
setowner.e
push.v self.krisyadd
pushi.e -1
pushi.e 0
pop.v.v [array]self.krisyoff

:[60]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [56]

:[end]