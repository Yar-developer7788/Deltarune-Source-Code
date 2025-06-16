.localvar 2 arguments

:[0]
pushi.e 1129
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[1]
pushi.e 1129
pushenv [4]

:[2]
push.v self.forcefield_id
push.v other.forcefield_id
cmp.v.v EQ
bf [4]

:[3]
pushi.e 47
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.b self.fadeout

:[4]
popenv [2]

:[5]
pushi.e 1016
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[6]
pushi.e 1016
pushenv [8]

:[7]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[8]
popenv [7]

:[end]