.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [20]

:[1]
push.v self.loc_check
pushi.e 0
cmp.i.v EQ
bf [6]

:[2]
pushbltn.v builtin.room
push.v self.room_forest_starwalker
cmp.v.v EQ
bf [5]

:[3]
push.v 82.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [5]

:[4]
pushi.e 2200
pop.v.i self.x

:[5]
pushi.e 1
pop.v.i self.loc_check

:[6]
pushi.e 5
pop.v.i self.i

:[7]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
push.i 168891
setowner.e
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.char_xcheck
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.char_xcheck
push.i 168892
setowner.e
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.char_ycheck
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.char_ycheck
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [7]

:[9]
push.i 168891
setowner.e
push.v 82.x
pushi.e -1
pushi.e 0
pop.v.v [array]self.char_xcheck
push.i 168892
setowner.e
push.v 82.y
pushi.e -1
pushi.e 0
pop.v.v [array]self.char_ycheck
push.v 82.x
pushi.e -1
pushi.e 1
push.v [array]self.char_xcheck
sub.v.v
push.v 82.x
pushi.e -1
pushi.e 2
push.v [array]self.char_xcheck
sub.v.v
add.v.v
push.v 82.x
pushi.e -1
pushi.e 3
push.v [array]self.char_xcheck
sub.v.v
add.v.v
pushi.e 3
conv.i.d
div.d.v
pop.v.v self.xcheck_average
push.v self.xcheck_average
pushi.e 2
cmp.i.v GTE
bf [11]

:[10]
push.v self.x
push.v 82.x
cmp.v.v GTE
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 0
pop.v.i self.xcheck_average

:[14]
push.v self.xcheck_average
pushi.e -2
cmp.i.v LTE
bf [16]

:[15]
push.v self.x
push.v 82.x
cmp.v.v LTE
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 0
pop.v.i self.xcheck_average

:[19]
push.v 82.y
pushi.e -1
pushi.e 1
push.v [array]self.char_ycheck
sub.v.v
push.v 82.y
pushi.e -1
pushi.e 2
push.v [array]self.char_ycheck
sub.v.v
add.v.v
push.v 82.y
pushi.e -1
pushi.e 3
push.v [array]self.char_ycheck
sub.v.v
add.v.v
pushi.e 3
conv.i.d
div.d.v
pop.v.v self.ycheck_average

:[20]
pushi.e 8
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [22]

:[21]
push.v self.beatcon
push.i 89898
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [31]

:[24]
pushi.e 0
pop.v.i self.visible
pushi.e 1
pop.v.i self.beatcon
pushi.e 0
pop.v.i self.beattimer
pushi.e 82
pushenv [26]

:[25]
pushi.e 0
pop.v.i self.battlemode

:[26]
popenv [25]
pushi.e 245
conv.i.v
push.v self.y
pushi.e 74
sub.i.v
push.v self.x
pushi.e 92
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dead
push.v self.dead
pushi.e -9
pushenv [28]

:[27]
pushi.e 1
pop.v.i self.walkcon
pushi.e 0
pop.v.i self.walktimer

