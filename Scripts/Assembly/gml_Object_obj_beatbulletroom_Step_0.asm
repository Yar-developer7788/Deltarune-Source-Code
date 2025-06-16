.localvar 2 arguments
.localvar 21650 burst 18065

:[0]
push.v self.playsound
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.playsound

:[2]
push.v self.playsound
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.d 1.5
conv.d.v
pushi.e 224
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
pop.v.v local.burst
pushi.e 0
conv.i.v
push.d 0.3
conv.d.v
pushloc.v local.burst
call.i gml_Script_snd_volume(argc=3)
popz.v

:[5]
pushi.e 2
pop.v.i self.playsound

:[end]