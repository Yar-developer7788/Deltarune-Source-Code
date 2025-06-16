.localvar 2 arguments

:[0]
pushi.e 553
pop.v.i self.rotator_target
push.v self.length
pushi.e 6
add.i.v
pop.v.v self.length
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.rotator_target
pushi.e -9
push.v [stacktop]self.x
push.v 553.place1
push.v self.length
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.rotator_target
pushi.e -9
push.v [stacktop]self.y
push.v 553.place1
push.v self.length
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
push.v 553.place1
pop.v.v self.image_angle

:[2]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.v self.rotator_target
pushi.e -9
push.v [stacktop]self.x
push.v 553.place2
push.v self.length
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.rotator_target
pushi.e -9
push.v [stacktop]self.y
push.v 553.place2
push.v self.length
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
push.v 553.place2
pop.v.v self.image_angle

:[4]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 300
add.i.v
cmp.v.v GTE
bf [end]

:[5]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]