.localvar 2 arguments

:[0]
push.v self.goggles_surface
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
call.i surface_create(argc=2)
pop.v.v self.goggles_surface

:[2]
push.v self.static_surface
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [4]

:[3]
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
call.i surface_create(argc=2)
pop.v.v self.static_surface

:[4]
push.v self.offset_x
pushi.e 2
sub.i.v
pop.v.v self.offset_x
push.v self.offset_y
pushi.e 2
add.i.v
pop.v.v self.offset_y

:[end]