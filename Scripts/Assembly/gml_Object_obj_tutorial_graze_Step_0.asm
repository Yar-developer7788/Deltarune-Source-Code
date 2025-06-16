.localvar 2 arguments

:[0]
call.i gml_Script_camerax(argc=0)
pop.v.v self.xx
call.i gml_Script_cameray(argc=0)
pop.v.v self.yy
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 872
conv.i.v
push.v self.yy
pushi.e 240
add.i.v
pushi.e 80
sub.i.v
push.v self.xx
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.growtangle
pushi.e 0
pop.v.i self.timer
pushi.e 20
conv.i.v
push.v self.yy
pushi.e 240
add.i.v
pushi.e 80
sub.i.v
pushi.e 32
add.i.v
pushi.e 20
add.i.v
push.v self.xx
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.puzboy
push.v self.con
push.e 1
add.i.v
pop.v.v self.con
push.v self.xx
pushi.e 320
add.i.v
pushi.e 30
conv.i.v
pushi.e -30
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.xvar

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [11]

:[3]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 4
cmp.i.v GT
bf [8]

:[4]
push.v 20.x
pushi.e 340
cmp.i.v LT
bf [6]

:[5]
push.v 20.x
pushi.e 300
cmp.i.v GT
b [7]

:[6]
push.e 0

:[7]
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v self.xx
pushi.e 320
add.i.v
pop.v.v self.xvar
pushi.e 1322
conv.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xvar
call.i gml_Script_instance_create(argc=3)
pop.v.v self.b
push.v self.puzboy
pushi.e -9
push.v [stacktop]self.y
push.v self.puzboy
pushi.e -9
push.v [stacktop]self.x
push.v self.b
pushi.e -9
push.v [stacktop]self.y
push.v self.b
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
push.v self.b
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 5
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1322
conv.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xvar
call.i gml_Script_instance_create(argc=3)
pop.v.v self.b2
push.v self.b
pushi.e -9
push.v [stacktop]self.direction
pushi.e 33
add.i.v
push.v self.b2
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 5
push.v self.b2
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1322
conv.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xvar
call.i gml_Script_instance_create(argc=3)
pop.v.v self.b3
push.v self.b
pushi.e -9
push.v [stacktop]self.direction
pushi.e 33
sub.i.v
push.v self.b3
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 5
push.v self.b3
pushi.e -9
pop.v.i [stacktop]self.speed
push.v self.b
pushi.e -9
push.v [stacktop]self.direction
push.v self.b
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.b2
pushi.e -9
push.v [stacktop]self.direction
push.v self.b2
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.b3
pushi.e -9
push.v [stacktop]self.direction
push.v self.b3
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.growtangle
pushi.e -9
push.v [stacktop]self.depth
pushi.e 5
sub.i.v
push.v self.b
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.growtangle
pushi.e -9
push.v [stacktop]self.depth
pushi.e 5
sub.i.v
push.v self.b2
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.growtangle
pushi.e -9
push.v [stacktop]self.depth
pushi.e 5
sub.i.v
push.v self.b3
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i self.timer

:[11]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [end]

:[12]
push.v self.puzboy
pushi.e -9
pushenv [14]

:[13]
pushi.e 1
pop.v.b self.fade

:[14]
popenv [13]
pushi.e 1322
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [18]

:[15]
pushi.e 1322
pushenv [17]

:[16]
pushi.e 1
pop.v.b self.fade

:[17]
popenv [16]

:[18]
pushi.e 3
push.v self.growtangle
pushi.e -9
pop.v.i [stacktop]self.growcon
call.i instance_destroy(argc=0)
popz.v

:[end]