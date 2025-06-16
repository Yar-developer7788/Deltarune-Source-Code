.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushbltn.v builtin.room
pushi.e 138
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2736
pop.v.i self.sprite_index

:[2]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[end]