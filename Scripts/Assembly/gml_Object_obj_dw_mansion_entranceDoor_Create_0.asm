.localvar 2 arguments

:[0]
pushi.e 1
pop.v.b self.visible
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]