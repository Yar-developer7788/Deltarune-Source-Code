.localvar 2 arguments
.localvar 15683 sa 11248
.localvar 24445 sb 11249

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_index
push.d 3.5
cmp.d.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 160
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.con

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.image_index
push.d 9.5
cmp.d.v GTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.d 0.6
conv.d.v
pushi.e 40
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
pop.v.v local.sa
push.d 0.8
conv.d.v
pushi.e 40
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
pop.v.v local.sb
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushloc.v local.sa
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushloc.v local.sb
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
push.v self.image_index
push.d 14.5
cmp.d.v GTE
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
pushi.e 159
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 3
pop.v.i self.con

:[end]