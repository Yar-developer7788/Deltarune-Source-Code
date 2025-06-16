.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 171
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.target
pushi.e 3
cmp.i.v NEQ
bf [3]

:[2]
call.i gml_Script_scr_damage(argc=0)
popz.v

:[3]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [5]

:[4]
call.i gml_Script_scr_damage_all_overworld(argc=0)
popz.v

:[5]
pushi.e 277
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.charcon

:[7]
popenv [6]
pushi.e 1
pop.v.i global.interact
pushi.e 82
pushenv [9]

:[8]
push.i 68097
setowner.e
pushi.e 7
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[9]
popenv [8]
pushi.e 1
pop.v.i self.hit

:[end]