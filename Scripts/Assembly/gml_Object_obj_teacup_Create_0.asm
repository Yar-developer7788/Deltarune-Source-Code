.localvar 2 arguments
.localvar 36379 _offsetY 17834
.localvar 36380 _offsetX 17836
.localvar 107 i 17838
.localvar 36382 _check 17840

:[0]
pushi.e 0
pop.v.i self.idletimer
pushi.e 0
pop.v.b self.drawtutorialarrows
pushi.e 0
pop.v.i self.drawtutorialarrows_alpha
push.i 900000
pop.v.i self.depthBase
pushi.e 200
pop.v.i self.depthSeparation
push.v self.depthBase
pop.v.v self.depth
pushi.e 2
pop.v.i self.image_xscale
push.v self.image_xscale
pop.v.v self.image_yscale
pushi.e 0
pop.v.i self.movedSoFar
pushi.e 0
pop.v.i self.state
pushi.e 1
pop.v.i self.partySize
pushi.e 0
pop.v.b self.reverse
pushi.e 0
pop.v.i self.fixcamera
pushi.e 0
pop.v.i self.spin
pushi.e 2550
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.screwSegHeight
pushi.e 0
pop.v.i self.camTargetHeight
pushi.e 2
pop.v.i self.camFollowMultiplier
pushi.e -20
pop.v.i self.cupCharXnudge
pushi.e -54
pop.v.i self.cupCharYnudge
pushi.e 112
pop.v.i self.cupDistanceFromCenter
pushi.e 0
pop.v.i self.cupCharExists
pushi.e 0
pop.v.b self.held
pushi.e 0
pop.v.b self.heldThisRide
pushi.e 0
pop.v.i self.heldAmount
pushi.e 0
pop.v.b self.debugHitThisFrame
pushi.e 2
pop.v.i self.spinSpeedInitial
push.i 174176
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pop.v.v self.jumpMarker
pushi.e -1
pop.v.i self.shadowSurf
push.v self.riseSpeedBoost
pop.v.v self.riseSpeedBoostInitial
pushi.e 0
pop.v.i self.theScore
pushi.e 1
pop.v.i self.myPitch
pushi.e -4
pop.v.i self.scoreboard
pushi.e 60
pop.v.i self.teaBullets
pushi.e 0
pop.v.i self.teaFilled
pushi.e 0
pop.v.b self.rideToRide
pushi.e -4
pop.v.i self.crusher
pushi.e 0
pop.v.b self.crushed
push.i 14483711
pop.v.i self.scoreCol
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.shaketimer
pushi.e 0
pop.v.i self.remcamerax
pushi.e 0
pop.v.i self.wooshnoise
pushi.e 0
pop.v.i self.swallownoise
pushi.e 0
pop.v.i self.bouncenoise
pushi.e 0
pop.v.i self.teatimer
pushi.e 16
pop.v.i self.hitboxxa
pushi.e 24
pop.v.i self.hitboxxb
pushi.e 24
pop.v.i self.hitboxya
pushi.e 40
pop.v.i self.hitboxyb
push.i 174196
setowner.e
pushi.e 32
conv.i.v
pushi.e -32
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pop.v.v local._offsetY
push.i 174197
setowner.e
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 64
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pop.v.v local._offsetX
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [7]

:[2]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.endPos
pop.v.v local._check
pushi.e -7
pushi.e 0
push.v [array]self._check
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [4]

:[3]
push.i 174199
setowner.e
push.v self.endY
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._offsetY
add.v.v
pushi.e 64
sub.i.v
push.v self.x
pushi.e 200
add.i.v
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._offsetX
add.v.v
call.i @@NewGMLArray@@(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.endPos

:[4]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.startPos
pop.v.v local._check
pushi.e -7
pushi.e 0
push.v [array]self._check
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [6]

:[5]
push.i 174200
setowner.e
push.v self.ystart
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._offsetY
add.v.v
pushi.e 64
sub.i.v
push.v self.x
pushi.e 200
sub.i.v
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._offsetX
sub.v.v
call.i @@NewGMLArray@@(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.startPos

:[6]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[7]
pushi.e 0
pop.v.i local.i

:[8]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [12]

:[9]
push.i 174201
setowner.e
pushi.e 1098
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.cup_char
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.cup_char
pushi.e -9
pushenv [11]

:[10]
pushi.e 2555
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.spin

:[11]
popenv [10]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [8]

:[12]
push.v self.startOffset
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.state
push.v self.y
push.v self.startOffset
add.v.v
pop.v.v self.y

:[14]
push.v self.scoreboardExists
conv.v.b
bf [18]

:[15]
pushi.e 1093
conv.i.v
push.v self.depth
pushi.e 9999
sub.i.v
push.v self.y
push.v self.x
call.i instance_create_depth(argc=4)
pop.v.v self.scoreboard
push.v self.scoreboard
pushi.e -9
pushenv [17]

:[16]
push.i 14483711
pop.v.i self.scoreCol

:[17]
popenv [16]

:[18]
push.v self.uniqueBulletPattern
pushi.e -1
cmp.i.v NEQ
bf [20]

:[19]
push.v self.uniqueBulletPattern
call.i gml_Script_scr_tb_pattern(argc=1)
popz.v
b [21]

:[20]
call.i gml_Script_scr_tb_pattern(argc=0)
popz.v

:[21]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [29]

:[22]
pushbltn.v builtin.room
pushi.e 185
cmp.i.v EQ
bf [24]

:[23]
pushi.e -5
pushi.e 33
push.v [array]self.tempflag
pushi.e 0
cmp.i.v GT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 600
pop.v.i self.y
pushi.e 12
pop.v.i self.riseSpeedInitial
pushi.e 12
pop.v.i self.riseSpeed

:[27]
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [29]

:[28]
pushi.e 999
pop.v.i self.state

:[29]
pushi.e -10
pop.v.i self.looptrack

:[end]