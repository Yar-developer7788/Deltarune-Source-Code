.localvar 2 arguments

:[0]
push.v other.x
push.v self.direction
pushi.e 2
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v other.x
push.v other.y
push.v self.direction
pushi.e 2
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v other.y

:[end]