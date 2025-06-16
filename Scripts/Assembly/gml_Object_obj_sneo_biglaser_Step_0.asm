.localvar 2 arguments

:[0]
push.v 697.difficulty
pushi.e 2
cmp.i.v EQ
bf [end]

:[1]
pushi.e 603
pushenv [3]

:[2]
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
pushi.e 603
conv.i.v
push.v 632.y
push.v 632.direction
pushi.e 10
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v 632.x
push.v 632.direction
pushi.e 10
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
push.v 632.y
push.v 632.x
call.i collision_line(argc=7)
conv.v.b
bf [3]

:[3]
popenv [2]

:[end]