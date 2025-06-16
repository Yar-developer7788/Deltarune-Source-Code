.localvar 2 arguments

:[0]
push.v self.outline
conv.v.b
bf [2]

:[1]
pushi.e 2
conv.i.v
b [3]

:[2]
pushi.e 0
conv.i.v

:[3]
pop.v.v self.ol
push.v self.outline
conv.v.b
bf [5]

:[4]
pushi.e 0
conv.i.v
b [6]

:[5]
push.i 16777215
conv.i.v

:[6]
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 24
push.v self.ol
add.v.i
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
push.v self.ol
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.v self.ol
push.e 1
add.i.v
pop.v.v self.ol

:[8]
push.v self.x
push.v self.direction
pushi.e 180
add.i.v
pushi.e 36
push.v self.ol
add.v.i
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.tailx
push.v self.y
push.v self.direction
pushi.e 180
add.i.v
pushi.e 36
push.v self.ol
add.v.i
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.taily
push.v self.direction
pushi.e 90
add.i.v
pushi.e 16
push.v self.ol
add.v.i
call.i lengthdir_x(argc=2)
pop.v.v self.tailbx
push.v self.direction
pushi.e 90
add.i.v
pushi.e 16
push.v self.ol
add.v.i
call.i lengthdir_y(argc=2)
pop.v.v self.tailby
push.v self.direction
pushi.e 90
sub.i.v
pushi.e 16
push.v self.ol
add.v.i
call.i lengthdir_x(argc=2)
pop.v.v self.tailcx
push.v self.direction
pushi.e 90
sub.i.v
pushi.e 16
push.v self.ol
add.v.i
call.i lengthdir_y(argc=2)
pop.v.v self.tailcy
pushi.e 0
conv.i.v
push.v self.y
push.v self.tailcy
add.v.v
push.v self.x
push.v self.tailcx
add.v.v
push.v self.y
push.v self.tailby
add.v.v
push.v self.x
push.v self.tailbx
add.v.v
push.v self.taily
push.v self.tailx
call.i draw_triangle(argc=7)
popz.v

:[end]