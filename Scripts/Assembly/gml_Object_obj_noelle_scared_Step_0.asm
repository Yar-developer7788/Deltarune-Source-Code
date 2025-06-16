.localvar 2 arguments

:[0]
push.v self.graceperiod
push.e 1
sub.i.v
pop.v.v self.graceperiod
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.graceperiod
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [25]

:[4]
push.v self.jumppuzzle
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.hastarget

:[6]
push.v self.autocomplete
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2723
pop.v.i self.sprite_index
pushi.e 3
pop.v.i self.image_index
b [9]

:[8]
pushi.e 723
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[9]
pushi.e 1
pop.v.i self.jumping
push.v self.jumpstyle
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e -30
pop.v.i self.jumpyspeed
b [12]

:[11]
pushi.e -20
pop.v.i self.jumpyspeed

:[12]
pushi.e -200
pop.v.i self.maxjumpy
pushi.e 0
pop.v.i self.xadjust
pushi.e 0
pop.v.i self.yadjust
pushi.e 0
pop.v.i self.step

:[13]
push.v self.xadjust
pushi.e 0
cmp.i.v EQ
bf [24]

:[14]
push.v self.step
push.e 1
add.i.v
pop.v.v self.step
pushi.e 0
pop.v.i self.yadjust
pushi.e 0
pop.v.i self.met

:[15]
push.v self.yadjust
pushi.e 0
cmp.i.v EQ
bf [19]

:[16]
pushi.e 0
pop.v.i self.mety
push.v self.mety
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1
pop.v.i self.yadjust

:[18]
b [15]

:[19]
push.v self.met
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i self.xadjust

:[21]
push.v self.step
pushi.e 10
cmp.i.v GTE
bf [23]

:[22]
push.v self.x
pop.v.v self.targetx
push.v self.y
pop.v.v self.targety
pushi.e 1
pop.v.i self.xadjust
pushi.e 1
pop.v.i self.yadjust

:[23]
b [13]

:[24]
pushi.e 0
pop.v.i self.timer
pushi.e 2
pop.v.i self.con

:[25]
push.v self.jumpstyle
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
push.v self.con
pushi.e 2
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [36]

:[29]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.image_index
push.d 0.5
add.d.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 5
cmp.i.v GTE
bf [31]

:[30]
pushi.e 3
pop.v.i self.image_index

:[31]
push.d 0.2
conv.d.v
push.v self.targetx
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x
push.d 0.2
conv.d.v
push.v self.targety
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y
push.v self.jumpyspeed
pushi.e 2
add.i.v
pop.v.v self.jumpyspeed
push.v self.jumpy
push.v self.jumpyspeed
add.v.v
pop.v.v self.jumpy
push.v self.jumpy
push.v self.jumpyspeed
cmp.v.v GTE
bf [33]

:[32]
push.v self.timer
pushi.e 4
cmp.i.v GTE
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 2
pop.v.i self.image_index
push.v self.targetx
pop.v.v self.x
push.v self.targety
pop.v.v self.y
pushi.e 0
pop.v.i self.jumping
pushi.e 0
pop.v.i self.jumpy
pushi.e 0
pop.v.i self.jumpyspeed
pushi.e 0
pop.v.i self.timer
pushi.e 4
pop.v.i self.con

:[36]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [38]

:[37]
push.v self.jumpstyle
pushi.e 1
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [46]

:[40]
push.v self.image_index
push.d 0.5
add.d.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 5
cmp.i.v GTE
bf [42]

:[41]
pushi.e 3
pop.v.i self.image_index

:[42]
push.v self.y
push.v self.jumpy
add.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v GT
bf [44]

:[43]
push.v self.jumpy
push.v self.jumpyspeed
add.v.v
pop.v.v self.jumpy
b [46]

:[44]
push.v self.x
pushi.e 10
add.i.v
pop.v.v self.x
push.v self.x
push.v self.targetx
cmp.v.v GTE
bf [46]

:[45]
pushi.e 3
pop.v.i self.con
pushi.e 10
pop.v.i self.jumpyspeed

:[46]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [48]

:[47]
push.v self.jumpstyle
pushi.e 1
cmp.i.v EQ
b [49]

:[48]
push.e 0

:[49]
bf [54]

:[50]
push.v self.image_index
push.d 0.5
add.d.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 5
cmp.i.v GTE
bf [52]

:[51]
pushi.e 3
pop.v.i self.image_index

:[52]
push.v self.jumpyspeed
pushi.e 2
add.i.v
pop.v.v self.jumpyspeed
push.v self.jumpy
push.v self.jumpyspeed
add.v.v
pop.v.v self.jumpy
push.v self.jumpy
push.v self.jumpyspeed
cmp.v.v GTE
bf [54]

:[53]
pushi.e 2
pop.v.i self.image_index
pushi.e 0
pop.v.i self.jumping
pushi.e 0
pop.v.i self.jumpy
pushi.e 0
pop.v.i self.jumpyspeed
pushi.e 4
pop.v.i self.con

:[54]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [67]

:[55]
push.v self.jumppuzzle
pushi.e 1
cmp.i.v EQ
bf [59]

:[56]
pushi.e 1
pop.v.i self.hastarget
push.v self.fallen
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
pushi.e 1183
push.v 1183.currentPlatform
conv.v.i
push.v [array]self.plat
pop.v.v self.target
b [59]

:[58]
pushi.e 1183
push.v 1183.currentPlatform
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.plat
pop.v.v self.target

:[59]
push.v self.image_index
push.d 0.5
sub.d.v
pop.v.v self.image_index
push.v self.image_index
push.d 0.5
cmp.d.v LTE
bf [67]

:[60]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.con
pushi.e 30
pop.v.i self.graceperiod
push.v self.jumppuzzle
pushi.e 1
cmp.i.v EQ
bf [67]

