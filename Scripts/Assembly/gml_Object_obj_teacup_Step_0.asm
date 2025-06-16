.localvar 2 arguments
.localvar 36385 _tempLock 17845
.localvar 36386 _generalSpeed 17846
.localvar 36387 _riseSpeedFinal 17847
.localvar 36388 _targetY 17848
.localvar 107 i 17850
.localvar 36390 _sprites 17851
.localvar 36394 _shakeSize 17856
.localvar 36395 _moveDirection 17857
.localvar 36396 _destinationY 17858
.localvar 36397 _moveAmount 17859
.localvar 36398 _holdCondition 17860
.localvar 36400 _closest 17862
.localvar 36401 _spinSpeed 17863
.localvar 36402 _mode 17864
.localvar 36403 _spinDir 17865
.localvar 36404 _movedSoFar 17866
.localvar 36405 _camTarget 17867
.localvar 6412 shakex 17868
.localvar 14787 _flash 17869
.localvar 36408 _character 17872
.localvar 36409 _marker 17873
.localvar 36411 _charaDest 17874
.localvar 36413 _longestAnim 17877
.localvar 36414 _animSpeed 17878
.localvar 23832 animdone 17880
.localvar 36416 _charSpin 17881
.localvar 36419 _cupDepth 17884
.localvar 36420 _spritesTea 17885
.localvar 36421 _fadeDistance 17887
.localvar 36422 _theCurrentScore 17888
.localvar 36423 woosh 17889

:[0]
push.v self.reverse
conv.v.b
bf [2]

:[1]
push.v self.camTargetHeightReverse
b [3]

:[2]
push.v self.camTargetHeightNormal

:[3]
pop.v.v self.camTargetHeight
pushi.e 0
pop.v.b local._tempLock
push.v self.riseSpeedBoostMax
push.v self.riseSpeedBoost
call.i min(argc=2)
pop.v.v self.riseSpeedBoost
push.v self.riseSpeed
pop.v.v local._generalSpeed
push.v self.reverse
conv.v.b
bf [5]

:[4]
push.v self.riseSpeedReverse
call.i is_undefined(argc=1)
conv.v.b
not.b
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v self.riseSpeedReverse
pop.v.v local._generalSpeed

:[8]
pushloc.v local._generalSpeed
push.v self.riseSpeedBoost
add.v.v
pop.v.v local._riseSpeedFinal
push.v self.tutorialRide
conv.v.b
bf [10]

:[9]
push.v self.riseSpeedBoost
pop.v.v local._riseSpeedFinal

:[10]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [21]

:[11]
push.v self.uniqueRideExperience
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e -5
pushi.e 373
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
push.v self.ystart
pop.v.v local._targetY
push.v self.reverse
conv.v.b
bf [18]

:[17]
push.v self.endY
pop.v.v local._targetY

:[18]
push.v self.riseSpeedInitial
pushloc.v local._targetY
push.v self.y
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.y
push.v self.y
pushloc.v local._targetY
cmp.v.v EQ
bf [21]

:[19]
pushi.e 1
pop.v.i self.state
push.v self.uniqueRideExperience
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.d 0.1
pop.v.d self.state
pushi.e 15
pop.v.i self.waitingAround

:[21]
push.v self.state
push.d 0.1
cmp.d.v EQ
bf [24]

:[22]
push.v self.waitingAround
push.e 1
sub.i.v
dup.v 0
pop.v.v self.waitingAround
pushi.e 0
cmp.i.v LTE
bf [24]

:[23]
pushi.e 1
pop.v.i self.state

:[24]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [25]

:[25]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [28]

:[26]
push.v self.waitingAround
push.e 1
sub.i.v
dup.v 0
pop.v.v self.waitingAround
pushi.e 0
cmp.i.v LTE
bf [28]

:[27]
pushi.e 3
pop.v.i self.state
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[28]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [41]

:[29]
pushi.e 0
pop.v.i local.i

:[30]
pushloc.v local.i
push.v self.partySize
cmp.v.v LT
bf [34]

:[31]
push.i 174207
setowner.e
pushi.e 2559
conv.i.v
pushi.e 2563
conv.i.v
pushi.e 2552
conv.i.v
pushi.e 2552
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pop.v.v local._sprites
push.i 133642
setowner.e
pushi.e -7
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self._sprites
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
pushenv [33]

:[32]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 10
pop.v.i self.cutoff

:[33]
popenv [32]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [30]

:[34]
pushi.e 1
pop.v.i self.cupCharExists
pushi.e 4
pop.v.i self.state
pushi.e 15
pop.v.i self.waitingAround
push.v self.uniqueRideExperience
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
push.v self.reverse
conv.v.b
not.b
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 45
pop.v.i self.waitingAround
push.v self.y
pop.v.v self.originalY
push.v self.x
pop.v.v self.originalX

:[39]
push.v self.rideToRide
conv.v.b
bf [41]

:[40]
pushi.e 3
pop.v.i self.waitingAround

:[41]
push.v self.state
pushi.e 4
cmp.i.v EQ
bf [55]

:[42]
push.v self.uniqueRideExperience
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
push.v self.reverse
conv.v.b
not.b
b [45]

:[44]
push.e 0

:[45]
bf [53]

:[46]
pushi.e 0
pop.v.i local.i

:[47]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [51]

:[48]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
pushenv [50]

:[49]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[50]
popenv [49]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [47]

