.localvar 2 arguments

:[0]
pushi.e 598
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myanim
push.v self.myanim
pushi.e -9
pushenv [2]

:[1]
pushi.e 1970
pop.v.i self.sprite_index

:[2]
popenv [1]
push.v self.big
pushi.e 1
cmp.i.v EQ
bf [6]

:[3]
push.v self.myanim
pushi.e -9
pushenv [5]

:[4]
pushi.e 3
pop.v.i self.image_xscale
pushi.e 3
pop.v.i self.image_yscale

:[5]
popenv [4]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]