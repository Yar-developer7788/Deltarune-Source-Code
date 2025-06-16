.localvar 2 arguments

:[0]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObject
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [26]

:[1]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.specialCamera
conv.v.b
bf [19]

:[2]
push.v self.specialCameraInit
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObject
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.remObjectX
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObject
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.remObjectY
pushi.e 1
pop.v.i self.specialCameraInit
pushi.e 0
pop.v.i self.pullXTimer
pushi.e 0
pop.v.i self.pullYTimer
pushi.e 0
pop.v.i self.relXLerpAmt
pushi.e 0
pop.v.i self.relYLerpAmt
b [19]

:[4]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObject
pushi.e -9
push.v [stacktop]self.x
push.v self.remObjectX
sub.v.v
pop.v.v self.movedX
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObject
pushi.e -9
push.v [stacktop]self.y
push.v self.remObjectY
sub.v.v
pop.v.v self.movedY
push.i 174603
setowner.e
pushi.e 240
conv.i.v
pushi.e -1
push.v self.cV
conv.v.i
pop.v.v [array]self.specialCameraBorderMax
pushi.e 0
pop.v.i self.idealRelX
pushi.e 0
pop.v.i self.idealRelY
push.d 0.1
pop.v.d self.relXLerpAmt
push.d 0.1
pop.v.d self.relYLerpAmt
push.v self.movedX
call.i abs(argc=1)
pushi.e 8
conv.i.d
pushglb.v global.darkzone
pushi.e 1
add.i.v
div.v.d
cmp.v.v GT
bf [8]

:[5]
push.v self.pullXTimer
push.e 1
add.i.v
pop.v.v self.pullXTimer
push.v self.pullXTimer
pushi.e 30
cmp.i.v GT
bf [7]

:[6]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.specialCameraBorderMax
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.specialCameraBorderMax
neg.v
push.v self.movedX
pushi.e 16
mul.i.v
call.i clamp(argc=3)
pop.v.v self.idealRelX
push.d 0.02
pop.v.d self.relXLerpAmt

:[7]
b [9]

:[8]
pushi.e 0
pop.v.i self.pullXTimer

:[9]
push.v self.movedY
call.i abs(argc=1)
pushi.e 8
conv.i.d
pushglb.v global.darkzone
pushi.e 1
add.i.v
div.v.d
cmp.v.v GT
bf [13]

:[10]
push.v self.pullYTimer
push.e 1
add.i.v
pop.v.v self.pullYTimer
push.v self.pullYTimer
pushi.e 30
cmp.i.v GT
bf [12]

:[11]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.specialCameraBorderMax
push.d 0.7
mul.d.v
call.i round(argc=1)
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.specialCameraBorderMax
push.d 0.7
mul.d.v
call.i round(argc=1)
neg.v
push.v self.movedY
pushi.e 16
mul.i.v
call.i clamp(argc=3)
pop.v.v self.idealRelY

:[12]
b [14]

:[13]
pushi.e 0
pop.v.i self.pullYTimer

:[14]
push.v self.idealRelX
call.i abs(argc=1)
pushi.e 2
cmp.i.v LT
bf [16]

:[15]
pushi.e 0
pop.v.i self.idealRelX

:[16]
push.v self.idealRelY
call.i abs(argc=1)
pushi.e 2
cmp.i.v LT
bf [18]

:[17]
pushi.e 0
pop.v.i self.idealRelY

:[18]
push.i 174601
setowner.e
push.v self.relXLerpAmt
push.v self.idealRelX
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetXRelative
call.i lerp(argc=3)
pushi.e -1
push.v self.cV
conv.v.i
pop.v.v [array]self.targetXRelative
push.i 167653
setowner.e
push.v self.relYLerpAmt
push.v self.idealRelY
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetYRelative
call.i lerp(argc=3)
pushi.e -1
push.v self.cV
conv.v.i
pop.v.v [array]self.targetYRelative
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObject
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.remObjectX
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObject
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.remObjectY

:[19]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObject
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetXRelative
add.v.v
call.i gml_Script_camerawidth(argc=0)
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.finalX
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObject
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetYRelative
add.v.v
call.i gml_Script_cameraheight(argc=0)
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.finalY
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObjectCenter
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.v self.finalX
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObject
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.finalX
push.v self.finalY
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObject
pushi.e -9
push.v [stacktop]self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.finalY

:[21]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.ignoreTargetObjectX
conv.v.b
bf [23]

:[22]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetX
pop.v.v self.finalX

:[23]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.ignoreTargetObjectY
conv.v.b
bf [25]

:[24]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetY
pop.v.v self.finalY

:[25]
b [28]

:[26]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObject
pushi.e -4
cmp.i.v EQ
bf [28]

:[27]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetX
pop.v.v self.finalX
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetY
pop.v.v self.finalY

:[28]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panLimitRight
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panLimitLeft
push.v self.finalX
call.i clamp(argc=3)
pop.v.v self.finalX
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panLimitBottom
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panLimitTop
push.v self.finalY
call.i clamp(argc=3)
pop.v.v self.finalY

:[end]