.localvar 2 arguments

:[0]
push.v self.x
pushi.e 200
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 200
sub.i.v
pop.v.v self.y
pushi.e 1280
pop.v.i self.image_xscale
pushi.e 960
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_blend
push.d 1.1
pop.v.d self.image_alpha
pushi.e -1000
pop.v.i self.depth
pushi.e 1083
conv.i.v
pushi.e -300
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 180
sub.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[end]