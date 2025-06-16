.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.t
pushi.e 0
pop.v.i self.g
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.starcount
pushi.e 0
pop.v.i self.redup
pushi.e 6
pop.v.i self.bsize
pushi.e 413
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[end]