:[51]
pushi.e 5
pop.v.i local._shakeSize
push.v self.originalX
pushloc.v local._shakeSize
pushloc.v local._shakeSize
neg.v
call.i irandom_range(argc=2)
add.v.v
pop.v.v self.x
push.v self.originalY
pushloc.v local._shakeSize
pushloc.v local._shakeSize
neg.v
call.i irandom_range(argc=2)
add.v.v
pop.v.v self.y
push.v self.spinSpeed
pushi.e 0
conv.i.v
push.v self.spin
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.spin
push.v self.waitingAround
pushi.e 15
cmp.i.v LTE
bf [53]

:[52]
push.v self.originalX
pop.v.v self.x
push.v self.originalY
pop.v.v self.y

:[53]
push.v self.waitingAround
push.e 1
sub.i.v
dup.v 0
pop.v.v self.waitingAround
pushi.e 0
cmp.i.v LTE
bf [55]

:[54]
pushi.e 0
pop.v.b self.heldThisRide
pushi.e 5
pop.v.i self.state
pushi.e 113
conv.i.v
call.i gml_Script_snd_loop(argc=1)
pop.v.v self.looptrack
push.d 0.3
pushloc.v local._riseSpeedFinal
push.d 0.09
mul.d.v
add.v.d
push.v self.looptrack
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 0
conv.i.v
push.d 0.3
conv.d.v
push.v self.looptrack
call.i gml_Script_snd_volume(argc=3)
popz.v

:[55]
push.v self.state
pushi.e 5
cmp.i.v EQ
bf [172]

:[56]
pushbltn.v builtin.room
pushi.e 89
cmp.i.v EQ
bf [58]

:[57]
pushi.e -5
pushi.e 442
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [63]

:[60]
push.v self.riseSpeedBoost
pushi.e 0
cmp.i.v EQ
bf [62]

:[61]
push.v self.idletimer
push.e 1
add.i.v
pop.v.v self.idletimer
b [63]

:[62]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 442
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.idletimer

:[63]
push.v self.reverse
conv.v.b
bf [65]

:[64]
pushi.e 1
conv.i.v
b [66]

:[65]
pushi.e -1
conv.i.v

:[66]
pop.v.v local._moveDirection
push.v self.reverse
conv.v.b
bf [68]

:[67]
push.v self.ystart
b [69]

:[68]
push.v self.endY

:[69]
pop.v.v local._destinationY
push.v self.held
conv.v.b
not.b
bf [81]

:[70]
push.v self.heldThisRide
conv.v.b
not.b
bf [73]

:[71]
push.v self.holdHeight
pushi.e -1
cmp.i.v GT
bf [73]

:[72]
push.v self.reverse
conv.v.b
not.b
b [74]

:[73]
push.e 0

:[74]
bf [80]

:[75]
push.v self.y
pushloc.v local._riseSpeedFinal
pushloc.v local._moveDirection
mul.v.v
add.v.v
pop.v.v local._moveAmount
push.v self.reverse
conv.v.b
bf [77]

:[76]
pushloc.v local._moveAmount
push.v self.holdHeight
cmp.v.v GT
conv.b.v
b [78]

:[77]
pushloc.v local._moveAmount
push.v self.holdHeight
cmp.v.v LT
conv.b.v

:[78]
pop.v.v local._holdCondition
pushloc.v local._holdCondition
conv.v.b
bf [80]

:[79]
push.v self.holdHeight
pop.v.v self.y
pushi.e 1
pop.v.b self.held
pushi.e 1
pop.v.b self.heldThisRide
pushi.e 0
pop.v.i self.heldAmount

:[80]
b [110]

:[81]
pushi.e 1228
pushenv [83]

:[82]
push.v self.autoamount
pushloc.v local._riseSpeedFinal
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.autoamount

:[83]
popenv [82]
push.v self.heldAmount
pushloc.v local._riseSpeedFinal
add.v.v
pop.v.v self.heldAmount
push.v self.heldAmount
push.v self.holdDistance
cmp.v.v GTE
bf [85]

:[84]
pushi.e 0
pop.v.b self.held

:[85]
pushi.e 1092
pushenv [88]

:[86]
push.v self.master
push.v other.id
cmp.v.v EQ
bf [88]

:[87]
push.v self.ystart
pushloc.v local._riseSpeedFinal
add.v.v
pop.v.v self.ystart

:[88]
popenv [86]
push.v self.uniqueRideExperience
pushi.e 4
cmp.i.v EQ
bf [90]

:[89]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v NEQ
b [91]

:[90]
push.e 0

:[91]
bf [110]

:[92]
push.v self.teaBullets
dup.v 0
push.e 1
sub.i.v
pop.v.v self.teaBullets
pushi.e 0
cmp.i.v GT
bf [95]

:[93]
push.v self.teaBullets
pushi.e 3
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [95]

:[94]
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
push.v self.spin
pushi.e 800
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v

:[95]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1092
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
pushi.e 10
sub.i.v
push.v self.bbox_left
call.i collision_rectangle(argc=7)
pushi.e -4
cmp.i.v NEQ
bf [101]

:[96]
pushi.e -1
pushi.e 1
push.v [array]self.cup_char
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e 2563
cmp.i.v EQ
bf [98]

:[97]
push.i 133642
setowner.e
pushi.e 2564
pushi.e -1
pushi.e 1
push.v [array]self.cup_char
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[98]
push.v self.teatimer
push.e 1
sub.i.v
pop.v.v self.teatimer
push.v self.teatimer
pushi.e 0
cmp.i.v LTE
bf [100]

