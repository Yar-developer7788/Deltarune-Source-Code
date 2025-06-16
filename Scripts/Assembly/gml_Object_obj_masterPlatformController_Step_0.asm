.localvar 2 arguments

:[0]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
pushi.e 1169
conv.i.v
push.v 1189.noelle
pushi.e -9
push.v [stacktop]self.y
push.v 1189.noelle
pushi.e -9
push.v [stacktop]self.x
pushi.e 4
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.noelle
push.v self.noelle
pushi.e -9
pushenv [4]

:[2]
pushi.e 1
pop.v.i self.hastarget
pushi.e 1
pop.v.i self.jumppuzzle
pushi.e 1183
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e 1183
pushi.e 0
push.v [array]self.plat
pop.v.v self.target

:[4]
popenv [2]
pushi.e 1189
pushenv [8]

:[5]
push.v self.noelle
pushi.e -9
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]

:[8]
popenv [5]
pushi.e 1
pop.v.i self.active
pushi.e 2
pop.v.i self.init

:[9]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[10]
push.v self.waitbuffer
push.e 1
sub.i.v
pop.v.v self.waitbuffer
push.v 1189.micescore
pushi.e 1
cmp.i.v GTE
bf [12]

:[11]
pushi.e 1
pop.v.i self.hasbegun

:[12]
push.v self.makenewplatform
pushi.e 1
cmp.i.v EQ
bf [15]

:[13]
push.v self.waitbuffer
pushi.e 0
cmp.i.v LTE
bf [15]

:[14]
push.v self.freeze
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [22]

:[17]
pushi.e 1184
pushenv [19]

:[18]
push.v self.phase
push.e 1
add.i.v
pop.v.v self.phase

:[19]
popenv [18]
push.v self.currentPlatform
push.e 1
add.i.v
pop.v.v self.currentPlatform
push.i 169016
setowner.e
pushi.e 1184
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.currentPlatform
conv.v.i
pop.v.v [array]self.plat
pushi.e -1
push.v self.currentPlatform
conv.v.i
push.v [array]self.plat
pushi.e -9
pushenv [21]

:[20]
pushi.e 640
pop.v.i self.x
pushi.e 480
pop.v.i self.y

:[21]
popenv [20]
pushi.e 0
pop.v.i self.makenewplatform
pushi.e 30
pop.v.i self.waitbuffer

:[22]
push.v self.mouseSpawn
pushi.e 1
cmp.b.v EQ
bf [24]

:[23]
pushi.e -1
push.v self.currentPlatform
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.plat
pushi.e -9
push.v [stacktop]self.tilecon
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [29]

:[26]
pushi.e -1
push.v self.currentPlatform
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.plat
pushi.e -9
pushenv [28]

:[27]
pushi.e 1
push.v self.hole
pushi.e -9
pop.v.i [stacktop]self.mousecreate
pushi.e 20
push.v self.hole
pushi.e -9
pop.v.i [stacktop]self.gentimer

:[28]
popenv [27]
pushi.e 60
pop.v.i self.freezespawn
pushi.e 0
pop.v.b self.mouseSpawn

:[29]
push.v self.freezespawn
push.e 1
sub.i.v
pop.v.v self.freezespawn
push.v self.freezespawn
pushi.e 0
cmp.i.v EQ
bf [end]

:[30]
pushi.e 0
pop.v.i global.interact

:[end]