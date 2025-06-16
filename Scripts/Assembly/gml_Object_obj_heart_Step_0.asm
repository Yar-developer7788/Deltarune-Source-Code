.localvar 2 arguments
.localvar 7017 a 12734

:[0]
pushi.e 0
pop.v.i self.wallcheck
pushi.e 0
pop.v.i self.press_l
pushi.e 0
pop.v.i self.press_r
pushi.e 0
pop.v.i self.press_d
pushi.e 0
pop.v.i self.press_u
pushi.e 0
pop.v.i self.bkx
pushi.e 0
pop.v.i self.bky
pushi.e 0
pop.v.i self.bkxy
pushi.e 2
pop.v.i self.jelly
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.press_l

:[2]
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [4]

:[3]
pushi.e 1
pop.v.i self.press_r

:[4]
call.i gml_Script_up_h(argc=0)
conv.v.b
bf [6]

:[5]
pushi.e 1
pop.v.i self.press_u

:[6]
call.i gml_Script_down_h(argc=0)
conv.v.b
bf [8]

:[7]
pushi.e 1
pop.v.i self.press_d

:[8]
pushi.e 0
pop.v.i self.px
pushi.e 0
pop.v.i self.py
push.v self.canmove
conv.v.b
bf [25]

:[9]
push.v self.press_r
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.wspeed
pop.v.v self.px

:[11]
push.v self.press_l
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v self.wspeed
neg.v
pop.v.v self.px

:[13]
push.v self.press_d
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.wspeed
pop.v.v self.py

:[15]
push.v self.press_u
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.wspeed
neg.v
pop.v.v self.py

:[17]
call.i gml_Script_button2_h(argc=0)
conv.v.b
bf [19]

:[18]
pushi.e -5
pushi.e 22
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [24]

:[21]
push.v self.disableslow
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
push.v self.px
push.d 0.5
mul.d.v
call.i ceil(argc=1)
pop.v.v self.px
push.v self.py
push.d 0.5
mul.d.v
call.i ceil(argc=1)
pop.v.v self.py

:[23]
b [25]

:[24]
pushi.e 0
pop.v.i self.disableslow

:[25]
push.v self.color
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
push.v self.remove_slow_z_buffer
push.d 0.5
add.d.v
pop.v.v self.remove_slow_z_buffer

:[27]
pushi.e 0
pop.v.i self.xmeet
pushi.e 0
pop.v.i self.ymeet
pushi.e 0
pop.v.i self.xymeet
pushi.e 358
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [29]

:[28]
pushi.e 1
pop.v.i self.xymeet

:[29]
pushi.e 358
conv.i.v
push.v self.y
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [60]

:[30]
pushi.e 358
conv.i.v
push.v self.y
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [46]

:[31]
push.v self.wspeed
pop.v.v self.g

:[32]
push.v self.g
pushi.e 0
cmp.i.v GT
bf [46]

:[33]
pushi.e 0
pop.v.i self.mvd
push.v self.press_d
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
pushi.e 358
conv.i.v
push.v self.y
push.v self.g
sub.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [36]

:[35]
push.e 0

:[36]
bf [39]

:[37]
push.v self.y
push.v self.g
sub.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.py
b [46]

:[38]
pushi.e 1
pop.v.i self.mvd

:[39]
push.v self.press_u
pushi.e 0
cmp.i.v EQ
bf [42]

:[40]
push.v self.mvd
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e 358
conv.i.v
push.v self.y
push.v self.g
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
push.v self.y
push.v self.g
add.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.py
b [46]

:[45]
push.v self.g
pushi.e 1
sub.i.v
pop.v.v self.g
b [32]

:[46]
pushi.e 1
pop.v.i self.xmeet
pushi.e 0
pop.v.i self.bkx
push.v self.px
pushi.e 0
cmp.i.v GT
bf [52]

:[47]
push.v self.px
pop.v.v self.i

:[48]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [52]

:[49]
pushi.e 358
conv.i.v
push.v self.y
push.v self.x
push.v self.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [51]

:[50]
push.v self.i
pop.v.v self.px
pushi.e 1
pop.v.i self.bkx
b [52]

:[51]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [48]

:[52]
push.v self.px
pushi.e 0
cmp.i.v LT
bf [58]

:[53]
push.v self.px
pop.v.v self.i

