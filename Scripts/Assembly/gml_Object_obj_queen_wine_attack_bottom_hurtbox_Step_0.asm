.localvar 2 arguments

:[0]
push.v self.grazed
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.grazetimer
pushi.e 1
add.i.v
pop.v.v self.grazetimer
push.v self.grazetimer
pushi.e 30
cmp.i.v GTE
bf [3]

:[2]
pushi.e 0
pop.v.i self.grazetimer
pushi.e 0
pop.v.i self.grazed

:[3]
push.v self.wall_destroy
pushi.e 1
cmp.i.v EQ
bf [12]

:[4]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 760
add.i.v
cmp.v.v GT
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 580
add.i.v
cmp.v.v GT
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
push.v self.updateimageangle
pushi.e 1
cmp.i.v EQ
bf [end]

:[13]
push.v self.direction
pop.v.v self.image_angle

:[end]