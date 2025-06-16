.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.spawntype
pushi.e 777
pop.v.i global.encounterno
pushi.e 777
conv.i.v
call.i gml_Script_scr_encountersetup(argc=1)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 82
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 277
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 357
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e -1
pop.v.i global.myfight
pushi.e 2
pop.v.i global.mnfight
pushi.e 200
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.timer
pushi.e 872
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 631
conv.i.v
push.v 872.y
pushi.e 8
sub.i.v
push.v 872.x
pushi.e 6
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e -5
pushi.e 26
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.i 231474
setowner.e
pushi.e -5
pushi.e 20
push.v [array]self.tempflag
pushi.e -5
pushi.e 0
pop.v.v [array]self.monster
pushi.e -5
pushi.e 21
push.v [array]self.tempflag
pushi.e -5
pushi.e 1
pop.v.v [array]self.monster
pushi.e -5
pushi.e 22
push.v [array]self.tempflag
pushi.e -5
pushi.e 2
pop.v.v [array]self.monster
push.i 238436
setowner.e
pushi.e -5
pushi.e 23
push.v [array]self.tempflag
pushi.e -5
pushi.e 0
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.spawntype
pushi.e -5
pushi.e 24
push.v [array]self.tempflag
pushi.e -5
pushi.e 1
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.spawntype
pushi.e -5
pushi.e 25
push.v [array]self.tempflag
pushi.e -5
pushi.e 2
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.spawntype
b [end]

:[6]
push.i 231474
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monster
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monster
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monster
push.i 238436
setowner.e
push.v self.spawntype
pushi.e -5
pushi.e 0
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.spawntype
push.v self.spawntype
pushi.e -5
pushi.e 1
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.spawntype
push.v self.spawntype
pushi.e -5
pushi.e 2
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.spawntype
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 26
pop.v.v [array]self.tempflag

:[end]