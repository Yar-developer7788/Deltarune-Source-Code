.localvar 2 arguments

:[0]
push.i 65280
pop.v.i self.image_blend
push.d 1.2
pop.v.d self.image_alpha
push.d 0.16
pop.v.d self.image_xscale
push.d 0.16
pop.v.d self.image_yscale
pushi.e 2023
pop.v.i self.sprite_index
push.v 574.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.offset
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
pushi.e 70
conv.i.v
pushi.e 63
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
pushi.e 70
conv.i.v
pushi.e 63
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
push.v 574.y
pushi.e 75
add.i.v
push.v 574.x
pushi.e 72
add.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
push.v self.path
call.i path_start(argc=4)
popz.v

:[end]