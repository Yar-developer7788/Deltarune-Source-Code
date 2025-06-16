.localvar 2 arguments

:[0]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.75
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 10
add.i.v
pushbltn.v builtin.room_width
pushi.e 10
add.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.d 0.85
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
add.v.d
pop.v.v self.desAlpha
push.v self.desAlpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 2671
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.desAlpha
push.d 0.25
mul.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 240
sub.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2672
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]