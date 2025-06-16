.localvar 2 arguments
.localvar 6482 xx 12671
.localvar 6483 yy 12672
.localvar 25650 brokencounter 12674
.localvar 25655 randomvspeed 12679
.localvar 107 i 12680

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [18]

:[1]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 3259
pop.v.i self.sprite_index

:[3]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 3261
pop.v.i self.sprite_index

:[5]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 3257
pop.v.i self.sprite_index

:[7]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 3260
pop.v.i self.sprite_index

:[9]
push.v self.first_time
conv.v.b
not.b
bf [11]

:[10]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[11]
push.v self.type
pushi.e 1
cmp.i.v GTE
bf [14]

:[12]
pushi.e 1
pop.v.i self.image_index
push.v self.hp
pushi.e 0
cmp.i.v LTE
bf [14]

:[13]
pushi.e 1
pop.v.i self.broken
pushi.e 2
pop.v.i self.image_index

:[14]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.depth
pushi.e 10
add.i.v
pop.v.v self.depth

:[16]
pushi.e 1
pop.v.i self.init
push.v self.first_time
conv.v.b
bf [18]

:[17]
pushi.e 1
pop.v.i self.image_alpha
push.v self.x
pop.v.v self.xstart
push.v 872.x
pop.v.v self.growtangle_x
call.i gml_Script_camerax(argc=0)
pushi.e 730
add.i.v
pop.v.v self.x

:[18]
push.v self.first_time
conv.v.b
bf [36]

:[19]
push.v self.intro_timer
pushi.e 0
cmp.i.v EQ
bf [23]

:[20]
push.v self.x
push.v self.smashspeed
sub.v.v
pop.v.v self.x
push.v self.smashspeed
push.d 0.5
add.d.v
pop.v.v self.smashspeed
push.v self.x
push.v self.xstart
cmp.v.v LT
bf [23]

:[21]
pushi.e 15
pop.v.i self.intro_timer
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
call.i gml_Script_scr_shakescreen(argc=0)
popz.v
pushi.e 236
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[23]
push.v self.intro_timer
pushi.e 0
cmp.i.v GT
bf [34]

:[24]
push.v self.intro_timer
push.e 1
sub.i.v
pop.v.v self.intro_timer
push.v self.intro_timer
pushi.e 0
cmp.i.v EQ
bf [30]

:[25]
pushi.e 0
pop.v.b self.first_time
push.v self.xstart
pop.v.v self.x
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [29]

:[26]
pushi.e -1
pop.v.i self.intro_timer
pushi.e 872
pushenv [28]

:[27]
push.v other.growtangle_x
pop.v.v self.x

:[28]
popenv [27]

:[29]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
b [34]

:[30]
push.v self.xstart
push.d 3.141592653589793
push.v self.intro_timer
pushi.e 15
conv.i.d
div.d.v
mul.v.d
call.i sin(argc=1)
pushi.e 20
mul.i.v
sub.v.v
pop.v.v self.x
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [34]

:[31]
pushi.e 872
pushenv [33]

:[32]
push.v other.growtangle_x
push.d 3.141592653589793
push.v other.intro_timer
pushi.e 15
conv.i.d
div.d.v
mul.v.d
call.i sin(argc=1)
pushi.e 20
mul.i.v
sub.v.v
pop.v.v self.x

:[33]
popenv [32]

:[34]
push.v self.first_time
conv.v.b
bf [36]

:[35]
exit.i

:[36]
push.v self.broken
pushi.e 1
cmp.i.v EQ
bf [39]

:[37]
push.v self.type
pushi.e 0
cmp.i.v NEQ
bf [39]

:[38]
push.v self.destroytarget
pushi.e 0
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [44]

:[41]
push.v self.targ
pushi.e -9
pushenv [43]

:[42]
call.i instance_destroy(argc=0)
popz.v

:[43]
popenv [42]
pushi.e 1
pop.v.i self.destroytarget

:[44]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [46]

:[45]
pushglb.v global.turntimer
pushi.e 21
cmp.i.v GT
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[49]
push.v self.explodetimer
pushi.e 0
cmp.i.v GT
bf [59]

:[50]
pushi.e 0
pop.v.i local.xx
pushi.e 0
pop.v.i local.yy
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
pushi.e 58
pop.v.i local.xx
pushi.e 32
pop.v.i local.yy

