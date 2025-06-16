.localvar 2 arguments

:[0]
push.v self.x
pushi.e 41
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 35
sub.i.v
pop.v.v self.y
pushi.e 1726
pop.v.i self.sprite_index
pushi.e 863
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.spareanim
push.v self.sprite_index
push.v self.spareanim
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.spareanim
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.spareanim
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.spareanim
pushi.e -9
pop.v.v [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v

:[end]