:[54]
push.v self.i
pushi.e 0
cmp.i.v LTE
bf [58]

:[55]
pushi.e 358
conv.i.v
push.v self.y
push.v self.x
push.v self.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [57]

:[56]
push.v self.i
pop.v.v self.px
pushi.e 1
pop.v.i self.bkx
b [58]

:[57]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [54]

:[58]
push.v self.bkx
pushi.e 0
cmp.i.v EQ
bf [60]

:[59]
pushi.e 0
pop.v.i self.px

:[60]
pushi.e 358
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [91]

:[61]
pushi.e 1
pop.v.i self.ymeet
pushi.e 0
pop.v.i self.bky
pushi.e 358
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [77]

:[62]
push.v self.wspeed
pop.v.v self.g

:[63]
push.v self.g
pushi.e 0
cmp.i.v GT
bf [77]

:[64]
pushi.e 0
pop.v.i self.mvd
push.v self.press_r
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
pushi.e 358
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.g
sub.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [67]

:[66]
push.e 0

:[67]
bf [70]

:[68]
push.v self.x
push.v self.g
sub.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.px
b [77]

:[69]
pushi.e 1
pop.v.i self.mvd

:[70]
push.v self.mvd
pushi.e 0
cmp.i.v EQ
bf [73]

:[71]
push.v self.press_l
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
pushi.e 358
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.g
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
push.v self.x
push.v self.g
add.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.px
b [77]

:[76]
push.v self.g
pushi.e 1
sub.i.v
pop.v.v self.g
b [63]

:[77]
push.v self.py
pushi.e 0
cmp.i.v GT
bf [83]

:[78]
push.v self.py
pop.v.v self.i

:[79]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [83]

:[80]
pushi.e 358
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [82]

:[81]
push.v self.i
pop.v.v self.py
pushi.e 1
pop.v.i self.bky
b [83]

:[82]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [79]

:[83]
push.v self.py
pushi.e 0
cmp.i.v LT
bf [89]

:[84]
push.v self.py
pop.v.v self.i

:[85]
push.v self.i
pushi.e 0
cmp.i.v LTE
bf [89]

:[86]
pushi.e 358
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [88]

:[87]
push.v self.i
pop.v.v self.py
pushi.e 1
pop.v.i self.bky
b [89]

:[88]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [85]

:[89]
push.v self.bky
pushi.e 0
cmp.i.v EQ
bf [91]

:[90]
pushi.e 0
pop.v.i self.py

:[91]
pushi.e 358
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [116]

:[92]
pushi.e 1
pop.v.i self.xymeet
pushi.e 0
pop.v.i self.bkxy
push.v self.px
pop.v.v self.i
push.v self.py
pop.v.v self.j

:[93]
push.v self.j
pushi.e 0
cmp.i.v NEQ
bt [95]

:[94]
push.v self.i
pushi.e 0
cmp.i.v NEQ
b [96]

:[95]
push.e 1

:[96]
bf [114]

:[97]
pushi.e 358
conv.i.v
push.v self.y
push.v self.j
add.v.v
push.v self.x
push.v self.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [99]

:[98]
push.v self.i
pop.v.v self.px
push.v self.j
pop.v.v self.py
pushi.e 1
pop.v.i self.bkxy
b [114]

:[99]
push.v self.j
call.i abs(argc=1)
pushi.e 1
cmp.i.v GTE
bf [105]

:[100]
push.v self.j
pushi.e 0
cmp.i.v GT
bf [102]

:[101]
push.v self.j
pushi.e 1
sub.i.v
pop.v.v self.j

:[102]
push.v self.j
pushi.e 0
cmp.i.v LT
bf [104]

:[103]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j

:[104]
b [106]

:[105]
pushi.e 0
pop.v.i self.j

:[106]
push.v self.i
call.i abs(argc=1)
pushi.e 1
cmp.i.v GTE
bf [112]

:[107]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [109]

:[108]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i

:[109]
push.v self.i
pushi.e 0
cmp.i.v LT
bf [111]

:[110]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i

:[111]
b [113]

:[112]
pushi.e 0
pop.v.i self.i

:[113]
b [93]

:[114]
push.v self.bkxy
pushi.e 0
cmp.i.v EQ
bf [116]

