.localvar 2 arguments

:[0]
pushi.e 128
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
push.v self.depth
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 2045
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[end]