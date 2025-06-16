.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.freeze
pushi.e 0
pop.v.b self.mouseSpawn
pushi.e -1
pop.v.i self.freezespawn
pushi.e 0
pop.v.i self.hasbegun
pushi.e -5
pushi.e 379
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
pushglb.v global.plot
pushi.e 78
cmp.i.v LT
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
push.i 169016
setowner.e
pushi.e 1184
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.plat
pushi.e -1
pushi.e 0
push.v [array]self.plat
pushi.e -9
pushenv [6]

:[5]
push.v self.lx
pop.v.v self.x
push.v self.ry
pop.v.v self.y
pushi.e 3
pop.v.i self.phase
pushi.e 1
pop.v.i self.starter

:[6]
popenv [5]
pushi.e 1184
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.plat
pushi.e -1
pushi.e 1
push.v [array]self.plat
pushi.e -9
pushenv [8]

:[7]
push.v self.rx
pop.v.v self.x
push.v self.ry
pop.v.v self.y
pushi.e 1
pop.v.i self.phase

:[8]
popenv [7]
pushi.e 1
pop.v.i self.currentPlatform
pushi.e 0
pop.v.i self.waitbuffer
pushi.e 0
pop.v.i self.makenewplatform
pushi.e 0
pop.v.i self.noelle
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.active

:[end]