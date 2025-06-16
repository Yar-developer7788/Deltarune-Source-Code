.localvar 2 arguments

:[0]
push.v self.fightcon
pushi.e 1
cmp.i.v EQ
bf [25]

:[1]
pushi.e -5
pushi.e 9
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pause(argc=1)
popz.v

:[3]
push.v self.counttimer
pushi.e 1
add.i.v
pop.v.v self.counttimer
push.v self.counttimer
pushi.e 10
cmp.i.v LT
bf [9]

:[4]
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [9]

:[6]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.af
push.d 0.5
push.v self.af
pushi.e -9
pop.v.d [stacktop]self.image_alpha

:[8]
popenv [7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[9]
push.v self.counttimer
pushi.e 10
cmp.i.v GTE
bf [25]

:[10]
pushglb.v global.encounterno
pushi.e 84
cmp.i.v NEQ
bf [12]

:[11]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.wp
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
push.v self.wp
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 139
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.wp2
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
push.v self.wp2
call.i gml_Script_snd_volume(argc=3)
popz.v

:[12]
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [24]

:[14]
push.i 133626
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v NEQ
bf [16]

:[15]
push.i 133643
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.image_index

:[16]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.i 133642
setowner.e
pushi.e 1419
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[18]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [21]

:[19]
pushi.e 1449
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charweapon
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1451
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[21]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1506
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[23]
push.i 133655
setowner.e
push.d 0.5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [13]

:[24]
pushi.e 2
pop.v.i self.fightcon
pushi.e 0
pop.v.i self.counttimer

:[25]
push.v self.fightcon
pushi.e 2
cmp.i.v EQ
bf [end]

:[26]
push.v self.counttimer
pushi.e 1
add.i.v
pop.v.v self.counttimer
push.v self.counttimer
pushi.e 15
cmp.i.v GTE
bf [end]

:[27]
pushi.e 0
pop.v.i self.counttimer
pushi.e 3
pop.v.i self.fightcon
pushi.e 0
pop.v.i self.i

:[28]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [32]

:[29]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [28]

:[32]
pushi.e 357
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]