:[99]
pushi.e 180
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 6
pop.v.i self.teatimer

:[100]
b [103]

:[101]
pushi.e -1
pushi.e 1
push.v [array]self.cup_char
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e 2564
cmp.i.v EQ
bf [103]

:[102]
push.i 133642
setowner.e
pushi.e 2563
pushi.e -1
pushi.e 1
push.v [array]self.cup_char
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[103]
pushi.e 368
push.v self.spin
sub.v.i
call.i abs(argc=1)
pushi.e 8
push.v self.spin
sub.v.i
call.i abs(argc=1)
cmp.v.v GT
pop.v.b local._closest
push.v self.spinSpeed
pushloc.v local._closest
conv.v.b
bf [105]

:[104]
pushi.e 8
conv.i.v
b [106]

:[105]
pushi.e 368
conv.i.v

:[106]
push.v self.spin
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.spin
pushi.e 1228
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [109]

:[107]
push.v 1228.auto
pushi.e 0
cmp.i.v EQ
bf [109]

:[108]
pushi.e 1
pop.v.i 1228.auto

:[109]
pushi.e 1
pop.v.b local._tempLock

:[110]
push.v self.spinSpeed
pop.v.v local._spinSpeed
push.v self.mode
pop.v.v local._mode
push.v self.uniqueRideExperience
pushi.e 1
cmp.i.v EQ
bf [112]

:[111]
push.v self.reverse
conv.v.b
b [113]

:[112]
push.e 0

:[113]
bf [119]

:[114]
pushi.e 2
pop.v.i local._mode
pushi.e 2
pop.v.i local._spinSpeed
pushi.e -5
pushi.e 33
push.v [array]self.tempflag
pushi.e 0
cmp.i.v GT
bf [116]

:[115]
pushbltn.v builtin.room
pushi.e 185
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
pushi.e 12
pop.v.i local._riseSpeedFinal

:[119]
call.i gml_Script_down_h(argc=0)
conv.v.b
bt [121]

:[120]
call.i gml_Script_left_h(argc=0)
conv.v.b
b [122]

:[121]
push.e 1

:[122]
conv.b.i
call.i gml_Script_up_h(argc=0)
conv.v.b
bt [124]

:[123]
call.i gml_Script_right_h(argc=0)
conv.v.b
b [125]

:[124]
push.e 1

:[125]
conv.b.i
sub.i.i
pop.v.i local._spinDir
pushloc.v local._mode
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [129]

:[126]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [134]

:[127]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [139]

:[128]
b [144]

:[129]
pushloc.v local._tempLock
conv.v.b
not.b
bf [131]

:[130]
push.v self.spin
pushloc.v local._spinSpeed
sub.v.v
pop.v.v self.spin

:[131]
push.v self.held
conv.v.b
not.b
bf [133]

:[132]
push.v self.y
pushloc.v local._spinDir
pushloc.v local._riseSpeedFinal
mul.v.v
add.v.v
pop.v.v self.y

:[133]
b [144]

:[134]
pushloc.v local._tempLock
conv.v.b
not.b
bf [136]

:[135]
push.v self.spin
pushloc.v local._spinSpeed
pushloc.v local._spinDir
mul.v.v
add.v.v
pop.v.v self.spin

:[136]
push.v self.held
conv.v.b
not.b
bf [138]

:[137]
pushloc.v local._riseSpeedFinal
pushloc.v local._destinationY
push.v self.y
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.y

:[138]
b [144]

:[139]
pushloc.v local._tempLock
conv.v.b
not.b
bf [141]

:[140]
push.v self.spin
pushloc.v local._spinSpeed
pushloc.v local._moveDirection
mul.v.v
add.v.v
pop.v.v self.spin

:[141]
push.v self.held
conv.v.b
not.b
bf [143]

:[142]
pushloc.v local._riseSpeedFinal
pushloc.v local._destinationY
push.v self.y
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.y

:[143]
b [144]

:[144]
popz.v
pushi.e 360
conv.i.v
pushi.e 0
conv.i.v
push.v self.spin
call.i gml_Script_scr_wrap(argc=3)
pop.v.v self.spin
push.v self.camFollow
conv.v.b
bf [157]

:[145]
push.v self.reverse
conv.v.b
bf [147]

:[146]
push.v self.endY
push.v self.y
sub.v.v
b [148]

:[147]
push.v self.ystart
push.v self.y
sub.v.v

:[148]
call.i abs(argc=1)
pop.v.v local._movedSoFar
pushloc.v local._movedSoFar
push.v self.camFollowAfter
cmp.v.v GT
bf [157]

:[149]
push.v self.camTargetHeight
pop.v.v local._camTarget
push.d 0.2
conv.d.v
push.v self.y
pushloc.v local._camTarget
sub.v.v
call.i gml_Script_cameray(argc=0)
call.i lerp(argc=3)
call.i gml_Script_cameray_set(argc=1)
popz.v
pushbltn.v builtin.room_height
pushi.e 480
sub.i.v
pushi.e 0
conv.i.v
call.i gml_Script_cameray(argc=0)
call.i clamp(argc=3)
call.i gml_Script_cameray_set(argc=1)
popz.v
pushloc.v local._movedSoFar
push.v self.camFollowAfter
pushi.e 2
mul.i.v
cmp.v.v GT
bf [151]