:[61]
pushi.e 1183
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [63]

:[62]
push.v self.fallen
pushi.e 0
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 1
pop.v.i 1183.makenewplatform
b [67]

:[66]
pushi.e 0
pop.v.i self.fallen

:[67]
push.v self.jostlecon
pushi.e 1
cmp.i.v EQ
bf [78]

:[68]
pushi.e 1531
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.image_index
pushi.e 0
pop.v.i self.jostlesiner
push.v self.crowdid
pushi.e -9
push.v [stacktop]self.x
pushi.e 10
sub.i.v
pop.v.v self.crowdx
push.v self.crowdid
pushi.e -9
push.v [stacktop]self.y
pushi.e 60
sub.i.v
pop.v.v self.crowdy
push.d 0.2
conv.d.v
pushi.e -60
conv.i.v
push.v self.jumpy
call.i lerp(argc=3)
pop.v.v self.jumpy
push.v self.jumpy
pop.v.v self.jumpyfactor
push.d 0.2
conv.d.v
push.v self.crowdx
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x
push.d 0.2
conv.d.v
push.v self.crowdy
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y
push.v self.crowdx
push.v self.x
cmp.v.v LT
bf [70]

:[69]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x

:[70]
push.v self.crowdx
push.v self.x
cmp.v.v GT
bf [72]

:[71]
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.x

:[72]
push.v self.crowdy
push.v self.y
cmp.v.v GT
bf [74]

:[73]
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.y

:[74]
push.v self.crowdy
push.v self.y
cmp.v.v LT
bf [76]

:[75]
push.v self.y
pushi.e 2
sub.i.v
pop.v.v self.y

:[76]
push.v self.crowdy
push.v self.crowdx
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pushi.e 6
cmp.i.v LT
bf [78]

:[77]
pushi.e 2
pop.v.i self.jostlecon

:[78]
push.v self.jostlecon
pushi.e 2
cmp.i.v EQ
bf [83]

:[79]
push.v self.jostlesiner
push.e 1
add.i.v
pop.v.v self.jostlesiner
push.v self.crowdid
pushi.e -9
push.v [stacktop]self.x
pushi.e 10
sub.i.v
push.v self.jostlesiner
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.x
push.v self.crowdid
pushi.e -9
push.v [stacktop]self.y
pushi.e 60
sub.i.v
pop.v.v self.y
push.v self.jostlesiner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
neg.v
pushi.e 16
mul.i.v
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.jumpyfactor
add.v.v
pop.v.v self.jumpy
push.v self.jumpyfactor
pushi.e -60
cmp.i.v GT
bf [81]

:[80]
push.v self.jumpyfactor
pushi.e 5
sub.i.v
pop.v.v self.jumpyfactor

:[81]
push.v self.jostlesiner
pushi.e 180
cmp.i.v GTE
bf [83]

:[82]
pushi.e 0
pop.v.i self.jostlecon
pushi.e 1
pop.v.i self.con
push.v self.x
pushi.e 240
add.i.v
pop.v.v self.targetx
pushi.e 0
pop.v.i self.jumpstyle

:[83]
push.v self.fallen
pushi.e 0
cmp.i.v EQ
bf [85]

:[84]
push.v self.y
pushbltn.v builtin.room_height
cmp.v.v GT
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
push.v self.failureCount
push.e 1
add.i.v
pop.v.v self.failureCount
pushi.e 1
pop.v.i self.fallen

:[88]
push.v self.fallen
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
pushi.e 114
pop.v.i self.x
pushbltn.v builtin.room_height
pushi.e 20
add.i.v
pop.v.v self.y
pushi.e 1193
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tower
pushi.e 60
conv.i.v
pushi.e 285
conv.i.v
pushi.e 115
conv.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
pushi.e 2
pop.v.i self.fallen
pushi.e 0
pop.v.i self.timer

:[90]
push.v self.fallen
pushi.e 2
cmp.i.v EQ
bf [93]

:[91]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [93]

:[92]
push.i 68097
setowner.e
pushi.e 1
conv.b.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.tower
pushi.e -9
dup.i 4
push.v [stacktop]self.con
push.e 1
add.i.v
pop.i.v [stacktop]self.con
pushi.e 3
pop.v.i self.fallen

:[93]
pushbltn.v builtin.room
pushi.e 136
cmp.i.v NEQ
bf [95]

:[94]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[95]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [98]

:[96]
push.v self.jostlecon
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
push.v self.extflag
push.s "mice1Scare"@37396
cmp.s.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [103]

:[100]
pushi.e 135
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.noelleFacing
push.v self.sprite_index
push.v self.noelleFacing
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 2
push.v self.noelleFacing
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.noelleFacing
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.noelleFacing
pushi.e -9
push.v [stacktop]self.ystart
push.v self.noelleFacing
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.noelleFacing
pushi.e -9
pushenv [102]

:[101]
push.s "noelledark"@10169
conv.s.v
call.i gml_Script_scr_set_facing_sprites(argc=1)
popz.v

:[102]
popenv [101]
call.i instance_destroy(argc=0)
popz.v

:[103]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [105]

:[104]
push.v self.jostlecon
pushi.e 0
cmp.i.v EQ
b [106]

:[105]
push.e 0

:[106]
bf [108]

:[107]
push.v self.jostletimer
push.e 1
add.i.v
pop.v.v self.jostletimer
b [109]

:[108]
pushi.e 0
pop.v.i self.jostletimer

:[109]
pushi.e 1189
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [112]

:[110]
push.v 1189.micescore
push.v 1189.micetarget
cmp.v.v GTE
bf [112]

:[111]
pushi.e 0
pop.v.i self.image_speed

:[112]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]