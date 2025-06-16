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
push.d 0.02
sub.d.v
pop.v.v self.fill_yscale_gradual

:[2]
push.v self.alpha2
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
push.v self.alpha2
push.d 0.04
add.d.v
pop.v.v self.alpha2
b [5]

:[4]
pushi.e 1
pop.v.i self.alpha2

:[5]
push.v 574.image_alpha
pushi.e 1
cmp.i.v LT
bf [7]

:[6]
push.v 574.image_alpha
pop.v.v self.alpha2
push.v 574.image_alpha
pop.v.v self.image_alpha

:[7]
push.v 574.image_alpha
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.image_alpha
push.d 0.9
cmp.d.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i self.alpha2
pushi.e 1
pop.v.i self.image_alpha

:[12]
push.v self.fill_yscale_gradual
push.d 0.02
cmp.d.v LT
bf [18]

:[13]
push.v self.wine_bottom_xscale
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
push.v self.wine_bottom_xscale
push.d 0.02
sub.d.v
pop.v.v self.wine_bottom_xscale

:[15]
push.v self.wine_bottom_yscale
pushi.e 0
cmp.i.v GT
bf [17]

:[16]
push.v self.wine_bottom_yscale
push.d 0.02
sub.d.v
pop.v.v self.wine_bottom_yscale

:[17]
push.v self.wine_bottom_yoffset
push.d 0.5
add.d.v
pop.v.v self.wine_bottom_yoffset

:[18]
push.v self.nofill
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
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
push.v self.wine_bottom_yscale
push.v self.wine_bottom_xscale
push.v self.y
push.v self.image_angle
pushi.e 270
add.i.v
push.v self.wine_bottom_yoffset
pushi.e 8
add.i.v
push.v self.image_yscale
mul.v.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
push.v self.image_angle
pushi.e 270
add.i.v
push.v self.wine_bottom_yoffset
pushi.e 8
add.i.v
push.v self.image_xscale
mul.v.v
call.i lengthdir_x(argc=2)
add.v.v
pushi.e 1
conv.i.v
pushi.e 1915
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.alpha2
push.i 65280
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
push.v self.alpha2
push.i 65280
conv.i.v
push.v self.image_angle
push.v self.wine_bottom_yscale
push.v self.wine_bottom_xscale
push.v self.y
push.v self.image_angle
pushi.e 270
add.i.v
push.v self.wine_bottom_yoffset
pushi.e 8
add.i.v
push.v self.image_yscale
mul.v.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
push.v self.image_angle
pushi.e 270
add.i.v
push.v self.wine_bottom_yoffset
pushi.e 8
add.i.v
push.v self.image_xscale
mul.v.v
call.i lengthdir_x(argc=2)
add.v.v
pushi.e 1
conv.i.v
pushi.e 1915
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[20]
call.i draw_self(argc=0)
popz.v

:[end]