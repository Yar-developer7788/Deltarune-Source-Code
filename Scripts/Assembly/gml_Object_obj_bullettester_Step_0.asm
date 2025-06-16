.localvar 2 arguments

:[0]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v NEQ
bf [10]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 2
cmp.i.v GTE
bf [10]

:[2]
pushi.e 2
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [4]

:[3]
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

:[4]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [6]

:[5]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[6]
pushi.e 1
pop.v.i self.i

:[7]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [9]

:[8]
push.i 231131
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.maxhp
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hp
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [7]

:[9]
pushi.e 0
pop.v.i self.timer

:[10]
pushi.e 9
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [12]

:[11]
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
call.i window_set_size(argc=2)
popz.v

:[12]
pushi.e 49
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [17]

:[13]
pushi.e -5
pushi.e 0
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.i 231474
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monster
b [17]

:[15]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
bf [17]

:[16]
push.i 231474
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monster

:[17]
pushi.e 50
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [22]

:[18]
pushi.e -5
pushi.e 1
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monster
b [22]

:[20]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
bf [22]

:[21]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monster

:[22]
pushi.e 51
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [27]

:[23]
pushi.e -5
pushi.e 2
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monster
b [27]

:[25]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
bf [27]

:[26]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monster

:[27]
pushi.e 1
pop.v.i self.change
pushi.e 16
conv.i.v
call.i keyboard_check_direct(argc=1)
conv.v.b
bf [29]

:[28]
pushi.e 10
pop.v.i self.change

:[29]
pushi.e 81
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [32]

:[30]
pushi.e -5
pushi.e 23
push.v [array]self.tempflag
pushi.e 0
cmp.i.v GT
bf [32]

:[31]
push.i 238436
setowner.e
pushi.e -5
pushi.e 0
push.v [array]self.monsterinstance
pushi.e -9
dup.i 4
push.v [stacktop]self.spawntype
push.v self.change
sub.v.v
pop.i.v [stacktop]self.spawntype

:[32]
pushi.e 69
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [35]

:[33]
pushi.e -5
pushi.e 24
push.v [array]self.tempflag
pushi.e 0
cmp.i.v GT
bf [35]

:[34]
pushi.e -5
pushi.e 1
push.v [array]self.monsterinstance
pushi.e -9
dup.i 4
push.v [stacktop]self.spawntype
push.v self.change
sub.v.v
pop.i.v [stacktop]self.spawntype

:[35]
pushi.e 84
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [38]

:[36]
pushi.e -5
pushi.e 25
push.v [array]self.tempflag
pushi.e 0
cmp.i.v GT
bf [38]

:[37]
pushi.e -5
pushi.e 2
push.v [array]self.monsterinstance
pushi.e -9
dup.i 4
push.v [stacktop]self.spawntype
push.v self.change
sub.v.v
pop.i.v [stacktop]self.spawntype

:[38]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [40]

:[39]
pushi.e -5
pushi.e 0
push.v [array]self.monsterinstance
pushi.e -9
dup.i 4
push.v [stacktop]self.spawntype
push.v self.change
add.v.v
pop.i.v [stacktop]self.spawntype

:[40]
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [42]

:[41]
pushi.e -5
pushi.e 1
push.v [array]self.monsterinstance
pushi.e -9
dup.i 4
push.v [stacktop]self.spawntype
push.v self.change
add.v.v
pop.i.v [stacktop]self.spawntype

:[42]
pushi.e 89
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [44]

:[43]
pushi.e -5
pushi.e 2
push.v [array]self.monsterinstance
pushi.e -9
dup.i 4
push.v [stacktop]self.spawntype
push.v self.change
add.v.v
pop.i.v [stacktop]self.spawntype

:[44]
pushi.e 52
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [46]

:[45]
push.i 99999
pop.v.i global.turntimer

:[46]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [48]

:[47]
call.i gml_Script_snd_free_all(argc=0)
popz.v
call.i room_restart(argc=0)
popz.v

:[48]
pushi.e 73
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [50]

:[49]
push.i 231375
setowner.e
pushi.e -5
pushi.e 27
dup.i 1
push.v [array]self.tempflag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.tempflag
popz.v
b [55]

:[50]
pushi.e 85
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [52]

:[51]
pushi.e -5
pushi.e 27
push.v [array]self.tempflag
pushi.e 0
cmp.i.v GT
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
push.i 231375
setowner.e
pushi.e -5
pushi.e 27
dup.i 1
push.v [array]self.tempflag
dup.v 0
dup.i 4 48
push.e 1
sub.i.v
pop.i.v [array]global.tempflag
popz.v

:[55]
pushi.e -5
pushi.e 0
push.v [array]self.monster
pushi.e -5
pushi.e 20
pop.v.v [array]self.tempflag
pushi.e -5
pushi.e 1
push.v [array]self.monster
pushi.e -5
pushi.e 21
pop.v.v [array]self.tempflag
pushi.e -5
pushi.e 2
push.v [array]self.monster
pushi.e -5
pushi.e 22
pop.v.v [array]self.tempflag
pushi.e -5
pushi.e 0
push.v [array]self.monsterinstance
pushi.e -9
push.v [stacktop]self.spawntype
pushi.e -5
pushi.e 23
pop.v.v [array]self.tempflag
pushi.e -5
pushi.e 1
push.v [array]self.monsterinstance
pushi.e -9
push.v [stacktop]self.spawntype
pushi.e -5
pushi.e 24
pop.v.v [array]self.tempflag
pushi.e -5
pushi.e 2
push.v [array]self.monsterinstance
pushi.e -9
push.v [stacktop]self.spawntype
pushi.e -5
pushi.e 25
pop.v.v [array]self.tempflag

:[end]