.localvar 2 arguments

:[0]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e 1
pop.v.i self.init
pushi.e 0
pop.v.i self.fncon
pushi.e 0
pop.v.i self.siner
push.v self.altpath
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
pushi.e -270
pop.v.i self.timer
pushi.e 375
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.visible

:[4]
popenv [3]
pushi.e 1526
conv.i.v
push.v 375.y
push.v 375.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.fn
push.v 375.depth
push.v self.fn
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.fn
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
pop.v.i self.fncon

:[5]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.altpath
pushi.e 1
cmp.i.v EQ
bf [39]

:[6]
push.v self.fncon
pushi.e 0
cmp.i.v EQ
bf [9]

:[7]
push.v self.fn
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.d 0.25
add.d.v
pop.i.v [stacktop]self.image_index
push.v self.fn
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 8
cmp.i.v GTE
bf [9]

:[8]
pushi.e 0
pop.v.i self.fntimer
push.d 0.5
pop.v.d self.fncon
pushi.e 90
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i gml_Script_mus_volume(argc=3)
popz.v

:[9]
push.v self.fncon
push.d 0.5
cmp.d.v EQ
bf [16]

:[10]
push.v self.fntimer
push.e 1
add.i.v
pop.v.v self.fntimer
push.v self.fntimer
pushi.e 120
cmp.i.v GTE
bf [16]

:[11]
push.v self.fn
pushi.e -9
pushenv [13]