:[115]
pushi.e 0
pop.v.i self.px
pushi.e 0
pop.v.i self.py

:[116]
push.v self.x
push.v self.px
add.v.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 640
add.i.v
push.v self.sprite_width
sub.v.v
cmp.v.v GTE
bf [118]

:[117]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 640
add.i.v
push.v self.sprite_width
sub.v.v
push.v self.x
sub.v.v
pop.v.v self.px

:[118]
push.v self.x
push.v self.px
add.v.v
pushi.e 0
cmp.i.v LTE
bf [120]

:[119]
push.v self.x
neg.v
pop.v.v self.px

:[120]
push.v self.y
push.v self.py
add.v.v
pushi.e 0
cmp.i.v LTE
bf [122]

:[121]
push.v self.y
neg.v
pop.v.v self.py

:[122]
push.v self.y
push.v self.py
add.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
push.v self.sprite_height
sub.v.v
push.v self.boundaryup
add.v.v
cmp.v.v GTE
bf [124]

:[123]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
push.v self.sprite_height
sub.v.v
push.v self.y
sub.v.v
push.v self.boundaryup
add.v.v
pop.v.v self.py

:[124]
push.v self.x
push.v self.px
add.v.v
pop.v.v self.x
push.v self.y
push.v self.py
add.v.v
pop.v.v self.y
push.v self.dmgnoise
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
pushi.e 0
pop.v.i self.dmgnoise
pushi.e 171
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[126]
push.v global.inv
pushi.e 1
sub.i.v
pop.v.v global.inv
pushglb.v global.inv
pushi.e 0
cmp.i.v GT
bf [128]

:[127]
push.d 0.25
pop.v.d self.image_speed
b [129]

:[128]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[129]
push.v self.x
pushi.e 2
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pop.v.v global.heartx
push.v self.y
pushi.e 2
add.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pop.v.v global.hearty
push.v self.color
pushi.e 1
cmp.i.v EQ
bf [end]

:[130]
pushi.e 5
pop.v.i self.wspeed
push.v self.chargeshot_delay
pushi.e 0
cmp.i.v GT
bf [132]

:[131]
push.v self.chargeshot_delay
push.e 1
sub.i.v
pop.v.v self.chargeshot_delay

:[132]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bt [138]

:[133]
push.v self.z_hold
pushi.e 10
cmp.i.v GTE
bf [136]

:[134]
push.v self.z_hold
pushi.e 39
cmp.i.v LTE
bf [136]

:[135]
call.i gml_Script_button1_r(argc=0)
conv.v.b
b [137]

:[136]
push.e 0

:[137]
b [139]

:[138]
push.e 1

:[139]
bf [145]

:[140]
pushi.e 592
conv.i.v
call.i instance_number(argc=1)
pushi.e 3
cmp.i.v LT
bf [142]

:[141]
push.v self.chargeshot_delay
pushi.e 0
cmp.i.v EQ
b [143]

:[142]
push.e 0

:[143]
bf [145]

:[144]
pushi.e 592
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 132
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[145]
push.v self.z_hold
pushi.e 20
cmp.i.v EQ
bf [147]

:[146]
pushi.e 131
conv.i.v
call.i gml_Script_snd_loop(argc=1)
pop.v.v self.chargeshot_sound
push.d 0.1
conv.d.v
push.v self.chargeshot_sound
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.chargeshot_sound
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 20
conv.i.v
push.d 0.3
conv.d.v
push.v self.chargeshot_sound
call.i gml_Script_snd_volume(argc=3)
popz.v

:[147]
push.v self.z_hold
pushi.e 20
cmp.i.v GTE
bf [149]

:[148]
push.v self.z_hold
pushi.e 40
cmp.i.v LT
b [150]

:[149]
push.e 0

:[150]
bf [152]

:[151]
push.d 0.1
push.v self.z_hold
pushi.e 20
sub.i.v
pushi.e 20
conv.i.d
div.d.v
add.v.d
push.v self.chargeshot_sound
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[152]
push.v self.z_hold
pushi.e 40
cmp.i.v GTE
bf [154]

:[153]
pushi.e 2
pop.v.i self.image_index

:[154]
push.v self.z_charge
pushi.e 15
cmp.i.v LT
bf [156]

:[155]
pushi.e 0
pop.v.i self.chargeshotcount

