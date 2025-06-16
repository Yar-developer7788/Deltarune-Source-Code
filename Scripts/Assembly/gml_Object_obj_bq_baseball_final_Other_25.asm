.localvar 2 arguments

:[0]
push.v self.hit
pushi.e -1
cmp.i.v EQ
bf [4]

:[1]
push.v self.image_xscale
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
push.v self.image_xscale
push.d 0.1
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.1
add.d.v
pop.v.v self.image_yscale

:[3]
push.v self.xstart
pushi.e 5
sub.i.v
pushi.e 10
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v self.x
push.v self.ystart
pushi.e 5
sub.i.v
pushi.e 10
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v self.y

:[4]
push.v self.hit
pushi.e 1
cmp.i.v NEQ
bf [6]

:[5]
push.v self.image_angle
pushi.e 3
add.i.v
pop.v.v self.image_angle

:[6]
push.v self.hit
pushi.e 1
cmp.i.v EQ
bf [38]

:[7]
push.v self.hit_timer
pushi.e 1
add.i.v
pop.v.v self.hit_timer
push.v self.hit_timer
pushi.e 1
cmp.i.v EQ
bf [15]

:[8]
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [14]

:[9]
pushi.e 818
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
push.v self.x
pushi.e 20
sub.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fakesplash
push.d -0.5
push.v self.fakesplash
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e 2171
push.v self.fakesplash
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.hit_direction
pushi.e -1
cmp.i.v EQ
bf [11]

:[10]
pushi.e -1
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.fakesplash
pushi.e -9
pop.v.v [stacktop]self.hspeed

:[11]
push.v self.hit_direction
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.fakesplash
pushi.e -9
pop.v.v [stacktop]self.hspeed

:[13]
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.fakesplash
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [9]

:[14]
popz.i
push.v self.x
pop.v.v self.xbase
push.v self.y
pop.v.v self.ybase

:[15]
push.v self.hit_timer
pushi.e 0
cmp.i.v GT
bf [17]

:[16]
push.v self.hit_timer
pushi.e 40
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.v self.xbase
pushi.e 40
conv.i.d
push.v self.hit_timer
div.v.d
add.v.v
pushi.e 80
conv.i.d
push.v self.hit_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v self.x
push.v self.ybase
pushi.e 40
conv.i.d
push.v self.hit_timer
div.v.d
add.v.v
pushi.e 80
conv.i.d
push.v self.hit_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v self.y
push.v 777.x
pop.v.v self.player_basex
push.v 777.y
pop.v.v self.player_basey

:[20]
push.v self.hit_timer
pushi.e 120
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [22]

:[21]
push.v self.hit_timer
pushi.e 160
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.v self.player_shake_timer
push.e 1
add.i.v
pop.v.v self.player_shake_timer
push.v self.player_basex
pushi.e 40
conv.i.d
push.v self.player_shake_timer
div.v.d
add.v.v
pushi.e 80
conv.i.d
push.v self.player_shake_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v 777.x
push.v self.player_basey
pushi.e 40
conv.i.d
push.v self.player_shake_timer
div.v.d
add.v.v
pushi.e 80
conv.i.d
push.v self.player_shake_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v 777.y

:[25]
push.v self.hit_timer
pushi.e 160
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [27]

:[26]
pushi.e 0
pop.v.i self.player_shake_timer

:[27]
push.v self.hit_timer
pushi.e 240
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [29]

:[28]
push.v self.hit_timer
pushi.e 280
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
push.v self.player_shake_timer
push.e 1
add.i.v
pop.v.v self.player_shake_timer
push.v self.player_basex
pushi.e 40
conv.i.d
push.v self.player_shake_timer
div.v.d
add.v.v
pushi.e 80
conv.i.d
push.v self.player_shake_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v 777.x
push.v self.player_basey
pushi.e 40
conv.i.d
push.v self.player_shake_timer
div.v.d
add.v.v
pushi.e 80
conv.i.d
push.v self.player_shake_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v 777.y

:[32]
push.v self.hit_timer
pushi.e 280
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [34]

:[33]
pushi.e 826
conv.i.v
push.v self.y
pushi.e 96
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[34]
push.v self.hit_timer
pushi.e 320
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [36]

:[35]
pushi.e -64
conv.i.d
push.v self.f
div.v.d
pop.v.v self.vspeed

:[36]
push.v self.y
pushi.e -850
cmp.i.v LT
bf [38]

:[37]
call.i instance_destroy(argc=0)
popz.v
pushi.e 792
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[38]
push.v self.y
pushi.e 20
cmp.i.v GT
bf [41]

:[39]
pushi.e 823
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [41]

:[40]
push.v self.hit
pushi.e 1
cmp.i.v NEQ
b [42]

:[41]
push.e 0

:[42]
bf [end]

:[43]
pushi.e 823
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]