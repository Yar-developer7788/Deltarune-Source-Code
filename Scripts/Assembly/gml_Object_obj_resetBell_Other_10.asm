.localvar 2 arguments

:[0]
push.v self.play
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 40
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1174
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[2]
pushi.e 1174
pushenv [4]

:[3]
pushi.e 1
pop.v.b self.reset

:[4]
popenv [3]

:[5]
pushi.e 1172
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [9]

:[6]
pushi.e 1172
pushenv [8]

:[7]
pushi.e 1
pop.v.b self.reset

:[8]
popenv [7]

:[9]
pushi.e 1173
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [13]

:[10]
pushi.e 1173
pushenv [12]

:[11]
pushi.e 1
pop.v.b self.reset

:[12]
popenv [11]

:[13]
pushi.e 1
pop.v.i self.play
pushi.e 20
pop.v.i self.timer
push.d 0.25
pop.v.d self.image_speed

:[end]