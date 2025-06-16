.localvar 2 arguments
.localvar 24547 _ilerp 11465

:[0]
push.v self.image_alpha
push.d 0.02
sub.d.v
pop.v.v self.image_alpha
push.v self.x
push.v self.h_speed
add.v.v
pop.v.v self.x
push.v self.image_alpha
push.d 0.8
cmp.d.v LTE
bf [2]

:[1]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_alpha
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
call.i gml_Script_scr_remapvalue(argc=5)
pop.v.v local._ilerp
pushi.e 1
conv.i.v
pushloc.v local._ilerp
pushi.e -8
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_lerp_ease_in(argc=4)
pop.v.v self.h_speed

:[2]
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 496
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[5]
push.v 952.coaster_berdly
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 952
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
push.v 952.coaster_berdly
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[end]