:[150]
push.v self.y
pushloc.v local._camTarget
sub.v.v
pushi.e 140
add.i.v
call.i gml_Script_cameray(argc=0)
call.i min(argc=2)
call.i gml_Script_cameray_set(argc=1)
popz.v

:[151]
push.v self.held
conv.v.b
bf [153]

:[152]
push.v self.y
push.v self.camTargetHeight
sub.v.v
pushloc.v local._riseSpeedFinal
pushi.e 4
mul.i.v
add.v.v
call.i gml_Script_cameray_set(argc=1)
popz.v

:[153]
push.v self.shaketimer
pushi.e 0
cmp.i.v GT
bf [157]

:[154]
push.v self.shaketimer
push.e 1
sub.i.v
pop.v.v self.shaketimer
push.v self.shaketimer
pop.v.v local.shakex
pushloc.v local.shakex
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [156]

:[155]
push.v local.shakex
pushi.e -1
mul.i.v
pop.v.v local.shakex

:[156]
pushbltn.v builtin.room_width
call.i gml_Script_camerawidth(argc=0)
sub.v.v
pushi.e 0
conv.i.v
push.v self.x
call.i gml_Script_camerawidth(argc=0)
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i clamp(argc=3)
pushloc.v local.shakex
add.v.v
call.i gml_Script_camerax_set(argc=1)
popz.v

:[157]
push.v self.y
pushloc.v local._destinationY
cmp.v.v EQ
bf [159]

:[158]
pushi.e 6
pop.v.i self.state
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[159]
push.v self.riseSpeedBoost
pushi.e 0
cmp.i.v NEQ
bf [161]

:[160]
push.v self.riseSpeedBoostFriction
pushi.e 0
conv.i.v
push.v self.riseSpeedBoost
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.riseSpeedBoost

:[161]
push.v self.uniqueRideExperience
pushi.e 2
cmp.i.v EQ
bt [163]

:[162]
push.v self.uniqueRideExperience
pushi.e 3
cmp.i.v EQ
b [164]

:[163]
push.e 1

:[164]
bf [167]

:[165]
push.v self.crusher
pushi.e -4
cmp.i.v EQ
bf [167]

:[166]
pushloc.v local._destinationY
push.v self.y
sub.v.v
call.i abs(argc=1)
pushi.e 100
cmp.i.v LT
b [168]

:[167]
push.e 0

:[168]
bf [172]

:[169]
pushi.e 1253
conv.i.v
push.v self.depth
pushi.e 1000
sub.i.v
push.v self.endY
pushi.e 510
sub.i.v
push.v self.x
call.i instance_create_depth(argc=4)
pop.v.v self.crusher
push.v self.crusher
pushi.e -9
pushenv [171]

:[170]
pushi.e 2
pop.v.i self.image_xscale
push.v self.image_xscale
pop.v.v self.image_yscale

:[171]
popenv [170]

:[172]
push.v self.state
pushi.e 6
cmp.i.v EQ
bf [188]

:[173]
pushi.e 1092
pushenv [176]

:[174]
push.v self.master
push.v other.id
cmp.v.v EQ
bf [176]

:[175]
call.i instance_destroy(argc=0)
popz.v

:[176]
popenv [174]
push.v self.reverse
conv.v.b
bf [178]

:[177]
pushi.e 0
pop.v.i self.theScore

:[178]
push.v self.looptrack
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [188]

:[179]
push.v self.scoreboardExists
conv.v.b
bf [181]

:[180]
push.v self.reverse
conv.v.b
not.b
b [182]

:[181]
push.e 0

:[182]
bf [187]

:[183]
push.v self.scoreboardGoal
push.v self.theScore
cmp.v.v LTE
bf [185]

:[184]
pushi.e 7
pop.v.i self.state
b [186]

:[185]
pushi.e 144
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 6.1
pop.v.d self.state
pushi.e 30
pop.v.i self.waitingAround

:[186]
b [188]

:[187]
pushi.e 7
pop.v.i self.state

:[188]
push.v self.state
push.d 6.1
cmp.d.v EQ
bf [194]

:[189]
push.v self.waitingAround
pushi.e 5
rem.i.v
pushi.e 2
mod.i.v
pop.v.v local._flash
pushloc.v local._flash
pushi.e 0
cmp.i.v EQ
bf [191]

:[190]
pushi.e 0
push.v self.scoreboard
pushi.e -9
pop.v.i [stacktop]self.scoreCol
b [192]

:[191]
pushi.e 255
push.v self.scoreboard
pushi.e -9
pop.v.i [stacktop]self.scoreCol

:[192]
push.v self.waitingAround
push.e 1
sub.i.v
dup.v 0
pop.v.v self.waitingAround
pushi.e 0
cmp.i.v LTE
bf [194]

:[193]
push.i 14483711
push.v self.scoreboard
pushi.e -9
pop.v.i [stacktop]self.scoreCol
pushi.e 1
pop.v.b self.reverse
pushi.e 5
pop.v.i self.state

:[194]
push.v self.crusher
pushi.e -9
pushenv [198]

:[195]
push.v self.y
pushi.e 5
pushloc.v local._riseSpeedFinal
add.v.i
add.v.v
pop.v.v self.y
push.v self.y
push.v other.y
cmp.v.v GTE
bf [198]

:[196]
push.v other.y
pop.v.v self.y
push.v other.crushed
conv.v.b
not.b
bf [198]

