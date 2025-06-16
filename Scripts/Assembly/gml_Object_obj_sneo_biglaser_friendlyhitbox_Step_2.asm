.localvar 2 arguments

:[0]
push.v self.source
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
push.v self.source
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
push.v self.source
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y
push.v self.source
pushi.e -9
push.v [stacktop]self.image_xscale
pop.v.v self.image_xscale
pushi.e 0
conv.i.v
push.v self.source
pushi.e -9
push.v [stacktop]self.image_yscale
push.d 0.25
sub.d.v
call.i max(argc=2)
pop.v.v self.image_yscale
push.v self.source
pushi.e -9
push.v [stacktop]self.image_angle
pop.v.v self.image_angle
push.v self.source
pushi.e -9
push.v [stacktop]self.direction
pop.v.v self.direction

:[end]