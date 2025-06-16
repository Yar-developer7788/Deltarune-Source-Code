.localvar 2 arguments

:[0]
push.v self.block1
pushi.e -4
cmp.i.v NEQ
bf [4]

:[1]
pushi.e 0
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.block1
pushi.e -9
pushenv [3]

:[2]
pushi.e 0
conv.b.v
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i draw_rectangle_colour(argc=9)
popz.v

:[3]
popenv [2]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[4]
push.v self.block2
pushi.e -4
cmp.i.v NEQ
bf [end]

:[5]
pushi.e 0
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.block2
pushi.e -9
pushenv [7]

:[6]
pushi.e 0
conv.b.v
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i draw_rectangle_colour(argc=9)
popz.v

:[7]
popenv [6]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]