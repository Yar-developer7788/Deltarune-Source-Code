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
pushi.e 1973
pop.v.i self.sprite_index

:[2]
popenv [1]
call.i instance_destroy(argc=0)
popz.v

:[end]