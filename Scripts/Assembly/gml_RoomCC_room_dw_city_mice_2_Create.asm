.localvar 2 arguments

:[0]
push.s "roulsBlock"@14146
pop.v.s self.extflag
pushi.e 1310
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pop.v.b self.visible
call.i gml_Script_scr_depth(argc=0)
popz.v
pushglb.v global.plot
pushi.e 72
cmp.i.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]