.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.cameraActive
call.i gml_Script_camerax(argc=0)
pop.v.v self.cX
call.i gml_Script_cameray(argc=0)
pop.v.v self.cY
push.v self.currentView
pop.v.v self.cV
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.ignoreFreezeArea
pushi.e -2
cmp.i.v NEQ
bf [2]

:[1]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.ignoreFreezeArea
pop.v.v self.ignoreFreeze

:[2]
push.v self.ignoreFreeze
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
pushglb.v global.interact
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.cameraActive

:[5]
push.v self.ignoreCutscene
pushi.e 0
cmp.i.v EQ
bf [8]

:[6]
push.v self.cutscene
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.cameraActive

:[8]
push.v self.cameraActive
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
pushi.e 0
pop.v.i self.xAdd
pushi.e 0
pop.v.i self.yAdd
pushi.e 0
pop.v.i self.cameraFinished
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panStyle
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panSpeedInit
pop.v.v self.panSpeed
push.v self.finalY
push.v self.finalX
push.v self.cY
push.v self.cX
call.i point_direction(argc=4)
pop.v.v self.panDir
push.v self.panDir
push.v self.panSpeed
call.i lengthdir_x(argc=2)
pop.v.v self.xAdd
push.v self.panDir
push.v self.panSpeed
call.i lengthdir_y(argc=2)
pop.v.v self.yAdd
push.v self.cX
push.v self.xAdd
add.v.v
pop.v.v self.nextX
push.v self.cY
push.v self.yAdd
add.v.v
pop.v.v self.nextY

:[11]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panStyle
pushi.e 1
cmp.i.v EQ
bf [38]

:[12]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObject
push.v self.remTargetObject
cmp.v.v NEQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.lerpProgress
b [20]

:[14]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObject
pushi.e -4
cmp.i.v EQ
bf [20]

:[15]
push.v self.remFinalX
push.v self.finalX
cmp.v.v NEQ
bt [17]

:[16]
push.v self.remFinalY
push.v self.finalY
cmp.v.v NEQ
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
pushi.e 0
pop.v.i self.lerpProgress

:[20]
push.v self.remCurrentView
push.v self.cV
cmp.v.v NEQ
bf [22]

:[21]
pushi.e 0
pop.v.i self.lerpProgress

:[22]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.lerpSmooth
pushi.e 0
cmp.i.v EQ
bf [26]

:[23]
push.v self.lerpProgress
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.v self.cX
pop.v.v self.startLerpX
push.v self.cY
pop.v.v self.startLerpY

:[25]
b [27]

:[26]
push.v self.cX
pop.v.v self.startLerpX
push.v self.cY
pop.v.v self.startLerpY

:[27]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.lerpTime
pushi.e 0
cmp.i.v NEQ
bf [29]

:[28]
push.v self.lerpProgress
pushi.e 1
conv.i.d
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.lerpTime
div.v.d
add.v.v
pop.v.v self.lerpProgress
b [30]

:[29]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.lerpForceAmount
pop.v.v self.lerpProgress

:[30]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.lerpProgress
call.i clamp(argc=3)
pop.v.v self.lerpProgress
push.v self.lerpProgress
push.v self.finalX
push.v self.startLerpX
call.i lerp(argc=3)
pop.v.v self.nextX
push.v self.lerpProgress
push.v self.finalY
push.v self.startLerpY
call.i lerp(argc=3)
pop.v.v self.nextY
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.lerpForceAmount
pushi.e 0
cmp.i.v NEQ
bf [32]

:[31]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.lerpSmooth
pushi.e 1
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [38]

:[34]
push.v self.nextX
push.v self.finalX
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LT
bf [36]

:[35]
push.v self.finalX
pop.v.v self.nextX

:[36]
push.v self.nextY
push.v self.finalY
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LT
bf [38]

:[37]
push.v self.finalY
pop.v.v self.nextY

:[38]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panStyle
pushi.e 2
cmp.i.v EQ
bf [57]

:[39]
push.v self.remCurrentView
push.v self.cV
cmp.v.v NEQ
bt [41]

:[40]
push.v self.accelInit
pushi.e 0
cmp.i.v EQ
b [42]

:[41]
push.e 1

:[42]
bf [44]

:[43]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panSpeedInit
pop.v.v self.panSpeed
push.v self.panIdealDir
push.v self.panSpeed
call.i lengthdir_x(argc=2)
pop.v.v self.panXSpeed
push.v self.panIdealDir
push.v self.panSpeed
call.i lengthdir_y(argc=2)
pop.v.v self.panYSpeed
pushi.e 1
pop.v.i self.accelInit

:[44]
push.v self.finalY
push.v self.finalX
push.v self.cY
push.v self.cX
call.i point_direction(argc=4)
pop.v.v self.panIdealDir
push.v self.panIdealDir
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panSpeedMax
call.i lengthdir_x(argc=2)
pop.v.v self.panXSpeedMax
push.v self.panIdealDir
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panSpeedMax
call.i lengthdir_y(argc=2)
pop.v.v self.panYSpeedMax
push.v self.panYSpeed
push.v self.panXSpeed
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_direction(argc=4)
pop.v.v self.panDir
push.v self.panIdealDir
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panAccel
call.i lengthdir_x(argc=2)
pop.v.v self.panXAccel
push.v self.panIdealDir
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panAccel
call.i lengthdir_y(argc=2)
pop.v.v self.panYAccel
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panDecelBool
pushi.e 1
cmp.i.v EQ
bf [56]

