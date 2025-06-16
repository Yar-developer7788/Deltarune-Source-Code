.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.image_index
pushi.e 1
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.creator
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 1853
pop.v.i self.sprite_index

:[2]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.b self.loop

:[end]