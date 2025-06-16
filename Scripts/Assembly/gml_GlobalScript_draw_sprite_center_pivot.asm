.localvar 2 arguments
.localvar 9196 __theta 3400
.localvar 9197 __radius 3401
.localvar 111 __xx 3402
.localvar 112 __yy 3403

:[0]
b [2]

> gml_Script_draw_sprite_center_pivot (locals=4, argc=4)
:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
call.i point_direction(argc=4)
pop.v.v local.__theta
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
call.i point_distance(argc=4)
pop.v.v local.__radius
push.v local.__theta
push.v self.image_angle
add.v.v
pop.v.v local.__theta
push.v arg.argument2
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushloc.v local.__theta
pushloc.v local.__radius
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v local.__xx
push.v arg.argument3
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushloc.v local.__theta
pushloc.v local.__radius
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v local.__yy
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
pushloc.v local.__yy
pushloc.v local.__xx
push.v arg.argument1
push.v arg.argument0
call.i draw_sprite_ext(argc=9)
popz.v
exit.i

:[2]
push.i [function]gml_Script_draw_sprite_center_pivot
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.draw_sprite_center_pivot
popz.v

:[end]