.localvar 2 arguments
.localvar 25708 _box 12842
.localvar 51 _targetx 12845
.localvar 25710 _hearthurt 12846

:[0]
pushi.e 639
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushi.e 639
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[2]
push.v self.intro
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
exit.i

:[4]
push.v self.formtimer
push.e 1
add.i.v
pop.v.v self.formtimer
push.v self.grazed
pushi.e 1
cmp.i.v EQ
bf [7]

:[5]
push.v self.grazetimer
pushi.e 1
add.i.v
pop.v.v self.grazetimer
push.v self.grazetimer
pushi.e 30
cmp.i.v GTE
bf [7]

:[6]
pushi.e 0
pop.v.i self.grazetimer
pushi.e 0
pop.v.i self.grazed

:[7]
push.v self.state
pushi.e 2
cmp.i.v LT
bf [100]

:[8]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e -1
pop.v.i self.stepdir

:[10]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.v self.formtimer
pushi.e 25
cmp.i.v GTE
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v self.steptimer
push.d 0.05
add.d.v
pop.v.v self.steptimer

:[15]
push.v self.steptimer
push.d 3.141592653589793
cmp.d.v GTE
bf [25]

:[16]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
push.v self.formtimer
pushi.e 25
cmp.i.v LT
b [19]

:[18]
push.e 0

:[19]
bf [20]

:[20]
push.v self.steptimer
push.d 3.141592653589793
sub.d.v
pop.v.v self.steptimer
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [22]

:[21]
pushi.e 193
conv.i.v
b [23]

:[22]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)

:[23]
pop.v.v self.d
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakex
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakey
pushi.e 179
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
pop.v.i self.stepdir

:[25]
push.v self.state
pushi.e 11
cmp.i.v EQ
bf [27]

:[26]
push.v self.formtimer
pushi.e 65
cmp.i.v GTE
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
b [31]

:[30]
push.v self.ystart
push.v self.steptimer
call.i sin(argc=1)
pushi.e 40
mul.i.v
sub.v.v
pop.v.v self.y

:[31]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
push.v self.formtimer
pushi.e 25
cmp.i.v LT
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
b [37]

:[36]
push.v self.x
push.d 1.6
push.v self.stepdir
mul.v.d
add.v.v
pop.v.v self.x

:[37]
push.v self.destroyable
conv.v.b
bf [40]

:[38]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
push.v self.x
push.v 872.x
pushi.e 140
add.i.v
cmp.v.v GT
b [41]

:[40]
push.e 0

:[41]
bt [47]

:[42]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [45]

:[43]
push.v self.formtimer
pushi.e 30
cmp.i.v LT
bf [45]

:[44]
push.v self.x
push.v 872.x
pushi.e 140
add.i.v
cmp.v.v GT
b [46]

:[45]
push.e 0

:[46]
b [48]

:[47]
push.e 1

:[48]
bf [50]

:[49]
push.v self.x
pushi.e 4
push.v self.stepdir
mul.v.i
add.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.pushback

:[50]
push.v self.destroyable
conv.v.b
bf [52]

:[51]
pushi.e 608
pop.v.i local._box
push.v self.x
pushi.e 106
add.i.v
push.v 872.x
pushi.e 150
add.i.v
call.i min(argc=2)
pushloc.v local._box
pushi.e -9
pop.v.v [stacktop]self.suckx
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
push.v 872.x
pushi.e 100
add.i.v
pushi.e 520
conv.i.v
call.i gml_Script_scr_inverselerp(argc=3)
call.i clamp(argc=3)
pushi.e 60
mul.i.v
pushloc.v local._box
pushi.e -9
push.v [stacktop]self.timer
call.i gml_Script_scr_movetowards(argc=3)
pushloc.v local._box
pushi.e -9
pop.v.v [stacktop]self.timer
push.v self.y
pushi.e 129
add.i.v
pushloc.v local._box
pushi.e -9
pop.v.v [stacktop]self.upper_sucky
push.v self.y
pushi.e 159
add.i.v
pushloc.v local._box
pushi.e -9
pop.v.v [stacktop]self.lower_sucky

