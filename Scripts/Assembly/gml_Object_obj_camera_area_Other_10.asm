.localvar 2 arguments

:[0]
pushi.e 1158
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.overrideDefaultValues
conv.v.b
bf [16]

:[2]
push.v self.hasTargetObject
conv.v.b
bf [4]

:[3]
push.i 240135
setowner.e
push.v self.targetObject
pushi.e 1158
push.v self.myView
conv.v.i
pop.v.v [array]self.targetObject

:[4]
push.v self.panLimitBottom
pushi.e -1
cmp.i.v NEQ
bf [6]

:[5]
push.i 240155
setowner.e
push.v self.panLimitBottom
pushi.e 1158
push.v self.myView
conv.v.i
pop.v.v [array]self.panLimitBottom

:[6]
push.v self.panLimitTop
pushi.e -1
cmp.i.v NEQ
bf [8]

:[7]
push.v self.panLimitBottom
pushi.e 1158
push.v self.myView
conv.v.i
pop.v.v [array]self.panLimitBottom

:[8]
push.v self.panLimitRight
pushi.e -1
cmp.i.v NEQ
bf [10]

:[9]
push.v self.panLimitBottom
pushi.e 1158
push.v self.myView
conv.v.i
pop.v.v [array]self.panLimitBottom

:[10]
push.v self.panLimitLeft
pushi.e -1
cmp.i.v NEQ
bf [12]

:[11]
push.v self.panLimitBottom
pushi.e 1158
push.v self.myView
conv.v.i
pop.v.v [array]self.panLimitBottom

:[12]
push.i 240140
setowner.e
push.v self.useTargetX
pushi.e 1158
push.v self.myView
conv.v.i
pop.v.v [array]self.ignoreTargetObjectX
push.i 240141
setowner.e
push.v self.useTargetY
pushi.e 1158
push.v self.myView
conv.v.i
pop.v.v [array]self.ignoreTargetObjectY
push.v self.ignoreFreezeArea
pushi.e -2
cmp.i.v NEQ
bf [14]

:[13]
push.i 233132
setowner.e
push.v self.ignoreFreezeArea
pushi.e 1158
push.v self.myView
conv.v.i
pop.v.v [array]self.ignoreFreezeArea

:[14]
push.i 232775
setowner.e
push.v self.targetX
pushi.e 1158
push.v self.myView
conv.v.i
pop.v.v [array]self.targetX
push.i 233128
setowner.e
push.v self.targetY
pushi.e 1158
push.v self.myView
conv.v.i
pop.v.v [array]self.targetY
push.i 240137
setowner.e
push.v self.targetXRelative
pushi.e 1158
push.v self.myView
conv.v.i
pop.v.v [array]self.targetXRelative
push.i 233189
setowner.e
push.v self.targetYRelative
pushi.e 1158
push.v self.myView
conv.v.i
pop.v.v [array]self.targetYRelative
push.i 240151
setowner.e
push.v self.panStyle
pushi.e 1158
push.v self.myView
conv.v.i
pop.v.v [array]self.panStyle
push.v self.panSpeedInit
pushi.e -1
cmp.i.v NEQ
bf [16]

:[15]
push.i 240144
setowner.e
push.v self.panSpeedInit
pushi.e 1158
push.v self.myView
conv.v.i
pop.v.v [array]self.panSpeedInit

:[16]
pushi.e 1
pop.v.i self.init

:[end]