:[52]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [54]

:[53]
pushi.e 30
pop.v.i local.xx
pushi.e 64
pop.v.i local.yy

:[54]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [56]

:[55]
pushi.e 48
pop.v.i local.xx
pushi.e 102
pop.v.i local.yy

:[56]
push.v self.explodetimer
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
pushi.e 832
conv.i.v
push.v self.y
pushloc.v local.yy
add.v.v
pushi.e 25
sub.i.v
pushi.e 50
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushloc.v local.xx
add.v.v
pushi.e 25
sub.i.v
pushi.e 50
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.cres
push.v self.depth
pushi.e 100
sub.i.v
push.v self.cres
pushi.e -9
pop.v.v [stacktop]self.depth

:[58]
push.v self.explodetimer
push.e 1
sub.i.v
pop.v.v self.explodetimer

:[59]
pushi.e 0
pop.v.i local.brokencounter
pushi.e 629
pushenv [62]

:[60]
push.v self.broken
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.v local.brokencounter
push.e 1
add.i.v
pop.v.v local.brokencounter

:[62]
popenv [60]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
push.v self.broken
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [81]

:[66]
push.v self.timer
pushi.e 30
cmp.i.v EQ
bt [68]

:[67]
push.v self.laserinit
pushi.e 0
cmp.i.v EQ
b [69]

:[68]
push.e 1

:[69]
bf [71]

:[70]
pushloc.v local.brokencounter
pop.v.v self.brokenmod
pushi.e -10
push.v self.x
add.v.i
pushi.e 56
add.i.v
pop.v.v self.lasex
push.v self.y
pushi.e 32
add.i.v
pop.v.v self.lasey
push.v 631.y
pushi.e 10
add.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.lasey
push.v self.lasex
call.i point_direction(argc=4)
pop.v.v self.laserdir
pushi.e 1
pop.v.i self.laserinit

:[71]
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [73]

:[72]
push.v self.timer
pushi.e 3
mod.i.v
pushi.e 0
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [79]

:[75]
pushglb.v global.turntimer
pushi.e 21
cmp.i.v GT
bf [79]

:[76]
pushi.e 475
conv.i.v
push.v self.lasey
push.v self.lasex
call.i gml_Script_instance_create(argc=3)
pop.v.v self.laser
push.v self.laser
call.i gml_Script_scr_bullet_inherit(argc=1)
popz.v
push.v self.laserdir
push.v self.laser
pushi.e -9
pop.v.v [stacktop]self.my_angle
push.v self.brokenmod
pushi.e 2
cmp.i.v EQ
bf [78]

:[77]
push.v self.laserdir
push.v self.brokenmod
pushi.e 8
conv.i.v
pushi.e -8
conv.i.v
call.i random_range(argc=2)
mul.v.v
add.v.v
push.v self.laser
pushi.e -9
pop.v.v [stacktop]self.my_angle

:[78]
pushi.e 7
push.v self.laser
pushi.e -9
pop.v.i [stacktop]self.my_speed
pushi.e 0
push.v self.brokenmod
push.d 0.25
mul.d.v
add.v.i
push.v self.laser
pushi.e -9
pop.v.v [stacktop]self.my_accel
pushi.e 2
push.v self.laser
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.laser
pushi.e -9
pop.v.i [stacktop]self.my_angle_change
push.v self.target
push.v self.laser
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.laser
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 6
push.v self.laser
pushi.e -9
pop.v.i [stacktop]self.element
pushi.e 3
pop.v.i self.shootflashtimer

:[79]
push.v self.timer
pushi.e 50
cmp.i.v EQ
bf [81]

:[80]
pushi.e 0
push.v self.brokenmod
pushi.e 5
mul.i.v
add.v.i
pop.v.v self.timer

:[81]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [83]

:[82]
push.v self.broken
pushi.e 0
cmp.i.v EQ
b [84]

:[83]
push.e 0

:[84]
bf [101]

:[85]
push.v self.timer
pushi.e 70
cmp.i.v GTE
bf [87]

:[86]
push.v self.noseinit
pushi.e 0
cmp.i.v EQ
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
pushloc.v local.brokencounter
pop.v.v self.brokenmod
pushi.e 1
pop.v.i self.noseinit

:[90]
push.v self.timer
pushi.e 80
cmp.i.v GTE
bf [92]