:[52]
push.v self.pushback
pushi.e 0
cmp.i.v GT
bf [56]

:[53]
push.v self.x
push.v self.pushback
push.d 0.6666666666666666
mul.d.v
add.v.v
pop.v.v self.x
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 520
add.i.v
cmp.v.v GT
bf [55]

:[54]
push.v self.pushback
push.e 1
sub.i.v
pop.v.v self.pushback
b [56]

:[55]
push.v self.pushback
push.e 1
sub.i.v
pop.v.v self.pushback

:[56]
push.v self.destroyable
conv.v.b
bf [58]

:[57]
push.v self.state
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bt [64]

:[60]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.v self.formtimer
pushi.e 30
cmp.i.v LT
b [63]

:[62]
push.e 0

:[63]
b [65]

:[64]
push.e 1

:[65]
bf [72]

:[66]
push.v self.inhalesfx
pushi.e 0
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1
pop.v.i self.inhalesfx
pushi.e 137
conv.i.v
call.i gml_Script_snd_loop(argc=1)
popz.v
push.d 0.1
conv.d.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 90
conv.i.v
pushi.e 1
conv.i.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_pitch_time(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d 0.75
conv.d.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 561
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wreck
push.v self.depth
pushi.e 1
sub.i.v
push.v self.wreck
pushi.e -9
pop.v.v [stacktop]self.depth

:[68]
push.v self.effecttimer
push.e 1
add.i.v
pop.v.v self.effecttimer
push.v self.effecttimer
pushi.e 6
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [72]

:[69]
pushi.e 0
pop.v.i self.i

:[70]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [72]

:[71]
pushi.e 753
conv.i.v
push.v self.y
push.v self.mouthy
add.v.v
push.v self.x
push.v self.mouthx
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 40
conv.i.v
call.i irandom(argc=1)
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pushi.e 120
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 12
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.lifetime
push.v self.depth
pushi.e 1
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.image_blend
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [70]

:[72]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [74]

:[73]
push.v self.x
push.v 872.x
push.v 872.sprite_width
push.d 2.5
div.d.v
sub.v.v
cmp.v.v LT
b [75]

:[74]
push.e 0

:[75]
bt [80]

:[76]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [78]

:[77]
push.v 631.x
push.v self.x
pushi.e 70
add.i.v
cmp.v.v GT
b [79]

:[78]
push.e 0

:[79]
b [81]

:[80]
push.e 1

:[81]
bf [83]

:[82]
pushi.e 10
pop.v.i self.state
pushi.e 0
pop.v.i self.formtimer
push.v 698.special
push.e 1
add.i.v
pop.v.v 698.special
pushi.e 641
conv.i.v
push.v 631.y
push.v 631.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fakeheart
b [99]

:[83]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [85]

:[84]
push.v self.formtimer
pushi.e 320
cmp.i.v GTE
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
push.v 698.special
push.e 1
add.i.v
pop.v.v 698.special
push.v self.state
push.e 1
add.i.v
pop.v.v self.state
pushi.e 45
pop.v.i self.formtimer
b [99]

:[88]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
push.v self.formtimer
pushi.e 45
cmp.i.v GTE
b [91]

:[90]
push.e 0

:[91]
bf [99]

:[92]
pushi.e 561
pushenv [94]

:[93]
pushi.e 1
pop.v.i self.image_index

:[94]
popenv [93]
pushi.e 640
pushenv [96]

:[95]
pushi.e 1
pop.v.i self.fade

:[96]
popenv [95]
push.v self.state
push.e 1
add.i.v
pop.v.v self.state
pushi.e 45
pop.v.i self.formtimer
push.v self.x
push.v 872.x
pushi.e 70
add.i.v
cmp.v.v GT
bf [98]

:[97]
pushi.e 2
pop.v.i 608.state

:[98]
pushi.e 4
pop.v.i self.image_index
pushi.e 1
pop.v.i self.image_angle
pushi.e 137
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 1
pop.v.i 608.stopthesucc

:[99]
b [184]

:[100]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [102]

:[101]
push.v self.formtimer
pushi.e 45
cmp.i.v GTE
b [103]

:[102]
push.e 0

:[103]
bf [105]

:[104]
push.v self.state
push.e 1
add.i.v
pop.v.v self.state
pushi.e 5
pop.v.i self.image_index
pushi.e 0
pop.v.i self.formtimer
push.d 3.141592653589793
push.v self.steptimer
sub.v.d
pop.v.v self.steptimer
pushi.e 0
pop.v.b 639.destroyable
pushi.e 360
pop.v.i global.turntimer
b [184]

:[105]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [126]

:[106]
push.v self.movecon
pushi.e 0
cmp.i.v EQ
bf [109]

:[107]
push.v self.movetimer
pushi.e 1
conv.i.d
push.v self.moveframes
div.v.d
add.v.v
pop.v.v self.movetimer
pushi.e 2
conv.i.v
push.v self.movetimer
pushi.e 25
conv.i.v
push.v self.image_angle
call.i gml_Script_lerp_ease_in(argc=4)
pop.v.v self.image_angle
push.v self.movetimer
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
pushi.e 0
pop.v.i self.movetimer
pushi.e 1
pop.v.i self.movecon

:[109]
push.v self.movecon
pushi.e 2
cmp.i.v EQ
bf [112]

:[110]
push.v self.timer3
push.e 1
add.i.v
pop.v.v self.timer3
push.v self.timer3
pushi.e 20
cmp.i.v GT
bf [112]

:[111]
push.v self.movetimer
pushi.e 1
conv.i.d
push.v self.moveframes
div.v.d
add.v.v
pop.v.v self.movetimer
pushi.e 2
conv.i.v
push.v self.movetimer
pushi.e -1
conv.i.v
push.v self.image_angle
call.i gml_Script_lerp_ease_in(argc=4)
pop.v.v self.image_angle
push.v self.movetimer
pushi.e -12
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.headoffset_x
push.v self.movetimer
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.headoffset_y

:[112]
push.v self.timer2
pushi.e 100
cmp.i.v LT
bf [114]

:[113]
push.v self.timer2
push.e 1
add.i.v
pop.v.v self.timer2

:[114]
push.v self.timer2
pushi.e 100
conv.i.d
div.d.v
call.i gml_Script_camerax(argc=0)
pushi.e 439
add.i.v
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x
push.v self.x
push.v 872.x
pushi.e 70
add.i.v
cmp.v.v GT
bf [116]

:[115]
pushi.e 2
pop.v.i 608.state
b [117]

:[116]
pushi.e 608
pop.v.i local._box
push.v self.x
pushi.e 106
add.i.v
push.v 872.x
pushi.e 150
add.i.v
call.i min(argc=2)
pushloc.v local._box
pushi.e -9
pop.v.v [stacktop]self.suckx
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
push.v 872.x
pushi.e 100
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 520
add.i.v
call.i gml_Script_scr_inverselerp(argc=3)
call.i clamp(argc=3)
pushi.e 60
mul.i.v
pushloc.v local._box
pushi.e -9
pop.v.v [stacktop]self.timer
push.v self.y
pushi.e 129
add.i.v
pushloc.v local._box
pushi.e -9
pop.v.v [stacktop]self.upper_sucky
push.v self.y
pushi.e 159
add.i.v
pushloc.v local._box
pushi.e -9
pop.v.v [stacktop]self.lower_sucky

:[117]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 438
add.i.v
cmp.v.v GT
bf [125]

:[118]
call.i gml_Script_camerax(argc=0)
pushi.e 438
add.i.v
pop.v.v self.x
pushi.e 2
pop.v.i self.movecon
push.v self.movecon
pushi.e 2
cmp.i.v EQ
bf [120]

:[119]
push.v self.movetimer
pushi.e 1
cmp.i.v EQ
b [121]

:[120]
push.e 0

:[121]
bf [125]

:[122]
call.i instance_destroy(argc=0)
popz.v
pushi.e 643
conv.i.v
push.v self.ystart
push.v self.steptimer
push.d 0.15
add.d.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
call.i abs(argc=1)
sub.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.aa
push.v self.aa
pushi.e -9
pushenv [124]

:[123]
push.i 170715
setowner.e
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.y_offset
sub.v.v
pushi.e 40
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.yspot
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.y_offset
sub.v.v
pushi.e 40
sub.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.yspot

:[124]
popenv [123]
pushi.e 300
pop.v.i global.turntimer

:[125]
b [184]

:[126]
push.v self.state
pushi.e 4
cmp.i.v EQ
bf [128]

:[127]
push.v self.formtimer
pushi.e 25
cmp.i.v GTE
b [129]

:[128]
push.e 0

:[129]
bf [131]

:[130]
pushi.e 0
pop.v.i self.formtimer
pushi.e 5
pop.v.i self.state
pushi.e 637
conv.i.v
push.v self.y
push.v self.mouthy
add.v.v
push.v self.x
push.v self.mouthx
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 5
pop.v.i self.image_index
b [184]

:[131]
push.v self.state
pushi.e 10
cmp.i.v EQ
bf [143]

:[132]
pushi.e 1
conv.i.v
pushi.e 10
conv.i.v
push.v self.fakeheart_speed
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.fakeheart_speed
push.v self.fakeheart
pushi.e -9
pushenv [136]

:[133]
push.v 638.x
push.v 638.mouthx
add.v.v
pushi.e 5
add.i.v
pop.v.v local._targetx
push.v self.x
pushloc.v local._targetx
pushi.e 10
sub.i.v
cmp.v.v GT
bf [135]

:[134]
push.v local._targetx
pushi.e 20
add.i.v
pop.v.v local._targetx

:[135]
push.v 638.fakeheart_speed
push.v 638.y
push.v 638.mouthy
add.v.v
pushloc.v local._targetx
call.i move_towards_point(argc=3)
popz.v

:[136]
popenv [133]
push.v 608.inhalespeed
push.d 0.01
add.d.v
pop.v.v 608.inhalespeed
push.v self.x
push.v self.x
push.v self.mouthx
add.v.v
pushi.e 10
add.i.v
cmp.v.v GT
bf [138]

:[137]
pushi.e 4
pop.v.i self.image_index
pushi.e 137
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v

:[138]
push.v self.formtimer
pushi.e 45
cmp.i.v GT
bf [142]

:[139]
pushi.e 0
push.v self.fakeheart
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.fakeheart
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 11
pop.v.i self.state
pushi.e 0
pop.v.i self.formtimer
pushi.e 4
pop.v.i self.image_index
pushi.e 1
pop.v.i self.hidemouthback
pushi.e 137
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 0
pop.v.i 608.image_alpha
pushi.e 0
pop.v.i 608.timer
pushi.e 1
push.v self.fakeheart
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 640
pushenv [141]

:[140]
pushi.e 1
pop.v.i self.fade

:[141]
popenv [140]

:[142]
b [184]

:[143]
push.v self.state
pushi.e 11
cmp.i.v EQ
bf [174]

:[144]
push.v self.formtimer
pushi.e 15
cmp.i.v LT
bf [146]

:[145]
exit.i

:[146]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 438
add.i.v
cmp.v.v LT
bf [148]

:[147]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[148]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 438
add.i.v
cmp.v.v GT
bf [150]

:[149]
push.v self.formtimer
pushi.e 65
cmp.i.v LT
b [151]

:[150]
push.e 0

:[151]
bf [153]

:[152]
pushi.e 65
pop.v.i self.formtimer

:[153]
push.v self.formtimer
pushi.e 5
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [156]

:[154]
push.v self.formtimer
pushi.e 30
cmp.i.v GTE
bf [156]

:[155]
push.v self.formtimer
pushi.e 65
cmp.i.v LTE
b [157]

:[156]
push.e 0

:[157]
bf [165]

:[158]
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v local._hearthurt
pushi.e 2
conv.i.v
push.d 1.4
conv.d.v
call.i random_range(argc=2)
pushloc.v local._hearthurt
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [160]

:[159]
pushi.e 193
conv.i.v
b [161]

:[160]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)

