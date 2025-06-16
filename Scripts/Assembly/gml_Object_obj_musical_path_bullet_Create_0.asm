.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.headalpha
call.i path_add(argc=0)
pop.v.v self.path
pushi.e 1
conv.i.v
push.v self.path
call.i path_set_kind(argc=2)
popz.v
pushi.e 0
conv.b.v
push.v self.path
call.i path_set_closed(argc=2)
popz.v
pushi.e 100
conv.i.v
push.v self.y
push.v self.x
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
push.v self.y
pushi.e 48
sub.i.v
push.v self.x
pushi.e 48
add.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
push.v self.y
pushi.e 48
sub.i.v
push.v self.x
pushi.e 112
add.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
add.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 708
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.trajectory
push.v self.id
push.v self.trajectory
pushi.e -9
pop.v.v [stacktop]self.parent
push.v self.trajectory
pushi.e -9
pushenv [2]

:[1]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
push.v self.parent
pushi.e -9
push.v [stacktop]self.path
call.i path_start(argc=4)
popz.v

:[2]
popenv [1]
pushi.e 0
pop.v.i self.circle1alpha
pushi.e 31
pop.v.i self.circle1radius
pushi.e 2
pop.v.i self.circle1width
push.i 65280
pop.v.i self.circle1color
pushi.e 0
pop.v.i self.circle2alpha
pushi.e 75
pop.v.i self.circle2radius
pushi.e 4
pop.v.i self.circle2width
push.v 631.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[end]