:[197]
pushi.e 1
pop.v.b other.crushed
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[198]
popenv [195]
push.v self.state
pushi.e 7
cmp.i.v EQ
bf [229]

:[199]
push.v self.uniqueRideExperience
pushi.e 1
cmp.i.v EQ
bf [201]

:[200]
push.v self.reverse
conv.v.b
not.b
b [202]

:[201]
push.e 0

:[202]
bf [204]

:[203]
push.v self.x
pop.v.v self.oX
push.v self.y
pop.v.v self.oY

:[204]
push.v self.uniqueRideExperience
pushi.e 2
cmp.i.v EQ
bf [218]

:[205]
pushi.e 0
pop.v.i local.i

:[206]
pushloc.v local.i
push.v self.partySize
cmp.v.v LT
bf [215]

:[207]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [209]

:[208]
pushi.e 82
conv.i.v
b [210]

:[209]
pushi.e -5
pushloc.v local.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance

:[210]
pop.v.v local._character
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pop.v.v local._marker
pushloc.v local._character
pushi.e -9
pushenv [212]

:[211]
pushloc.v local._marker
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
pushloc.v local._marker
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
sub.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.image_alpha

:[212]
popenv [211]
pushloc.v local._marker
pushi.e -9
pushenv [214]

:[213]
pushi.e 2555
pop.v.i self.sprite_index

:[214]
popenv [213]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [206]

:[215]
push.v self.jumpToRide
pushi.e -9
pushenv [217]

:[216]
pushi.e 1
pop.v.b self.rideToRide
pushi.e 10
conv.i.v
pushi.e 7
conv.i.v
call.i event_perform(argc=2)
popz.v

:[217]
popenv [216]
pushi.e 160
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 12
pop.v.i self.state
b [229]

:[218]
pushi.e 160
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[219]
pushloc.v local.i
push.v self.partySize
cmp.v.v LT
bf [228]

:[220]
push.i 174207
setowner.e
pushi.e 3341
conv.i.v
pushi.e 542
conv.i.v
pushi.e 544
conv.i.v
pushi.e 544
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pop.v.v local._sprites
push.v self.reverse
conv.v.b
bf [222]

:[221]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.startPos
b [223]

:[222]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.endPos

:[223]
pop.v.v local._charaDest
push.i 174176
setowner.e
pushi.e 129
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.jumpMarker
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.jumpMarker
pushi.e -9
pushenv [225]

:[224]
pushi.e -7
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self._sprites
pop.v.v self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed
push.v other.jumpOutDuration
pushi.e 16
conv.i.v
pushi.e -7
pushi.e 1
push.v [array]self._charaDest
pushi.e -7
pushi.e 0
push.v [array]self._charaDest
call.i gml_Script_scr_jump_to_point(argc=4)
pop.v.v self.jumper

:[225]
popenv [224]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
pushenv [227]

:[226]
pushi.e 2555
pop.v.i self.sprite_index

:[227]
popenv [226]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [219]

:[228]
pushi.e 0
pop.v.i self.cupCharExists
push.v self.jumpOutDuration
pop.v.v self.waitingAround
pushi.e 8
pop.v.i self.state

:[229]
push.v self.state
pushi.e 8
cmp.i.v EQ
bf [243]

:[230]
push.v self.uniqueRideExperience
pushi.e 1
cmp.i.v EQ
bf [232]

:[231]
push.v self.reverse
conv.v.b
not.b
b [233]

:[232]
push.e 0

:[233]
bf [235]

:[234]
push.v self.oX
pushi.e 3
conv.i.v
pushi.e -3
conv.i.v
call.i irandom_range(argc=2)
add.v.v
pop.v.v self.x
push.v self.oY
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i irandom_range(argc=2)
add.v.v
pop.v.v self.y

:[235]
push.v self.waitingAround
push.e 1
sub.i.v
dup.v 0
pop.v.v self.waitingAround
pushi.e 0
cmp.i.v LTE
bf [243]

:[236]
pushi.e 0
pop.v.i local.i

:[237]
pushloc.v local.i
push.v self.partySize
cmp.v.v LT
bf [241]

:[238]
push.i 174207
setowner.e
pushi.e 2562
conv.i.v
pushi.e 548
conv.i.v
pushi.e 649
conv.i.v
pushi.e 649
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pop.v.v local._sprites
pushi.e 0
pop.v.i local._longestAnim
push.d 0.25
pop.v.d local._animSpeed
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.jumpMarker
pushi.e -9
pushenv [240]

:[239]
pushi.e -7
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self._sprites
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushloc.v local._animSpeed
pop.v.v self.image_speed
pushi.e 0
pop.v.i self.cutoff
push.v self.image_number
pushloc.v local._longestAnim
call.i max(argc=2)
pop.v.v local._longestAnim

:[240]
popenv [239]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [237]

:[241]
pushi.e 12
pushloc.v local._longestAnim
pushloc.v local._animSpeed
div.v.v
add.v.i
pop.v.v self.waitingAround
pushi.e 9
pop.v.i self.state
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 651
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.jumpMarker
pushi.e -9
push.v [stacktop]self.jumper
pushi.e -9
push.v [stacktop]self.endy
pushi.e -1
pushi.e 0
push.v [array]self.jumpMarker
pushi.e -9
push.v [stacktop]self.jumper
pushi.e -9
push.v [stacktop]self.endx
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.cameramarker
pushi.e -100
push.v self.cameramarker
pushi.e -9
pop.v.i [stacktop]self.depth
push.i 16711680
push.v self.cameramarker
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
push.v self.cameramarker
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.uniqueRideExperience
pushi.e 1
cmp.i.v NEQ
bf [243]

