.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.ystart
push.v self.place2
pushi.e 180
add.i.v
push.v self.length
call.i lengthdir_y(argc=2)
add.v.v
push.v self.xstart
push.v self.place2
pushi.e 180
add.i.v
push.v self.length
call.i lengthdir_x(argc=2)
add.v.v
pushi.e 0
conv.i.v
pushi.e 1925
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]