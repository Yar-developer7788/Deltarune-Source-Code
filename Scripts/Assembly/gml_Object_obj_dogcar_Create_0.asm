.localvar 2 arguments

:[0]
pushi.e 186
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e -24
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.mode
pushi.e 0
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.5
pop.v.d self.image_speed
pushi.e -200
pop.v.i self.depth
pushi.e 0
pop.v.i self.fakedamage
pushi.e 1
pop.v.i 82.battlemode

:[end]