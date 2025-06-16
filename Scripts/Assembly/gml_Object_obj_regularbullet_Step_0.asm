.localvar 2 arguments

:[0]
push.v self.wall_destroy
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 760
add.i.v
cmp.v.v GT
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 580
add.i.v
cmp.v.v GT
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
push.v self.updateimageangle
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.direction
pop.v.v self.image_angle

:[11]
push.v self.spin
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v self.image_angle
push.v self.spinspeed
add.v.v
pop.v.v self.image_angle

:[13]
push.v self.bottomfade
pushi.e 0
cmp.i.v NEQ
bf [end]

:[14]
push.v self.y
call.i gml_Script_cameray(argc=0)
push.v self.bottomfade
add.v.v
cmp.v.v GT
bf [end]

:[15]
push.v self.image_alpha
push.d 0.8
mul.d.v
pop.v.v self.image_alpha

:[end]