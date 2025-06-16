.localvar 2 arguments

:[0]
pushi.e 1088
conv.i.v
push.v self.y
push.v self.dir
push.v self.dis
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
push.v self.dir
push.v self.dis
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -9
pushenv [2]

:[1]
pushi.e 1
pushi.e 2
conv.i.v
call.i irandom(argc=1)
add.v.i
push.v other.dir
pushi.e 215
sub.i.v
pushi.e 70
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i motion_set(argc=2)
popz.v

:[2]
popenv [1]

:[end]