:[242]
pushi.e 12
conv.i.v
push.v self.cameramarker
call.i gml_Script_scr_pan_to_obj(argc=2)
popz.v

:[243]
push.v self.state
pushi.e 9
cmp.i.v EQ
bf [280]

:[244]
pushi.e 82
pushenv [246]

:[245]
pushi.e 0
pop.v.i self.battlemode
pushi.e 1
pop.v.i self.drawbattlemode

:[246]
popenv [245]
push.v self.uniqueRideExperience
pushi.e 1
cmp.i.v EQ
bf [248]

:[247]
push.v self.reverse
conv.v.b
not.b
b [249]

:[248]
push.e 0

:[249]
bf [251]

:[250]
push.v self.oX
pushi.e 3
conv.i.v
pushi.e -3
conv.i.v
call.i irandom_range(argc=2)
add.v.v
pop.v.v self.x
push.v self.oY
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i irandom_range(argc=2)
add.v.v
pop.v.v self.y

:[251]
pushi.e 0
pop.v.i local.animdone
pushi.e 0
pop.v.i local.i

:[252]
pushloc.v local.i
push.v self.partySize
cmp.v.v LT
bf [264]

:[253]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.jumpMarker
pushi.e -9
pushenv [258]

:[254]
push.v self.image_index
push.v self.image_number
pushi.e 1
sub.i.v
cmp.v.v GTE
bf [256]

:[255]
pushi.e 0
pop.v.i self.image_speed
push.v self.image_number
pushi.e 1
sub.i.v
pop.v.v self.image_index

:[256]
push.v self.image_index
push.v self.image_number
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [258]

:[257]
push.v local.animdone
push.e 1
add.i.v
pop.v.v local.animdone

:[258]
popenv [254]
pushloc.v local.animdone
pushi.e 3
cmp.i.v GTE
bf [260]

:[259]
push.v self.waitingAround
pushi.e 6
cmp.i.v GT
b [261]

:[260]
push.e 0

:[261]
bf [263]

:[262]
pushi.e 6
pop.v.i self.waitingAround

:[263]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [252]

:[264]
push.v self.waitingAround
push.e 1
sub.i.v
dup.v 0
pop.v.v self.waitingAround
pushi.e 0
cmp.i.v LTE
bf [280]

:[265]
pushi.e 0
pop.v.i local.i

:[266]
pushloc.v local.i
push.v self.partySize
cmp.v.v LT
bf [279]

:[267]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [269]

:[268]
pushi.e 82
conv.i.v
b [270]

:[269]
pushi.e -5
pushloc.v local.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance

:[270]
pop.v.v local._character
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.jumpMarker
pop.v.v local._marker
pushloc.v local._character
pushi.e -9
pushenv [272]

:[271]
pushloc.v local._marker
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
pushloc.v local._marker
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y
pushi.e 1
pop.v.i self.image_alpha

:[272]
popenv [271]
pushloc.v local._marker
pushi.e -9
pushenv [274]

:[273]
call.i instance_destroy(argc=0)
popz.v

:[274]
popenv [273]
push.v self.cameramarker
pushi.e -9
pushenv [276]

:[275]
call.i instance_destroy(argc=0)
popz.v

:[276]
popenv [275]
pushi.e 0
pop.v.i global.facing
pushi.e 276
pushenv [278]

:[277]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[278]
popenv [277]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [266]

:[279]
pushi.e -1
pop.v.i self.waitingAround
pushi.e 10
pop.v.i self.state

:[280]
push.v self.state
pushi.e 10
cmp.i.v EQ
bf [319]

:[281]
push.v self.uniqueRideExperience
pushi.e 1
cmp.i.v EQ
bf [283]

:[282]
push.v self.reverse
conv.v.b
not.b
b [284]

:[283]
push.e 0

:[284]
bf [286]

:[285]
push.v self.oX
pushi.e 3
conv.i.v
pushi.e -3
conv.i.v
call.i irandom_range(argc=2)
add.v.v
pop.v.v self.x
push.v self.oY
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i irandom_range(argc=2)
add.v.v
pop.v.v self.y

:[286]
push.v self.waitingAround
push.e 1
sub.i.v
dup.v 0
pop.v.v self.waitingAround
pushi.e 0
cmp.i.v LTE
bf [319]

:[287]
pushi.e 277
pushenv [289]

:[288]
pushi.e 0
pop.v.i self.charcon

:[289]
popenv [288]
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i self.myPitch
pushi.e 82
pushenv [291]

:[290]
pushi.e 0
pop.v.i self.cutscene

:[291]
popenv [290]
push.v self.riseSpeedBoostInitial
pop.v.v self.riseSpeedBoost
pushi.e 0
pop.v.i self.heldAmount
push.v self.returnOnFinish
conv.v.b
not.b
bf [306]

:[292]
push.v self.scoreboardExists
conv.v.b
bf [294]

:[293]
push.v self.reverse
conv.v.b
b [295]

:[294]
push.e 0

:[295]
bf [297]

:[296]
pushi.e 13
pop.v.i self.state
push.i 14483711
push.v self.scoreboard
pushi.e -9
pop.v.i [stacktop]self.scoreCol
b [298]

