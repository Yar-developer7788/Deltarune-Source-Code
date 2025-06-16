.localvar 2 arguments
.localvar 27401 speedlines 14524

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.vspeed
pushi.e 8
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
push.v self.acc
push.d 0.1
add.d.v
pop.v.v self.acc
push.v self.vspeed
push.v self.acc
add.v.v
pop.v.v self.vspeed
push.v self.vspeed
pushi.e 24
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [6]

:[5]
pushi.e 1
pop.v.i self.state

:[6]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [9]

:[7]
push.v self.acc
push.d 0.1
sub.d.v
pop.v.v self.acc
push.v self.vspeed
push.v self.acc
add.v.v
pop.v.v self.vspeed
push.v self.vspeed
pushi.e 4
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
bf [9]

:[8]
pushi.e 2
pop.v.i self.state
pushi.e 4
pop.v.i self.vspeed

:[9]
push.v self.hit
pushi.e -1
cmp.i.v EQ
bf [13]

:[10]
push.v self.image_xscale
pushi.e 6
cmp.i.v LT
bf [12]

:[11]
push.v self.image_xscale
push.d 0.1
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.1
add.d.v
pop.v.v self.image_yscale

:[12]
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
pushi.e 1
conv.i.v
pushi.e 135
conv.i.v
push.v self.spin_speed
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.spin_speed

:[13]
push.v self.image_angle
push.v self.spin_speed
add.v.v
pop.v.v self.image_angle
push.v self.hit
pushi.e 1
cmp.i.v EQ
bf [55]

:[14]
pushi.e 10
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
push.v self.hit_timer
pushi.e 1
add.i.v
pop.v.v self.hit_timer
push.v self.hit_timer
pushi.e 1
cmp.i.v EQ
bf [22]

:[15]
pushi.e -999
pop.v.i self.reticletimer
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [21]

:[16]
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
bf [18]

:[17]
pushi.e -1
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.fakesplash
pushi.e -9
pop.v.v [stacktop]self.hspeed

:[18]
push.v self.hit_direction
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.fakesplash
pushi.e -9
pop.v.v [stacktop]self.hspeed

:[20]
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
bt [16]

:[21]
popz.i
push.v self.x
pop.v.v self.xbase
push.v self.y
pop.v.v self.ybase

:[22]
push.v self.hit_timer
pushi.e 90
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [24]

:[23]
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 0.7
conv.d.v
pushi.e 52
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[24]
push.v self.hit_timer
pushi.e 160
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [26]

:[25]
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 52
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[26]
push.v self.hit_timer
pushi.e 220
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [28]

:[27]
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 1.3
conv.d.v
pushi.e 52
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[28]
push.v self.hit_timer
pushi.e 0
cmp.i.v GT
bf [30]

:[29]
push.v self.hit_timer
pushi.e 40
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
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

:[33]
push.v self.hit_timer
pushi.e 90
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [35]

:[34]
push.v self.hit_timer
pushi.e 130
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
push.v self.player_shake_timer
push.e 1
add.i.v
pop.v.v self.player_shake_timer
push.v self.player_basex
pushi.e 20
conv.i.d
push.v self.player_shake_timer
div.v.d
add.v.v
pushi.e 40
conv.i.d
push.v self.player_shake_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v 777.x
push.v self.player_basey
pushi.e 20
conv.i.d
push.v self.player_shake_timer
div.v.d
add.v.v
pushi.e 40
conv.i.d
push.v self.player_shake_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v 777.y

:[38]
push.v self.hit_timer
pushi.e 130
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [40]

:[39]
pushi.e 0
pop.v.i self.player_shake_timer

:[40]
push.v self.hit_timer
pushi.e 160
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [42]

:[41]
push.v self.hit_timer
pushi.e 200
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
push.v self.player_shake_timer
push.e 1
add.i.v
pop.v.v self.player_shake_timer
push.v self.player_basex
pushi.e 20
conv.i.d
push.v self.player_shake_timer
div.v.d
add.v.v
pushi.e 40
conv.i.d
push.v self.player_shake_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v 777.x
push.v self.player_basey
pushi.e 20
conv.i.d
push.v self.player_shake_timer
div.v.d
add.v.v
pushi.e 40
conv.i.d
push.v self.player_shake_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v 777.y

:[45]
push.v self.hit_timer
pushi.e 220
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [49]

:[46]
pushi.e 819
conv.i.v
push.v self.y
pushi.e 91
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1310
pushenv [48]

:[47]
call.i instance_destroy(argc=0)
popz.v

:[48]
popenv [47]
pushi.e 1310
conv.i.v
push.v 777.y
pushi.e 120
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.speedlines
pushi.e 1
pushloc.v local.speedlines
pushi.e -9
pop.v.b [stacktop]self.offsety
pushi.e 1
pushloc.v local.speedlines
pushi.e -9
pop.v.b [stacktop]self.flashframe
push.v 819.depth
pushi.e 1
sub.i.v
pushloc.v local.speedlines
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 216
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[49]
push.v self.hit_timer
pushi.e 220
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [51]

:[50]
pushi.e -135
pop.v.i self.spin_speed
pushi.e -64
conv.i.d
push.v self.f
div.v.d
pop.v.v self.vspeed
b [53]

:[51]
push.v self.hit_timer
pushi.e 30
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [53]

:[52]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.spin_speed
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.spin_speed

:[53]
push.v self.y
pushi.e -850
cmp.i.v LT
bf [55]

:[54]
call.i instance_destroy(argc=0)
popz.v
pushi.e 792
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 287
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[55]
push.v self.y
pushi.e 20
cmp.i.v GT
bf [58]

:[56]
pushi.e 823
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [58]

:[57]
push.v self.hit
pushi.e 1
cmp.i.v NEQ
b [59]

:[58]
push.e 0

:[59]
bf [end]

:[60]
pushi.e 823
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]