:[91]
push.v self.timer
pushi.e 5
mod.i.v
pushi.e 0
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [99]

:[94]
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
pop.v.v local.randomvspeed
pushi.e 0
pop.v.i local.i

:[95]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [99]

:[96]
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
push.v self.bullet
call.i gml_Script_scr_bullet_inherit(argc=1)
popz.v
pushi.e 3258
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3275
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.mask_index
push.v self.bullet
call.i gml_Script_scr_darksize(argc=1)
popz.v
push.d 0.6
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.gravity
pushi.e 180
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.gravity_direction
push.d 0.4
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e -4
pushloc.v local.i
push.d 4.5
mul.d.v
add.v.i
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.v self.brokenmod
pushi.e 2
cmp.i.v EQ
bf [98]

:[97]
push.v self.bullet
pushi.e -9
dup.i 4
push.v [stacktop]self.vspeed
pushloc.v local.randomvspeed
add.v.v
pop.i.v [stacktop]self.vspeed

:[98]
pushi.e -3
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.target
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 6
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.element
pushi.e 3
pop.v.i self.shootflashtimer
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [95]

:[99]
push.v self.timer
pushi.e 90
cmp.i.v EQ
bf [101]

:[100]
pushi.e 26
push.v self.brokenmod
pushi.e 10
mul.i.v
add.v.i
pop.v.v self.timer

:[101]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [103]

:[102]
push.v self.broken
pushi.e 0
cmp.i.v EQ
b [104]

:[103]
push.e 0

:[104]
bf [121]

:[105]
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [107]

:[106]
push.v self.eyesinit
pushi.e 0
cmp.i.v EQ
b [108]

:[107]
push.e 0

:[108]
bf [110]

:[109]
pushi.e 1
pop.v.i self.eyesinit
pushloc.v local.brokencounter
pop.v.v self.brokenmod

:[110]
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [112]

:[111]
pushi.e 3
pop.v.i self.image_index

:[112]
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [114]

:[113]
push.v self.timer
pushi.e 6
mod.i.v
pushi.e 0
cmp.i.v EQ
b [115]

:[114]
push.e 0

:[115]
bf [119]

:[116]
pushi.e 369
conv.i.v
push.v self.y
pushi.e 98
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
pushi.e 3262
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.bullet
call.i gml_Script_scr_bullet_inherit(argc=1)
popz.v
pushi.e -7
conv.i.v
pushi.e -4
conv.i.v
call.i random_range(argc=2)
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e -2
conv.i.v
pushi.e 6
conv.i.v
call.i random_range(argc=2)
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.v 631.y
push.v 872.y
cmp.v.v GTE
bf [118]

:[117]
push.v self.bullet
pushi.e -9
dup.i 4
push.v [stacktop]self.vspeed
pushi.e 1
add.i.v
pop.i.v [stacktop]self.vspeed

:[118]
push.d -0.2
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v self.target
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 6
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.element
pushi.e 3
pop.v.i self.shootflashtimer

:[119]
push.v self.timer
pushi.e 42
cmp.i.v EQ
bf [121]

:[120]
pushi.e 1
pop.v.i self.image_index
pushi.e -40
push.v self.brokenmod
pushi.e 20
mul.i.v
add.v.i
pop.v.v self.timer

:[121]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [131]

:[122]
pushi.e 85
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [125]

:[123]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [125]

:[124]
pushi.e 1
pop.v.b self.broken

:[125]
pushi.e 73
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [128]

:[126]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [128]

:[127]
pushi.e 1
pop.v.b self.broken

:[128]
pushi.e 79
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [131]

:[129]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [131]

:[130]
pushi.e 1
pop.v.b self.broken

:[131]
push.v self.type
pushi.e 1
cmp.i.v EQ
bt [133]

:[132]
push.v self.type
pushi.e 2
cmp.i.v EQ
b [134]

:[133]
push.e 1

:[134]
bf [136]

:[135]
push.v self.broken
pushi.e 1
cmp.i.v EQ
b [137]

:[136]
push.e 0

:[137]
bf [139]

:[138]
pushi.e 2
pop.v.i self.image_index

:[139]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [141]

:[140]
push.v self.broken
pushi.e 1
cmp.i.v EQ
b [142]

:[141]
push.e 0

:[142]
bf [end]

:[143]
pushi.e 4
pop.v.i self.image_index

:[end]