.localvar 2 arguments

:[0]
pushi.e 128
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
pushi.e 2275
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.sprite_index
call.i instance_destroy(argc=0)
popz.v

:[end]