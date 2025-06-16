.localvar 2 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i global.specialbattle
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
push.i 232336
setowner.e
push.s "battle.ogg"@10337
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
push.i 68097
setowner.e
pushi.e -300
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.vspeed
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con

:[end]