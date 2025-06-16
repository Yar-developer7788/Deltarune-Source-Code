.localvar 2 arguments

:[0]
b [22]

> gml_Script_scr_gameover (locals=0, argc=0)
:[1]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [11]

:[2]
pushbltn.v builtin.room
pushi.e 185
cmp.i.v EQ
bf [4]

:[3]
push.i 16615375
setowner.e
pushi.e -5
pushi.e 33
dup.i 1
push.v [array]self.tempflag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.tempflag
popz.v

:[4]
pushbltn.v builtin.room
pushi.e 206
cmp.i.v EQ
bf [6]

:[5]
pushi.e 574
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.i 16615131
setowner.e
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp
pushi.e -5
pushi.e 2
push.v [array]self.maxhp
pushi.e -5
pushi.e 2
pop.v.v [array]self.hp
pushi.e -5
pushi.e 3
push.v [array]self.maxhp
pushi.e -5
pushi.e 3
pop.v.v [array]self.hp
call.i gml_Script_scr_tempsave(argc=0)
popz.v

:[9]
pushi.e 697
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [11]

:[10]
push.i 16615375
setowner.e
pushi.e -5
pushi.e 37
dup.i 1
push.v [array]self.tempflag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.tempflag
popz.v

:[11]
pushi.e -5
pushi.e 35
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.application_surface
call.i sprite_create_from_surface(argc=9)
pop.v.v global.screenshot
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 240
conv.i.v
call.i room_goto(argc=1)
popz.v

:[13]
pushi.e -5
pushi.e 35
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e -1
pop.v.i global.turntimer
push.i 16615204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 36
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 39
pop.v.v [array]self.flag

:[15]
pushi.e -5
pushi.e 35
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [21]

:[16]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 0
pop.v.i global.entrance
push.i 16615375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.tempflag
pushi.e 0
pop.v.i global.fighting
pushi.e 0
pop.v.i global.interact
push.i 16615131
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.hp
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.hp
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.hp
pushbltn.v builtin.room
pop.v.v self.__room
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [20]

:[17]
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -9
pushenv [19]

:[18]
push.d 1.2
pop.v.d self.image_alpha

:[19]
popenv [18]

:[20]
push.v self.__room
call.i room_goto(argc=1)
popz.v

:[21]
exit.i

:[22]
push.i [function]gml_Script_scr_gameover
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_gameover
popz.v

:[end]