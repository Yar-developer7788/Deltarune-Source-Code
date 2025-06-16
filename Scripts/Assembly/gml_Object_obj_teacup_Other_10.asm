.localvar 2 arguments
.localvar 36424 _camXto 17891
.localvar 36425 _camYto 17892
.localvar 36426 _camW 17893
.localvar 36427 _panMax 17894
.localvar 107 i 17895
.localvar 36408 _character 17896
.localvar 36428 _cup 17897
.localvar 36430 _jumpInDuration 17899
.localvar 36431 _rollSprites 17900
.localvar 36432 _rideToRide 17902
.localvar 19925 _spr 17903
.localvar 9183 _xx 17904
.localvar 9185 _yy 17905
.localvar 36433 nearobj 17906

:[0]
push.v self.uniqueRideExperience
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.reverse
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
pushi.e -5
pushi.e 373
push.v [array]self.flag
pushi.e 1
cmp.i.v NEQ
bf [6]

:[5]
exit.i

:[6]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [46]

:[7]
pushi.e 1
pop.v.i global.interact
pushi.e 82
pushenv [9]

:[8]
pushi.e 1
pop.v.i self.cutscene
pushi.e 1
pop.v.i self.battlemode
pushi.e 0
pop.v.i self.drawbattlemode

:[9]
popenv [8]
call.i gml_Script_camerax(argc=0)
pop.v.v local._camXto
call.i gml_Script_cameray(argc=0)
pop.v.v local._camYto
push.v self.centerX
conv.v.b
bf [11]

:[10]
call.i gml_Script_camerawidth(argc=0)
pop.v.v local._camW
pushbltn.v builtin.room_width
pushloc.v local._camW
sub.v.v
pushi.e 0
conv.i.v
push.v self.x
pushloc.v local._camW
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i clamp(argc=3)
pop.v.v local._camXto

:[11]
push.v self.centerY
conv.v.b
bf [13]

:[12]
push.v self.y
push.v self.camTargetHeight
sub.v.v
pop.v.v local._camYto
pushloc.v local._camYto
call.i show_debug_message(argc=1)
popz.v

:[13]
pushi.e 8
pop.v.i local._panMax
push.v self.rideToRide
conv.v.b
bf [15]

:[14]
pushi.e 4
pop.v.i local._panMax

:[15]
push.v self.centerX
conv.v.b
bt [17]

:[16]
push.v self.centerY
conv.v.b
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
pushi.e 8
conv.i.v
pushloc.v local._camYto
pushloc.v local._camXto
call.i gml_Script_scr_pan_lerp(argc=3)
popz.v

:[20]
push.v self.camFollow
conv.v.b
bf [22]

:[21]
push.v self.camFollowAfter
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [24]

:[24]
pushi.e 1
pop.v.i self.partySize
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [26]

:[25]
push.v self.partySize
push.e 1
add.i.v
pop.v.v self.partySize

:[26]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [28]

:[27]
push.v self.partySize
push.e 1
add.i.v
pop.v.v self.partySize

:[28]
pushi.e 160
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[29]
pushloc.v local.i
push.v self.partySize
cmp.v.v LT
bf [45]

:[30]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e 82
conv.i.v
b [33]

:[32]
pushi.e -5
pushloc.v local.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance

:[33]
pop.v.v local._character
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pop.v.v local._cup
push.v self.jumpInDuration
pop.v.v local._jumpInDuration
push.i 174247
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
pop.v.v local._rollSprites
push.v self.rideToRide
pop.v.v local._rideToRide
pushi.e 1
pop.v.b local._rideToRide
pushloc.v local._character
pushi.e -9
pushenv [44]

:[34]
push.v self.sprite_index
pop.v.v local._spr
pushloc.v local._rideToRide
conv.v.b
bf [36]

:[35]
pushi.e -7
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self._rollSprites
pop.v.v local._spr

:[36]
pushi.e 0
pop.v.i self.image_alpha
push.i 165705
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.facing
pushi.e 0
pop.v.i global.facing
pushloc.v local._spr
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -9
pushenv [43]

:[37]
pushloc.v local._rideToRide
conv.v.b
bf [39]

:[38]
push.d 0.5
pop.v.d self.image_speed

:[39]
pushloc.v local._cup
pushi.e -9
push.v [stacktop]self.x
pop.v.v local._xx
pushloc.v local._cup
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
sub.i.v
pop.v.v local._yy
call.i gml_Script_scr_depth(argc=0)
popz.v
pushloc.v local._jumpInDuration
pushloc.v local._rideToRide
conv.v.b
bf [41]

:[40]
pushi.e 16
conv.i.v
b [42]

:[41]
pushi.e 8
conv.i.v

:[42]
pushloc.v local._yy
pushloc.v local._xx
call.i gml_Script_scr_jump_to_point(argc=4)
popz.v
pushloc.v local._jumpInDuration
push.v self.id
call.i gml_Script_scr_doom(argc=2)
popz.v

:[43]
popenv [37]

:[44]
popenv [34]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [29]

:[45]
pushi.e 2
pop.v.i self.state
push.v self.jumpInDuration
pop.v.v self.waitingAround

:[46]
push.v self.state
pushi.e 999
cmp.i.v EQ
bf [48]

:[47]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [49]

:[48]
push.e 0

:[49]
bf [end]

:[50]
pushi.e 133
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v local.nearobj
pushloc.v local.nearobj
pushi.e 100
cmp.i.v GT
bf [end]

:[51]
pushloc.v local.nearobj
pushi.e -9
pushenv [53]

:[52]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[53]
popenv [52]

:[end]