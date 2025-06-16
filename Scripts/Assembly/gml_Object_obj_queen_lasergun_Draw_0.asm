.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.3
conv.d.v
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 1
conv.i.v
pushi.e 999
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1946
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
call.i draw_self(argc=0)
popz.v

:[end]