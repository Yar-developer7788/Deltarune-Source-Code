.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i global.interact
pushi.e -5
pushi.e 9
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume_ch1(argc=3)
popz.v

:[2]
pushglb.v global.encounterno
call.i gml_Script_scr_encountersetup_ch1(argc=1)
popz.v
pushi.e 1351
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.visible

:[4]
popenv [3]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [6]

:[5]
pushi.e 0
pop.v.i self.visible

:[6]
popenv [5]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pushenv [8]

:[7]
pushi.e 0
pop.v.i self.visible

:[8]
popenv [7]
pushi.e 0
pop.v.i self.count
push.i 166199
setowner.e
pushi.e 4202
conv.i.v
push.v 1351.y
push.v 1351.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.c
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[9]
push.v self.count
pushi.e 1
add.i.v
pop.v.v self.count
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.rsprite
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.c
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.rsprite
pushi.e 3549
cmp.i.v EQ
bf [11]

:[10]
push.i 133642
setowner.e
pushi.e 3561
pushi.e -1
pushi.e 1
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[11]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[12]
push.v self.count
pushi.e 1
add.i.v
pop.v.v self.count
push.i 166199
setowner.e
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.rsprite
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.c
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.rsprite
pushi.e 3549
cmp.i.v EQ
bf [14]

:[13]
push.i 133642
setowner.e
pushi.e 3561
pushi.e -1
pushi.e 2
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[14]
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [17]

:[16]
push.i 133625
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakex
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133626
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakex
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
push.v [stacktop]self.x
call.i point_distance(argc=4)
pushi.e 10
conv.i.d
div.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.v [stacktop]self.speed
push.i 133637
setowner.e
pushi.e 200
push.v self.i
pushi.e 20
mul.i.v
sub.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[17]
pushi.e 1
pop.v.i self.fightcon
pushi.e 0
pop.v.i self.counttimer

:[end]