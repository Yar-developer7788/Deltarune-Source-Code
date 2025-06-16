.localvar 2 arguments

:[0]
pushi.e 0
conv.b.v
call.i gpu_set_blendenable(argc=1)
popz.v
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
call.i gpu_set_colorwriteenable(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.y_mask_pos
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.sprite_index
call.i sprite_get_width(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.y_mask_pos
push.v self.x
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_blendenable(argc=1)
popz.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
call.i gpu_set_colorwriteenable(argc=4)
popz.v
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
call.i gpu_set_blendmode_ext(argc=2)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
call.i draw_self(argc=0)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
push.v self.siner
push.d 0.075
add.d.v
pop.v.v self.siner
push.v self.ystart
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
pop.v.v self.y

:[end]