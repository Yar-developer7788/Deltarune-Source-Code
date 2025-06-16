.localvar 2 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v GT
bf [end]

:[1]
pushi.e 598
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myanim
push.v self.myanim
pushi.e -9
pushenv [3]

:[2]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1972
pop.v.i self.sprite_index

:[3]
popenv [2]

:[end]