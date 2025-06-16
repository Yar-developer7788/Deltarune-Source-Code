.localvar 2 arguments

:[0]
push.v self.distx
pop.v.v self.x
push.v self.disty
pop.v.v self.y
pushi.e 1530
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]