:[161]
pop.v.v self.d
pushi.e 1
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakex
pushi.e 1
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakey
push.v self.dmgcon
pushi.e 0
cmp.i.v EQ
bf [165]

:[162]
pushi.e 1
pop.v.i self.dmgcon
pushi.e -1
pop.v.i global.inv
pushi.e 697
pushenv [164]

:[163]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[164]
popenv [163]

:[165]
push.v self.formtimer
pushi.e 50
cmp.i.v EQ
bf [167]

:[166]
pushi.e 0
pop.v.i 872.timer
pushi.e 1
pop.v.i 872.growcon
pushi.e 1
pop.v.i 872.image_alpha

:[167]
push.v self.formtimer
pushi.e 65
cmp.i.v EQ
bf [169]

:[168]
pushi.e 0
pop.v.i 608.inhale
pushi.e 0
pop.v.i 608.inhalespeed
pushi.e 1
pop.v.i 608.image_alpha
pushi.e 0
pop.v.i 872.image_alpha

:[169]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 438
add.i.v
cmp.v.v GT
bf [173]

:[170]
push.v self.formtimer
pushi.e 50
cmp.i.v LT
bf [172]

:[171]
pushi.e 0
pop.v.i 872.timer
pushi.e 1
pop.v.i 872.growcon
pushi.e 1
pop.v.i 872.image_alpha

