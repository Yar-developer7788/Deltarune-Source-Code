.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
call.i gml_Script_scr_depth_alt(argc=0)
popz.v
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.verticalDirection
pushi.e 0
pop.v.i self.horizontalDirection
pushi.e 16
pop.v.i self.spd
pushi.e 0
pop.v.i self.hsp
pushi.e 111
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]