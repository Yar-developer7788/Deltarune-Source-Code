.localvar 2 arguments

:[0]
push.v self.makeanim
conv.v.b
bf [9]

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
pushi.e 1970
pop.v.i self.sprite_index

:[3]
popenv [2]
push.v self.big
pushi.e 1
cmp.i.v EQ
bf [7]

:[4]
push.v self.myanim
pushi.e -9
pushenv [6]

:[5]
pushi.e 3
pop.v.i self.image_xscale
pushi.e 3
pop.v.i self.image_yscale

:[6]
popenv [5]

:[7]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
push.v 631.depth
pushi.e 100
sub.i.v
push.v self.myanim
pushi.e -9
pop.v.v [stacktop]self.depth

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]