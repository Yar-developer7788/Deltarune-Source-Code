.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.cX
pushi.e 0
pop.v.i self.cY
pushi.e 0
pop.v.i self.nextX
pushi.e 0
pop.v.i self.nextY
pushi.e 0
pop.v.i self.finalX
pushi.e 0
pop.v.i self.finalY
pushi.e 0
pop.v.i self.remFinalX
pushi.e 0
pop.v.i self.remFinalY
pushi.e 0
pop.v.i self.remCurrentView
pushi.e 82
pop.v.i self.remTargetObject
pushi.e 0
pop.v.i self.lerpProgress
pushi.e 0
pop.v.i self.startLerpX
pushi.e 0
pop.v.i self.startLerpY
pushi.e 0
pop.v.i self.panDir
pushi.e 0
pop.v.i self.panSpeed
pushi.e 0
pop.v.i self.panIdealDir
pushi.e 0
pop.v.i self.panXSpeed
pushi.e 0
pop.v.i self.panYSpeed
pushi.e 0
pop.v.i self.cameraFinished
pushi.e 0
pop.v.i self.accelInit
pushi.e 0
pop.v.i self.specialCameraInit
pushi.e 0
pop.v.i self.currentView
pushi.e 0
pop.v.i self.ignoreFreeze
pushi.e 0
pop.v.i self.ignoreCutscene
pushi.e 0
pop.v.i self.cutscene
pushi.e 4
pop.v.i self.maxViews
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.maxViews
cmp.v.v LT
bf [3]

:[2]
push.i 167239
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.targetX
push.i 167592
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.targetY
push.i 174599
setowner.e
pushi.e -4
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.targetObject
push.i 174600
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.targetObjectCenter
push.i 174601
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.targetXRelative
push.i 167653
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.targetYRelative
push.i 174602
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.specialCamera
push.i 174603
setowner.e
pushi.e 60
pushglb.v global.darkzone
pushi.e 1
add.i.v
mul.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.specialCameraBorderMax
push.i 174604
setowner.e
pushi.e 0
conv.b.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ignoreTargetObjectX
push.i 174605
setowner.e
pushi.e 0
conv.b.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ignoreTargetObjectY
push.i 174606
setowner.e
pushi.e 0
conv.b.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ignoreX
push.i 174607
setowner.e
pushi.e 0
conv.b.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ignoreY
push.i 174608
setowner.e
pushi.e 16
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.panSpeedInit
push.i 174609
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.lerpTime
push.i 174610
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.lerpSmooth
push.i 174611
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.lerpForceAmount
push.i 174612
setowner.e
pushi.e 32
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.panSpeedMax
push.i 174613
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.panAccel
push.i 174614
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.panDecelBool
push.i 174615
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.panStyle
push.i 174616
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.panLimitLeft
push.i 174617
setowner.e
pushbltn.v builtin.room_width
call.i gml_Script_camerawidth(argc=0)
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.panLimitRight
push.i 174618
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.panLimitTop
push.i 174619
setowner.e
pushbltn.v builtin.room_height
call.i gml_Script_cameraheight(argc=0)
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.panLimitBottom
push.i 167596
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ignoreFreezeArea
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.i 174599
setowner.e
pushi.e 82
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.targetObject
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [end]

:[4]
push.i 174600
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.targetObjectCenter
pushi.e 11
pop.v.i self.targetXRelative
pushi.e 17
pop.v.i self.targetYRelative

:[end]