:[45]
push.v self.finalY
push.v self.finalX
push.v self.cY
push.v self.cX
call.i point_distance(argc=4)
push.v self.panYSpeed
push.v self.panXSpeed
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_distance(argc=4)
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panDecelFactor
div.v.v
cmp.v.v LT
bf [56]

:[46]
push.v self.panXAccel
neg.v
pop.v.v self.panXAccel
push.v self.panYAccel
neg.v
pop.v.v self.panYAccel
push.v self.panXAccel
call.i sign(argc=1)
push.v self.panXSpeed
call.i sign(argc=1)
cmp.v.v EQ
bt [48]

:[47]
push.v self.panXSpeed
pushi.e 0
cmp.i.v EQ
b [49]

:[48]
push.e 1

:[49]
bf [51]

:[50]
pushi.e 0
pop.v.i self.panXAccel

:[51]
push.v self.panYAccel
call.i sign(argc=1)
push.v self.panYSpeed
call.i sign(argc=1)
cmp.v.v EQ
bt [53]

:[52]
push.v self.panYSpeed
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 1

:[54]
bf [56]

:[55]
pushi.e 0
pop.v.i self.panYAccel

:[56]
push.v self.panXSpeedMax
call.i abs(argc=1)
push.v self.panXSpeedMax
call.i abs(argc=1)
neg.v
push.v self.panXSpeed
push.v self.panXAccel
add.v.v
call.i clamp(argc=3)
pop.v.v self.panXSpeed
push.v self.panYSpeedMax
call.i abs(argc=1)
push.v self.panYSpeedMax
call.i abs(argc=1)
neg.v
push.v self.panYSpeed
push.v self.panYAccel
add.v.v
call.i clamp(argc=3)
pop.v.v self.panYSpeed
push.v self.panXSpeed
pop.v.v self.xAdd
push.v self.panYSpeed
pop.v.v self.yAdd
push.v self.cX
push.v self.xAdd
add.v.v
pop.v.v self.nextX
push.v self.cY
push.v self.yAdd
add.v.v
pop.v.v self.nextY

:[57]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panStyle
pushi.e 3
cmp.i.v EQ
bf [59]

:[58]
push.v self.finalX
pop.v.v self.nextX
push.v self.finalY
pop.v.v self.nextY

:[59]
push.v self.xAdd
pushi.e 0
cmp.i.v GT
bf [61]

:[60]
push.v self.finalX
push.v self.nextX
call.i min(argc=2)
pop.v.v self.nextX

:[61]
push.v self.xAdd
pushi.e 0
cmp.i.v LT
bf [63]

:[62]
push.v self.finalX
push.v self.nextX
call.i max(argc=2)
pop.v.v self.nextX

:[63]
push.v self.yAdd
pushi.e 0
cmp.i.v GT
bf [65]

:[64]
push.v self.finalY
push.v self.nextY
call.i min(argc=2)
pop.v.v self.nextY

:[65]
push.v self.yAdd
pushi.e 0
cmp.i.v LT
bf [67]

:[66]
push.v self.finalY
push.v self.nextY
call.i max(argc=2)
pop.v.v self.nextY

:[67]
push.v self.nextX
pop.v.v self.cX
push.v self.nextY
pop.v.v self.cY
push.v self.cX
push.v self.finalX
cmp.v.v EQ
bt [70]

:[68]
push.v self.cX
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panLimitLeft
cmp.v.v LT
bt [70]

:[69]
push.v self.cX
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panLimitRight
cmp.v.v GT
b [71]

:[70]
push.e 1

:[71]
bf [78]

:[72]
push.v self.cY
push.v self.finalY
cmp.v.v EQ
bt [75]

:[73]
push.v self.cY
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panLimitTop
cmp.v.v LT
bt [75]

:[74]
push.v self.cY
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panLimitBottom
cmp.v.v GT
b [76]

:[75]
push.e 1

:[76]
bf [78]

:[77]
pushi.e 1
pop.v.i self.cameraFinished

:[78]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panLimitRight
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panLimitLeft
push.v self.cX
call.i clamp(argc=3)
pop.v.v self.cX
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panLimitBottom
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.panLimitTop
push.v self.cY
call.i clamp(argc=3)
pop.v.v self.cY
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.ignoreX
conv.v.b
not.b
bf [80]

:[79]
push.v self.cX
call.i gml_Script_camerax_set(argc=1)
popz.v

:[80]
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.ignoreY
conv.v.b
not.b
bf [82]

:[81]
push.v self.cY
call.i gml_Script_cameray_set(argc=1)
popz.v

:[82]
push.v self.finalX
pop.v.v self.remFinalX
push.v self.finalY
pop.v.v self.remFinalY
pushi.e -1
push.v self.cV
conv.v.i
push.v [array]self.targetObject
pop.v.v self.remTargetObject
push.v self.cV
pop.v.v self.remCurrentView

:[end]