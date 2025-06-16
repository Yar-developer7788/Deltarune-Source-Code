.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.animtimer
pushi.e 0
pop.v.i self.frametimer
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 30
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 0
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]