:[297]
pushi.e 1
pop.v.i self.state

:[298]
push.v self.reverse
conv.v.b
not.b
pop.v.b self.reverse
push.v self.reverse
conv.v.b
not.b
bf [300]

:[299]
push.v self.regenerateBullets
conv.v.b
b [301]

:[300]
push.e 0

:[301]
bf [305]

:[302]
push.v self.uniqueBulletPattern
pushi.e -1
cmp.i.v NEQ
bf [304]

:[303]
push.v self.uniqueBulletPattern
call.i gml_Script_scr_tb_pattern(argc=1)
popz.v
b [305]

:[304]
call.i gml_Script_scr_tb_pattern(argc=0)
popz.v

:[305]
b [307]

:[306]
pushi.e 11
pop.v.i self.state

:[307]
push.v self.uniqueRideExperience
pushi.e 3
cmp.i.v EQ
bf [309]

:[308]
pushi.e 12
pop.v.i self.state

:[309]
push.v self.uniqueRideExperience
pushi.e 4
cmp.i.v EQ
bf [311]

:[310]
push.v self.reverse
conv.v.b
b [312]

:[311]
push.e 0

:[312]
bf [314]

:[313]
pushi.e 12
pop.v.i self.state

:[314]
push.v self.uniqueRideExperience
pushi.e 1
cmp.i.v EQ
bf [316]

:[315]
push.v self.reverse
conv.v.b
b [317]

:[316]
push.e 0

:[317]
bf [319]

:[318]
pushi.e 14
pop.v.i self.state
pushi.e 30
pop.v.i self.waitingAround
push.v self.oX
pop.v.v self.x
push.v self.oY
pop.v.v self.y

:[319]
push.v self.state
pushi.e 11
cmp.i.v EQ
bf [324]

:[320]
push.v self.riseSpeedInitial
push.v self.ystart
push.v self.y
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.y
push.v self.spin
push.v self.riseSpeedInitial
sub.v.v
pop.v.v self.spin
push.v self.y
push.v self.ystart
cmp.v.v EQ
bf [324]

:[321]
pushi.e 1
pop.v.i self.state
push.v self.uniqueBulletPattern
pushi.e -1
cmp.i.v NEQ
bf [323]

:[322]
push.v self.uniqueBulletPattern
call.i gml_Script_scr_tb_pattern(argc=1)
popz.v
b [324]

:[323]
call.i gml_Script_scr_tb_pattern(argc=0)
popz.v

:[324]
push.v self.state
pushi.e 12
cmp.i.v EQ
bf [325]

:[325]
push.v self.state
pushi.e 13
cmp.i.v EQ
bf [334]

:[326]
pushi.e 360
push.v self.spin
sub.v.i
call.i abs(argc=1)
pushi.e 0
push.v self.spin
sub.v.i
call.i abs(argc=1)
cmp.v.v GT
pop.v.b local._closest
push.v self.spinSpeed
pushloc.v local._closest
conv.v.b
bf [328]

:[327]
pushi.e 0
conv.i.v
b [329]

:[328]
pushi.e 360
conv.i.v

:[329]
push.v self.spin
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.spin
push.v self.spin
pushi.e 0
cmp.i.v EQ
bt [331]

:[330]
push.v self.spin
pushi.e 360
cmp.i.v EQ
b [332]

:[331]
push.e 1

:[332]
bf [334]

:[333]
pushi.e 1
pop.v.i self.state

:[334]
push.v self.state
pushi.e 14
cmp.i.v EQ
bf [337]

:[335]
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y
push.v self.y
pushbltn.v builtin.room_height
pushi.e 500
add.i.v
cmp.v.v GT
bf [337]

:[336]
pushi.e 12
pop.v.i self.state

:[337]
pushi.e 0
pop.v.i local.i

:[338]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [368]

:[339]
pushi.e -90
pushi.e 120
pushloc.v local.i
mul.v.i
add.v.i
push.v self.spin
sub.v.v
pop.v.v local._charSpin
pushloc.v local._charSpin
push.v self.cupDistanceFromCenter
call.i lengthdir_x(argc=2)
pop.v.v self.cupx
pushloc.v local._charSpin
push.v self.cupDistanceFromCenter
push.d 0.5
mul.d.v
call.i lengthdir_y(argc=2)
pop.v.v self.cupy
push.v self.depth
push.v self.depthSeparation
sub.v.v
push.v self.cupy
sub.v.v
pop.v.v local._cupDepth
push.i 174236
setowner.e
pushi.e 2560
conv.i.v
pushi.e 2553
conv.i.v
pushi.e 2553
conv.i.v
pushi.e 2556
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pop.v.v local._spritesTea
push.v self.teaFilled
push.d 0.1
cmp.d.v GT
bf [341]

:[340]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v NEQ
b [342]

:[341]
push.e 0

:[342]
bf [354]

:[343]
push.v self.teaFilled
pushi.e 1
cmp.i.v GTE
bf [345]

:[344]
pushi.e 2561
conv.i.v
pushi.e 2553
conv.i.v
pushi.e 2554
conv.i.v
pushi.e 2558
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pop.v.v local._spritesTea

:[345]
push.v self.state
pushi.e 5
cmp.i.v EQ
bt [347]

:[346]
push.v self.state
pushi.e 6
cmp.i.v EQ
b [348]

:[347]
push.e 1

