.localvar 2 arguments

:[0]
push.v self.loop
conv.v.b
not.b
bf [end]

:[1]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e 2102
pop.v.i self.sprite_index
b [4]

:[3]
pushi.e 3263
pop.v.i self.sprite_index

:[4]
pushi.e 1
pop.v.b self.loop
pushi.e 0
pop.v.i self.image_index

:[end]