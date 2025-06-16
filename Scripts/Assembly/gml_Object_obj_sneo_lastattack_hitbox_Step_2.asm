.localvar 2 arguments

:[0]
pushi.e 643
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 643
pop.v.i self.parent
push.v self.parent
pushi.e -9
push.v [stacktop]self.x
push.v self.parent
pushi.e -9
push.v [stacktop]self.x_offset
add.v.v
pushi.e 30
add.i.v
pop.v.v self.x
push.v self.parent
pushi.e -9
push.v [stacktop]self.y
push.v self.parent
pushi.e -9
push.v [stacktop]self.y_offset
add.v.v
pushi.e 40
sub.i.v
pop.v.v self.y

:[end]