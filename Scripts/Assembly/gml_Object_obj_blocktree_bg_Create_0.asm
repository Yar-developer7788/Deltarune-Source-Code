.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.siner
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 600
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 0
pop.v.i self.blocktimer
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.spec
push.v self.depth
pop.v.v self.remdepth

:[end]