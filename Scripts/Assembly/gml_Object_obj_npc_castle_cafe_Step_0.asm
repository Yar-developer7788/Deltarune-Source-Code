.localvar 2 arguments

:[0]
push.v self.tm_con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.tm_con
pushi.e 217
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[5]
push.v self.t_con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e 0
pop.v.i self.t_con
pushi.e 98
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]