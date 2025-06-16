.localvar 2 arguments
.localvar 20345 _sideb 8604

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
call.i gml_Script_snd_volume(argc=3)
popz.v

:[2]
pushglb.v global.encounterno
call.i gml_Script_scr_encountersetup(argc=1)
popz.v
pushi.e 82
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
pushi.e 82
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.fun

:[10]
popenv [9]
pushi.e 276
pushenv [12]

:[11]
pushi.e 0
pop.v.i self.fun

:[12]
popenv [11]
pushi.e 0
pop.v.i self.count
push.i 166199
setowner.e
pushi.e 864
conv.i.v
push.v 82.y
push.v 82.x
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.c
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [19]

:[13]
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
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.c
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.rsprite
pushi.e 986
cmp.i.v EQ
bf [15]

:[14]
push.i 133642
setowner.e
pushi.e 998
pushi.e -1
pushi.e 1
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[15]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.name
push.s "noelle"@74
cmp.s.v EQ
bf [19]

:[16]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pop.v.v local._sideb
pushi.e 1531
pushi.e -1
pushi.e 1
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local._sideb
pushi.e 2
cmp.i.v GTE
bf [18]

:[17]
pushi.e 1545
pushi.e -1
pushi.e 1
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[18]
push.i 133655
setowner.e
push.d 0.5
pushi.e -1
pushi.e 1
push.v [array]self.c
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[19]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [24]

:[20]
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
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.c
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.rsprite
pushi.e 986
cmp.i.v EQ
bf [22]

:[21]
push.i 133642
setowner.e
pushi.e 998
pushi.e -1
pushi.e 2
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[22]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.name
push.s "noelle"@74
cmp.s.v EQ
bf [24]

:[23]
pushi.e 1531
pushi.e -1
pushi.e 2
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133655
setowner.e
push.d 0.5
pushi.e -1
pushi.e 2
push.v [array]self.c
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[24]
pushi.e 0
pop.v.i self.i

:[25]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [27]

:[26]
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
b [25]

:[27]
pushi.e 1
pop.v.i self.fightcon
pushi.e 0
pop.v.i self.counttimer

:[end]