:[348]
bf [350]

:[349]
pushloc.v local.i
push.v self.partySize
cmp.v.v LT
b [351]

:[350]
push.e 0

:[351]
bf [353]

:[352]
push.i 133642
setowner.e
pushi.e -7
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self._spritesTea
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
pop.v.v [stacktop]self.sprite_index
b [354]

:[353]
push.i 133642
setowner.e
pushi.e -7
pushi.e 0
push.v [array]self._spritesTea
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
pop.v.v [stacktop]self.sprite_index

:[354]
push.i 232794
setowner.e
pushloc.v local._charSpin
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
pop.v.v [stacktop]self.spin
push.i 133617
setowner.e
push.v self.x
push.v self.cupx
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
push.v self.y
push.v self.cupy
add.v.v
pushi.e 16
sub.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133617
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.cupCharXnudge
add.v.v
pop.i.v [stacktop]self.x
push.i 133618
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.cupCharYnudge
add.v.v
pop.i.v [stacktop]self.y
push.i 133643
setowner.e
pushi.e 360
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._charSpin
call.i gml_Script_scr_wrap(argc=3)
pushi.e 30
rem.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.fadeOutOthers
conv.v.b
bf [357]

:[355]
push.v self.reverse
conv.v.b
not.b
bf [357]

:[356]
pushloc.v local.i
pushi.e 0
cmp.i.v NEQ
b [358]

:[357]
push.e 0

:[358]
bf [367]

:[359]
push.v self.state
pushi.e 5
cmp.i.v EQ
bf [366]

:[360]
pushi.e 120
pop.v.i local._fadeDistance
push.v self.uniqueRideExperience
pushi.e 4
cmp.i.v EQ
bf [362]

:[361]
pushi.e 900
pop.v.i local._fadeDistance

:[362]
pushloc.v local._destinationY
push.v self.y
sub.v.v
call.i abs(argc=1)
pushloc.v local._fadeDistance
cmp.v.v LTE
bf [364]

:[363]
push.i 133653
setowner.e
push.d 0.02
push.v self.riseSpeed
pushloc.v local._fadeDistance
div.v.v
add.v.d
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
push.v [stacktop]self.image_alpha
call.i gml_Script_scr_approach(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
pop.v.v [stacktop]self.image_alpha
b [365]

:[364]
push.i 133653
setowner.e
push.d 0.05
conv.d.v
push.d 0.15
conv.d.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
push.v [stacktop]self.image_alpha
call.i gml_Script_scr_approach(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
pop.v.v [stacktop]self.image_alpha

:[365]
b [367]

:[366]
push.i 133653
setowner.e
push.d 0.05
conv.d.v
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
push.v [stacktop]self.image_alpha
call.i gml_Script_scr_approach(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
pop.v.v [stacktop]self.image_alpha

:[367]
push.i 133637
setowner.e
pushloc.v local._cupDepth
pushi.e 1
sub.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
pop.v.v [stacktop]self.depth
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [338]

:[368]
push.v self.scoreboardExists
conv.v.b
bf [375]

:[369]
push.v self.scoreboard
pushi.e -9
pushenv [374]

:[370]
push.v other.theScore
pop.v.v local._theCurrentScore
push.v other.y
pushi.e 92
add.i.v
pop.v.v self.y
pushloc.v local._theCurrentScore
pop.v.v self.theScore
push.v other.state
push.d 6.1
cmp.d.v EQ
bf [372]

:[371]
push.v other.scoreboardGoal
pop.v.v self.theScore

:[372]
pushloc.v local._theCurrentScore
push.v other.scoreboardGoal
div.v.v
push.v self.image_number
pushi.e 1
sub.i.v
mul.v.v
call.i floor(argc=1)
pop.v.v self.image_index
pushloc.v local._theCurrentScore
push.v other.scoreboardGoal
cmp.v.v GTE
bf [374]

:[373]
push.v self.image_number
pushi.e 1
sub.i.v
pop.v.v self.image_index
push.i 65280
pop.v.i self.scoreCol

:[374]
popenv [370]

:[375]
pushbltn.v builtin.room
pushi.e 89
cmp.i.v EQ
bf [383]

:[376]
push.v self.state
pushi.e 5
cmp.i.v EQ
bf [379]

:[377]
push.v self.idletimer
pushi.e 30
cmp.i.v GT
bf [379]

:[378]
pushi.e -5
pushi.e 442
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [380]

:[379]
push.e 0

:[380]
bf [382]

:[381]
pushi.e 1
pop.v.b self.drawtutorialarrows
b [383]

:[382]
pushi.e 0
pop.v.b self.drawtutorialarrows

:[383]
push.v self.wooshnoise
pushi.e 1
cmp.i.v EQ
bf [385]

:[384]
push.d 0.6
conv.d.v
pushi.e 180
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
pop.v.v local.woosh
pushi.e 0
conv.i.v
push.d 0.1
conv.d.v
pushloc.v local.woosh
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.woosh
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 0
pop.v.i self.wooshnoise

:[385]
push.v self.bouncenoise
conv.v.b
bf [389]

:[386]
pushi.e 160
conv.i.v
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [388]

:[387]
push.d 1.5
conv.d.v
pushi.e 160
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v

:[388]
pushi.e 0
pop.v.i self.bouncenoise

:[389]
push.v self.swallownoise
conv.v.b
bf [end]

:[390]
pushi.e 180
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.swallownoise

:[end]