:[28]
popenv [27]
push.v self.shadow
pushi.e -9
pushenv [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [29]

:[31]
push.v 82.x
push.v 82.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.targetx
push.v 82.y
push.v 82.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.targety
push.v self.mazemode
pushi.e 0
cmp.i.v EQ
bf [55]

:[32]
push.v self.targetx
push.v self.x
sub.v.v
call.i abs(argc=1)
pushi.e 200
cmp.i.v LTE
bf [34]

:[33]
push.v self.introcon
pushi.e 0
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [39]

:[36]
pushi.e 1
pop.v.i self.introcon
pushi.e 82
pushenv [38]

:[37]
pushi.e 1
pop.v.i self.battlemode

:[38]
popenv [37]

:[39]
push.v self.introcon
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
pushi.e 0
pop.v.i self.attackcon
pushi.e -2
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.introcon

:[41]
push.v self.introcon
pushi.e 2
cmp.i.v EQ
bf [44]

:[42]
pushi.e 0
pop.v.i self.attacktimer
push.v self.introtimer
pushi.e 1
add.i.v
pop.v.v self.introtimer
push.v self.introtimer
pushi.e 20
cmp.i.v GTE
bf [44]

:[43]
pushi.e 3
pop.v.i self.introcon
pushi.e 0
pop.v.i self.vspeed

:[44]
push.v self.introcon
pushi.e 3
cmp.i.v EQ
bf [55]

:[45]
push.d 0.5
pop.v.d self.friction
push.v self.targetx
push.v self.x
cmp.v.v LT
bf [50]

:[46]
push.v self.x
push.v self.targetx
pushi.e 150
add.i.v
cmp.v.v LTE
bf [48]

:[47]
push.v self.hspeed
pushi.e 1
add.i.v
pop.v.v self.hspeed

:[48]
push.v self.x
push.v self.targetx
pushi.e 250
add.i.v
cmp.v.v GTE
bf [50]

:[49]
push.v self.hspeed
pushi.e 1
sub.i.v
pop.v.v self.hspeed

:[50]
push.v self.targetx
push.v self.x
cmp.v.v GT
bf [55]

:[51]
push.v self.x
push.v self.targetx
pushi.e 150
sub.i.v
cmp.v.v GTE
bf [53]

:[52]
push.v self.hspeed
pushi.e 1
sub.i.v
pop.v.v self.hspeed

:[53]
push.v self.x
push.v self.targetx
pushi.e 250
sub.i.v
cmp.v.v LTE
bf [55]

:[54]
push.v self.hspeed
pushi.e 1
add.i.v
pop.v.v self.hspeed

:[55]
push.v self.mazemode
pushi.e 1
cmp.i.v EQ
bf [73]

:[56]
push.v self.targety
push.v self.y
cmp.v.v LTE
bf [58]

:[57]
push.v self.introcon
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [63]

:[60]
pushi.e 1
pop.v.i self.introcon
pushi.e 82
pushenv [62]

:[61]
pushi.e 1
pop.v.i self.battlemode

:[62]
popenv [61]

:[63]
push.v self.introcon
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
pushi.e 0
pop.v.i self.attackcon
pushi.e -8
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.introcon

:[65]
push.v self.introcon
pushi.e 2
cmp.i.v EQ
bf [68]

:[66]
pushi.e 0
pop.v.i self.attacktimer
push.v self.introtimer
pushi.e 1
add.i.v
pop.v.v self.introtimer
push.v self.introtimer
pushi.e 5
cmp.i.v GTE
bf [68]

:[67]
pushi.e 3
pop.v.i self.introcon
pushi.e 0
pop.v.i self.vspeed
pushi.e 36
pop.v.i self.attacktimer

:[68]
push.v self.introcon
pushi.e 3
cmp.i.v EQ
bf [73]

:[69]
push.d 0.7
pop.v.d self.friction
push.v self.targety
push.v self.y
pushi.e 20
sub.i.v
cmp.v.v LT
bf [71]

:[70]
push.v self.vspeed
push.d 1.5
sub.d.v
pop.v.v self.vspeed

:[71]
push.v self.targety
push.v self.y
pushi.e 20
add.i.v
cmp.v.v GT
bf [73]

:[72]
push.v self.vspeed
push.d 1.5
add.d.v
pop.v.v self.vspeed

:[73]
push.v self.beatcon
pushi.e 0
cmp.i.v EQ
bf [100]

:[74]
push.v self.attackcon
pushi.e 0
cmp.i.v GTE
bf [77]

:[75]
push.v 82.battlemode
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer

:[77]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [80]

:[78]
push.v self.wingtimer
pushi.e 1
add.i.v
pop.v.v self.wingtimer
push.v self.wingtimer
pushi.e 0
cmp.i.v GTE
bf [80]

:[79]
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e -16
pop.v.i self.wingtimer

:[80]
push.v self.attacktimer
pushi.e 42
cmp.i.v GTE
bf [82]

:[81]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [90]

:[84]
pushi.e 0
pop.v.i self.wingtimer
pushi.e 6
pop.v.i self.shakefactor
pushi.e 1
pop.v.i self.attackcon
push.v self.shot
pushi.e 1
cmp.i.v EQ
bf [90]

:[85]
pushi.e 0
pop.v.i self.i

:[86]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [90]

:[87]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
pushi.e -9
pushenv [89]

:[88]
call.i instance_destroy(argc=0)
popz.v

:[89]
popenv [88]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [86]

:[90]
push.v self.attacktimer
pushi.e 60
cmp.i.v GTE
bf [92]

:[91]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [97]

:[94]
pushi.e 51
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.attackcon
pushi.e 1
pop.v.i self.shot
pushi.e 0
pop.v.i self.i

:[95]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [97]

:[96]
push.i 168897
setowner.e
pushi.e 255
conv.i.v
push.v self.y
pushi.e 42
add.i.v
push.v self.x
pushi.e 17
push.v self.xmake
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.starbullet
push.i 133642
setowner.e
push.v self.spr_starbullet_test
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.i 133650
setowner.e
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133651
setowner.e
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 231467
setowner.e
pushi.e 15
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
pushi.e -9
pop.v.i [stacktop]self.damage
push.i 232295
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
pushi.e -9
pop.v.i [stacktop]self.active
push.i 231464
setowner.e
pushi.e 3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
pushi.e -9
pop.v.i [stacktop]self.target
push.i 133626
setowner.e
pushi.e 10
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
pushi.e -9
pop.v.i [stacktop]self.speed
push.i 133627
setowner.e
push.d -0.2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
pushi.e -9
pop.v.d [stacktop]self.friction
push.i 133625
setowner.e
push.v 82.y
push.v 82.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v 82.x
push.v self.xcheck_average
pushi.e 10
mul.i.v
add.v.v
push.v 82.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.y
pushi.e 42
add.i.v
push.v self.x
pushi.e 17
push.v self.xmake
mul.v.i
add.v.v
call.i point_direction(argc=4)
pushi.e 17
sub.i.v
pushi.e 17
push.v self.i
mul.v.i
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133637
setowner.e
pushi.e 1000
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [95]

:[97]
push.v self.attacktimer
pushi.e 80
cmp.i.v GTE
bf [100]

:[98]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.wing_index
pushi.e 0
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer
push.v self.mazemode
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
pushi.e 38
pop.v.i self.attacktimer

:[100]
push.v self.shadow
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [110]

:[101]
push.v self.attackcon
pushi.e -1
cmp.i.v EQ
bf [103]

:[102]
pushi.e 0
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.visible
b [104]

:[103]
pushi.e 1
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.visible

:[104]
push.v self.mazemode
pushi.e 1
cmp.i.v EQ
bf [106]

:[105]
pushi.e 0
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.visible

:[106]
push.v self.x
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.shadowy
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.spr_starwalker_wings
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.wing_index
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [108]

:[107]
push.v self.spr_starwalker_attack
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.xmake
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.image_xscale

:[108]
push.v self.attackcon
pushi.e 2
cmp.i.v EQ
bf [110]

:[109]
push.v self.spr_starwalker_attack
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 1
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.xmake
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.image_xscale

:[110]
push.v self.beatcon
pushi.e 1
cmp.i.v EQ
bf [115]

:[111]
pushi.e 82
pushenv [113]

:[112]
pushi.e 0
pop.v.i self.battlemode

:[113]
popenv [112]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [115]

:[114]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.beattimer
pushi.e 2
pop.v.i self.beatcon

:[115]
push.v self.beatcon
pushi.e 2
cmp.i.v EQ
bf [end]

:[116]
push.v self.beattimer
pushi.e 1
add.i.v
pop.v.v self.beattimer
push.v self.dead
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
add.v.v
cmp.v.v GTE
bf [118]

:[117]
pushglb.v global.interact
pushi.e 0
cmp.i.v NEQ
b [119]

:[118]
push.e 0

:[119]
bf [end]

:[120]
push.v self.dead
pushi.e -9
pushenv [122]

:[121]
call.i instance_destroy(argc=0)
popz.v

:[122]
popenv [121]
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.beatcon
call.i instance_destroy(argc=0)
popz.v

:[end]