:[12]
call.i gml_Script_scr_oflash(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 1527
push.v self.fn
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.5
push.v self.fn
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.d 0.8
pop.v.d self.fncon
pushi.e 0
pop.v.i self.fntimer
pushi.e 0
pop.v.i self.amplitude
pushi.e 485
pushenv [15]

:[14]
pushi.e 0
pop.v.i self.visible

:[15]
popenv [14]
pushi.e 1851
conv.i.v
push.v 485.y
push.v 485.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.fb
push.v 485.depth
push.v self.fb
pushi.e -9
pop.v.v [stacktop]self.depth

:[16]
push.v self.fncon
push.d 0.8
cmp.d.v EQ
bf [19]

:[17]
push.v self.fntimer
push.e 1
add.i.v
pop.v.v self.fntimer
push.v self.fntimer
pushi.e 30
cmp.i.v GTE
bf [19]

:[18]
pushi.e 0
pop.v.i self.fntimer
pushi.e 1
pop.v.i self.fncon

:[19]
push.v self.fncon
pushi.e 1
cmp.i.v EQ
bt [21]

:[20]
push.v self.fncon
pushi.e 2
cmp.i.v EQ
b [22]

:[21]
push.e 1

:[22]
bf [34]

:[23]
push.v self.amplitude
pushi.e 1
cmp.i.v LT
bf [25]

:[24]
push.v self.amplitude
push.d 0.03
add.d.v
pop.v.v self.amplitude

:[25]
push.v self.fn
pushi.e -9
push.v [stacktop]self.y
push.v self.fn
pushi.e -9
push.v [stacktop]self.ystart
pushi.e 70
sub.i.v
cmp.v.v GT
bf [27]

:[26]
push.v self.fn
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.amplitude
sub.v.v
pop.i.v [stacktop]self.y
push.v self.fn
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.amplitude
push.d 2.94
mul.d.v
add.v.v
pop.i.v [stacktop]self.x

:[27]
push.v self.fn
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.timer
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.amplitude
mul.v.v
add.v.v
pop.i.v [stacktop]self.x
push.v self.fn
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.timer
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
push.v self.amplitude
mul.v.v
add.v.v
pop.i.v [stacktop]self.y
push.v self.timer
pushi.e 4
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
push.v self.timer
pushi.e 70
cmp.i.v LT
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 40
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.dustsnd
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
push.v self.dustsnd
call.i gml_Script_snd_volume(argc=3)
popz.v
push.d 0.5
push.d 0.3
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.dustsnd
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 353
conv.i.v
push.v self.fn
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
pushi.e 10
add.i.v
push.v self.fn
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dust
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 1
add.i.v
push.v self.dust
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e 180
conv.i.v
pushi.e 0
conv.i.v
call.i random_range(argc=2)
push.v self.dust
pushi.e -9
pop.v.v [stacktop]self.direction
push.d 0.2
push.d 0.3
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.dust
pushi.e -9
pop.v.v [stacktop]self.gravity
pushi.e 110
conv.i.v
pushi.e 70
conv.i.v
call.i random_range(argc=2)
push.v self.dust
pushi.e -9
pop.v.v [stacktop]self.gravity_direction
pushi.e 1
push.v self.dust
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.dust
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2439
push.v self.dust
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.5
push.v self.dust
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 3
push.v self.dust
pushi.e -9
pop.v.i [stacktop]self.image_alpha

:[32]
push.v self.timer
pushi.e 210
cmp.i.v GTE
bf [34]

:[33]
pushi.e 1526
push.v self.fn
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.fn
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.fn
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.fn
pushi.e -9
pop.v.i [stacktop]self.gravity
pushi.e 3
pop.v.i self.fncon

:[34]
push.v self.fncon
pushi.e 3
cmp.i.v EQ
bf [39]

:[35]
push.v self.fn
pushi.e -9
push.v [stacktop]self.y
push.v self.ystart
pushi.e 6
sub.i.v
cmp.v.v GTE
bf [39]

:[36]
push.v self.ystart
push.v self.fn
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 1535
push.v self.fn
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.fn
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.fn
pushi.e -9
pop.v.i [stacktop]self.gravity
push.v self.fn
pushi.e -9
pushenv [38]

:[37]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[38]
popenv [37]
pushi.e 4
pop.v.i self.fncon

:[39]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [41]

:[40]
push.v self.bgalpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
push.i 16711680
conv.i.v
push.i 16711680
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.v self.yy
pushi.e 500
add.i.v
push.v self.xx
pushi.e 700
add.i.v
push.v self.yy
pushi.e 10
sub.i.v
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle_colour(argc=9)
popz.v

:[41]
push.v self.bgalpha
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.timer
pushi.e 6
mul.i.v
push.v self.snowspeed
push.d 1.5
div.d.v
pushi.e 2225
conv.i.v
call.i gml_Script_draw_background_tiled_ext(argc=7)
popz.v
push.v self.bgalpha
pushi.e 2
mul.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.timer
pushi.e 8
mul.i.v
push.v self.snowspeed
pushi.e 2225
conv.i.v
call.i gml_Script_draw_background_tiled_ext(argc=7)
popz.v
push.v self.timer
pushi.e 10
cmp.i.v LTE
bf [43]

:[42]
push.v self.timer
pushi.e 0
cmp.i.v GTE
b [44]

:[43]
push.e 0

:[44]
bf [47]

:[45]
push.v self.bgalpha
push.d 0.5
cmp.d.v LT
bf [47]

:[46]
push.v self.bgalpha
push.d 0.05
add.d.v
pop.v.v self.bgalpha

:[47]
push.v self.timer
pushi.e 0
cmp.i.v GTE
bf [49]

:[48]
push.v self.snowspeed
pushi.e 20
push.v self.timer
pushi.e 5
conv.i.d
div.d.v
add.v.i
add.v.v
pop.v.v self.snowspeed

:[49]
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e 253
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[51]
push.v self.timer
pushi.e 20
cmp.i.v GTE
bf [53]

:[52]
push.v self.timer
pushi.e 75
push.v self.altpath
pushi.e 30
mul.i.v
add.v.i
cmp.v.v LTE
b [54]

:[53]
push.e 0

:[54]
bf [60]

:[55]
push.v self.stimer
push.e 1
add.i.v
pop.v.v self.stimer
push.i 169864
setowner.e
pushi.e 386
conv.i.v
push.v self.yy
pushi.e 560
add.i.v
push.v self.xx
pushi.e 455
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.snowflake
pushi.e 386
conv.i.v
push.v self.yy
pushi.e 600
add.i.v
push.v self.xx
pushi.e 500
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.snowflake
pushi.e 386
conv.i.v
push.v self.yy
pushi.e 520
add.i.v
push.v self.xx
pushi.e 545
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.snowflake
pushi.e 0
pop.v.i self.i

:[56]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [58]

:[57]
push.i 133628
setowner.e
pushi.e -2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.snowflake
pushi.e -9
pop.v.i [stacktop]self.gravity
push.i 133624
setowner.e
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.snowflake
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.i 231492
setowner.e
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.snowflake
pushi.e -9
pop.v.v [stacktop]self.siner
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [56]

:[58]
push.v self.stimer
pushi.e 8
cmp.i.v GTE
bf [60]

:[59]
pushi.e 0
pop.v.i self.stimer

:[60]
push.v self.timer
pushi.e 70
cmp.i.v EQ
bf [62]

:[61]
push.v self.altpath
pushi.e 1
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
pushi.e 700
push.v self.fb
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.fb
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 22
sub.i.v
pop.i.v [stacktop]self.x
push.v self.fb
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 48
sub.i.v
pop.i.v [stacktop]self.y

:[65]
push.v self.timer
pushi.e 95
push.v self.altpath
pushi.e 30
mul.i.v
add.v.i
cmp.v.v EQ
bf [68]

:[66]
push.v self.damage
pushi.e 0
cmp.i.v GT
bf [68]

:[67]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [89]

:[70]
pushi.e 0
pop.v.i self.i

:[71]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [89]

:[72]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monster
conv.v.b
bf [88]

:[73]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [88]

:[74]
push.i 231593
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hittarget
push.i 231504
setowner.e
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.i [stacktop]self.fatal
push.v self.altpath
pushi.e 0
cmp.i.v EQ
bf [76]

:[75]
push.v self.damage
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.v
push.v self.i
call.i gml_Script_scr_damage_enemy(argc=2)
popz.v
b [77]

:[76]
push.i 231593
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hittarget
pushi.e 873
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstery
pushi.e 20
add.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.hittarget
pushi.e 20
mul.i.v
sub.v.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dm
push.v self.damage
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.v
push.v self.dm
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 6
push.v self.dm
pushi.e -9
pop.v.i [stacktop]self.type

:[77]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v GT
bf [79]

:[78]
push.v self.altpath
pushi.e 0
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [84]

:[81]
push.i 231504
setowner.e
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.i [stacktop]self.fatal
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [83]

:[82]
call.i gml_Script_scr_oflash(argc=0)
pop.v.v self.__of

:[83]
popenv [82]

:[84]
push.v self.altpath
conv.v.b
bf [88]

:[85]
push.v self.fb
pushi.e -9
pushenv [87]

:[86]
call.i gml_Script_scr_oflash(argc=0)
popz.v

:[87]
popenv [86]

:[88]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [71]

:[89]
push.v self.timer
pushi.e 90
push.v self.altpath
pushi.e 30
mul.i.v
add.v.i
cmp.v.v GTE
bf [95]

:[90]
push.v self.altpath
pushi.e 0
cmp.i.v EQ
bf [93]

:[91]
push.v self.bgalpha
pushi.e 0
cmp.i.v GT
bf [93]

:[92]
push.v self.bgalpha
push.d 0.02
sub.d.v
pop.v.v self.bgalpha

:[93]
push.v self.altpath
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
push.v self.bgalpha
push.d 0.005
sub.d.v
pop.v.v self.bgalpha

:[95]
push.v self.timer
pushi.e 120
push.v self.altpath
pushi.e 150
mul.i.v
add.v.i
cmp.v.v EQ
bf [end]

:[96]
push.v self.altpath
conv.v.b
bf [100]

:[97]
pushi.e 485
pushenv [99]

:[98]
pushi.e 1
pop.v.i self.sidebcon

:[99]
popenv [98]
push.v self.fn
pop.v.v 485.fn
push.v self.fb
pop.v.v 485.fb

:[100]
call.i instance_destroy(argc=0)
popz.v

:[end]