:[172]
pushi.e 0
pop.v.i self.formtimer
pushi.e 12
pop.v.i self.state
push.v self.x
push.v self.mouthx
add.v.v
push.v self.fakeheart
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.mouthy
add.v.v
push.v self.fakeheart
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 2
push.v self.fakeheart
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 5
pop.v.i self.image_index

:[173]
b [184]

:[174]
push.v self.state
pushi.e 12
cmp.i.v EQ
bf [184]

:[175]
pushi.e 561
pushenv [177]

:[176]
pushi.e 1
pop.v.i self.image_index

:[177]
popenv [176]
push.v self.movetimer
pushi.e 1
cmp.i.v LT
bf [179]

:[178]
push.v self.movetimer
pushi.e 1
conv.i.d
push.v self.moveframes
div.v.d
add.v.v
pop.v.v self.movetimer
push.v self.movetimer
pushi.e -12
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.headoffset_x
push.v self.movetimer
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.headoffset_y

:[179]
push.v self.formtimer
pushi.e 30
cmp.i.v GTE
bf [181]

:[180]
push.v self.movetimer
pushi.e 1
cmp.i.v GTE
b [182]

:[181]
push.e 0

:[182]
bf [184]

:[183]
pushi.e 2
pop.v.i self.state
pushi.e 0
pop.v.i self.formtimer
pushi.e 4
pop.v.i self.image_index
call.i instance_destroy(argc=0)
popz.v
pushi.e 643
conv.i.v
push.v self.ystart
push.v self.steptimer
push.d 0.15
add.d.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
call.i abs(argc=1)
sub.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[184]
push.v self.state
pushi.e 11
cmp.i.v GTE
bf [end]

:[185]
push.v self.steptimer
push.d 0.05
add.d.v
pop.v.v self.steptimer
push.v self.steptimer
push.d 3.141592653589793
cmp.d.v GTE
bf [190]

:[186]
push.v self.steptimer
push.d 3.141592653589793
sub.d.v
pop.v.v self.steptimer
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [188]

:[187]
pushi.e 193
conv.i.v
b [189]

:[188]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)

:[189]
pop.v.v self.d
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakex
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakey
pushi.e 179
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[190]
push.v self.ystart
push.v self.steptimer
call.i sin(argc=1)
pushi.e 40
mul.i.v
sub.v.v
pop.v.v self.y

:[end]