.localvar 2 arguments

:[0]
push.v self.fightcon
pushi.e 2
cmp.i.v EQ
bf [end]

:[1]
push.v self.counttimer
pushi.e 1
add.i.v
pop.v.v self.counttimer
push.v self.counttimer
pushi.e 1
cmp.i.v EQ
bf [28]

:[2]
pushi.e 505
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i global.specialbattle
pushi.e 58
pop.v.i global.encounterno
pushi.e 529
pop.v.i self.encounterflag
push.i 231204
setowner.e
push.v self.encounterflag
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag
pushglb.v global.encounterno
call.i gml_Script_scr_encountersetup(argc=1)
popz.v
pushi.e -5
pushi.e 9
push.v [array]self.flag
pushi.e 2
cmp.i.v NEQ
bf [4]

:[3]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
push.i 232336
setowner.e
push.s "berdly_chase.ogg"@20906
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic

:[4]
pushi.e 2
pop.v.i global.interact
pushi.e -5
pushi.e 9
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v

:[6]
pushi.e 82
pushenv [8]

:[7]
pushi.e 0
pop.v.i self.visible

:[8]
popenv [7]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.visible

:[10]
popenv [9]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pushenv [12]

:[11]
pushi.e 0
pop.v.i self.visible

:[12]
popenv [11]
pushi.e 82
pushenv [14]

:[13]
pushi.e 0
pop.v.i self.fun

:[14]
popenv [13]
pushi.e 276
pushenv [16]

:[15]
pushi.e 0
pop.v.i self.fun

:[16]
popenv [15]
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
pushi.e 952
pushenv [27]

:[17]
push.v self.coaster_kris
pushi.e -9
pushenv [19]

:[18]
pushi.e 1
pop.v.i self.stop_siner
pushi.e 1
pop.v.i self.con
pushi.e 1419
pop.v.i self.character_sprite
pushi.e 1419
push.v self.actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[19]
popenv [18]
push.v self.coaster_susie
pushi.e -9
pushenv [22]

:[20]
pushi.e 1
pop.v.i self.stop_siner
pushi.e 1
pop.v.i self.con
pushi.e 1449
pop.v.i self.character_sprite
pushi.e 1449
push.v self.actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.char
conv.v.i
push.v [array]self.charweapon
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1451
pop.v.i self.character_sprite

:[22]
popenv [20]
push.v self.coaster_ralsei
pushi.e -9
pushenv [24]

:[23]
pushi.e 1
pop.v.i self.stop_siner
pushi.e 1
pop.v.i self.con
pushi.e 1506
pop.v.i self.character_sprite
pushi.e 1506
push.v self.actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[24]
popenv [23]
push.v self.coaster_berdly
pushi.e -9
pushenv [26]

:[25]
pushi.e 1
pop.v.i self.stop_siner

:[26]
popenv [25]

:[27]
popenv [17]

:[28]
push.v self.counttimer
pushi.e 20
cmp.i.v GTE
bf [end]

:[29]
pushi.e 0
pop.v.i self.counttimer
pushi.e 3
pop.v.i self.fightcon
pushi.e 357
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 371
pushenv [31]

:[30]
pushi.e 0
pop.v.b self.visible

:[31]
popenv [30]
call.i instance_destroy(argc=0)
popz.v

:[end]