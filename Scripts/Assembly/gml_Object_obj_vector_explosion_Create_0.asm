.localvar 2 arguments

:[0]
push.d 0.1333
pop.v.d self.image_speed
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 97
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]