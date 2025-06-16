.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.bighitbox
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.b.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
push.v self.y
push.v self.x
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.b.v
pushi.e 2
conv.i.v
push.v self.bbox_top
push.v self.bbox_left
call.i draw_circle(argc=4)
popz.v

:[end]