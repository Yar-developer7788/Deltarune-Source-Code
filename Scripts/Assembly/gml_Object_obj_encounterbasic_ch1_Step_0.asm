.localvar 2 arguments

:[0]
push.v self.fightcon
pushi.e 1
cmp.i.v EQ
bf [21]

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
call.i gml_Script_snd_pause_ch1(argc=1)
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
call.i gml_Script_scr_afterimage_ch1(argc=0)
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
bf [21]

:[10]
pushi.e 379
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
pop.v.v self.wp
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
push.v self.wp
call.i gml_Script_snd_volume_ch1(argc=3)
popz.v
pushi.e 407
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
pop.v.v self.wp2
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
push.v self.wp2
call.i gml_Script_snd_volume_ch1(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [20]

:[12]
push.i 133626
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.speed
push.i 133643
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.i 133642
setowner.e
pushi.e 3824
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[14]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [17]

:[15]
pushi.e 3844
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
bf [17]

:[16]
pushi.e 3846
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[17]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
pushi.e 3859
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[19]
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
b [11]

:[20]
pushi.e 2
pop.v.i self.fightcon
pushi.e 0
pop.v.i self.counttimer

:[21]
push.v self.fightcon
pushi.e 2
cmp.i.v EQ
bf [end]

:[22]
push.v self.counttimer
pushi.e 1
add.i.v
pop.v.v self.counttimer
push.v self.counttimer
pushi.e 15
cmp.i.v GTE
bf [end]

:[23]
pushi.e 0
pop.v.i self.counttimer
pushi.e 3
pop.v.i self.fightcon
pushi.e 0
pop.v.i self.i

:[24]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [28]

:[25]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [24]

:[28]
pushi.e 1517
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]