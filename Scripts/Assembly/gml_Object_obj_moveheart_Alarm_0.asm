.localvar 2 arguments

:[0]
push.v self.distx
pop.v.v self.x
push.v self.disty
pop.v.v self.y
pushi.e 631
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushi.e 631
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]