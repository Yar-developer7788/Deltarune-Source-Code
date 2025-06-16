.localvar 2 arguments

:[0]
push.v 574.shieldacthp
push.v 574.shieldactmaxhp
div.v.v
pop.v.v self.fill_yscale
push.v self.fill_yscale_gradual
push.v self.fill_yscale
cmp.v.v GT
bf [2]

:[1]
push.v self.fill_yscale_gradual
push.d 0.005
sub.d.v
pop.v.v self.fill_yscale_gradual

:[2]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.fill_yscale_gradual
mul.v.v
push.v self.image_xscale
push.v self.y
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 9
push.v self.image_yscale
mul.v.i
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 9
push.v self.image_xscale
mul.v.i
call.i lengthdir_x(argc=2)
add.v.v
pushi.e 0
conv.i.v
pushi.e 1915
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 8
push.v self.image_yscale
mul.v.i
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 8
push.v self.image_xscale
mul.v.i
call.i lengthdir_x(argc=2)
add.v.v
pushi.e 1
conv.i.v
pushi.e 1915
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
call.i draw_self(argc=0)
popz.v

:[end]