.localvar 2 arguments

:[0]
pushi.e 598
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
push.v self.image_xscale
pushi.e 2
mul.i.v
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
pushi.e 2
mul.i.v
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.anim
pushi.e -9
pushenv [2]

:[1]
pushi.e 1972
pop.v.i self.sprite_index

:[2]
popenv [1]
call.i instance_destroy(argc=0)
popz.v

:[end]