:[156]
push.v self.z_hold
pushi.e 40
cmp.i.v GTE
bf [158]

:[157]
call.i gml_Script_button1_r(argc=0)
conv.v.b
b [159]

:[158]
push.e 0

:[159]
bf [181]

:[160]
push.v self.chargeshot_sound
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 136
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 592
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bigshot
pushi.e 1
push.v self.bigshot
pushi.e -9
pop.v.i [stacktop]self.big
pushi.e 1965
push.v self.bigshot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 4
push.v self.f
mul.v.i
push.v self.bigshot
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.d -0.2
push.v self.f
mul.v.d
push.v self.bigshot
pushi.e -9
pop.v.v [stacktop]self.friction
push.d 0.5
push.v self.bigshot
pushi.e -9
pop.v.d [stacktop]self.image_alpha
push.d 0.1
push.v self.bigshot
pushi.e -9
pop.v.d [stacktop]self.image_xscale
pushi.e 2
push.v self.bigshot
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.z_hold
pushi.e 5
pop.v.i self.chargeshot_delay
pushi.e 0
pop.v.i self.image_index
push.v self.chargeshotcount
push.e 1
add.i.v
pop.v.v self.chargeshotcount
push.v self.chargeshotcount
pushi.e 1
cmp.i.v GT
bf [164]

:[161]
pushi.e 697
pushenv [163]

:[162]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[163]
popenv [162]

:[164]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [166]

:[165]
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [167]

:[166]
push.e 0

:[167]
bf [169]

:[168]
pushi.e 1
pop.v.i 697.bigshotused

:[169]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [172]

:[170]
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [172]

:[171]
push.v 697.bigshotcount
pushi.e 0
cmp.i.v GT
b [173]

:[172]
push.e 0

:[173]
bf [181]

:[174]
pushi.e 10
push.v self.f
mul.v.i
push.v self.bigshot
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e 1
push.v self.bigshot
pushi.e -9
pop.v.i [stacktop]self.trail
push.v 697.bigshotcount
push.e 1
sub.i.v
pop.v.v 697.bigshotcount
push.v 697.bigshotcount
pushi.e 0
cmp.i.v EQ
bf [178]

:[175]
pushi.e 607
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 162
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 45
conv.i.v
call.i random(argc=1)
pop.v.v local.a
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [177]

:[176]
pushi.e 606
conv.i.v
push.v other.y
pushi.e 10
add.i.v
push.v other.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.part
pushloc.v local.a
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.part
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 2
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.part
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e 2
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.part
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 16
push.v self.part
pushi.e -9
pop.v.i [stacktop]self.speed
push.d 0.8
push.v self.part
pushi.e -9
pop.v.d [stacktop]self.friction
push.v local.a
pushi.e 45
add.i.v
pop.v.v local.a
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [176]

:[177]
popz.i
b [181]

:[178]
pushi.e 45
conv.i.v
call.i random(argc=1)
pop.v.v local.a
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [180]

:[179]
pushi.e 606
conv.i.v
push.v other.y
pushi.e 10
add.i.v
push.v other.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.part
pushloc.v local.a
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.part
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 8
push.v self.part
pushi.e -9
pop.v.i [stacktop]self.speed
push.d 0.8
push.v self.part
pushi.e -9
pop.v.d [stacktop]self.friction
push.v local.a
pushi.e 45
add.i.v
pop.v.v local.a
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [179]

:[180]
popz.i

:[181]
call.i gml_Script_button1_h(argc=0)
conv.v.b
bf [189]

:[182]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [185]

:[183]
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [185]

:[184]
push.v 697.bigshotcount
pushi.e 0
cmp.i.v GT
b [186]

:[185]
push.e 0

:[186]
bf [188]

:[187]
push.v self.z_hold_f
pushi.e 1
add.i.v
pop.v.v self.z_hold_f

:[188]
push.v self.z_hold_f
pushi.e 1
add.i.v
pop.v.v self.z_hold_f
b [190]

:[189]
pushi.e 0
pop.v.i self.z_hold_f
push.v self.chargeshot_sound
call.i gml_Script_snd_stop(argc=1)
popz.v

:[190]
push.v self.z_hold_f
pushi.e 2
mul.i.v
pop.v.v self.z_hold

:[end]