.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.state
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
bf [2]

:[1]
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

:[2]
pushi.e 2
pop.v.i global.interact
pushi.e -5
pushi.e 9
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v

:[4]
pushglb.v global.encounterno
call.i gml_Script_scr_encountersetup(argc=1)
popz.v
pushi.e 82
pushenv [6]

:[5]
pushi.e 0
pop.v.i self.visible

:[6]
popenv [5]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [8]

:[7]
pushi.e 0
pop.v.i self.visible

:[8]
popenv [7]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.visible

:[10]
popenv [9]
pushi.e 82
pushenv [12]

:[11]
pushi.e 0
pop.v.i self.fun

:[12]
popenv [11]
pushi.e 276
pushenv [14]

:[13]
pushi.e 0
pop.v.i self.fun

:[14]
popenv [13]
pushi.e 0
pop.v.i self.count
pushi.e 1
pop.v.i self.fightcon
pushi.e 0
pop.v.i self.counttimer

:[end]