.localvar 2 arguments
.localvar 9196 __theta 1555
.localvar 9197 __radius 1556
.localvar 111 __xx 1557
.localvar 112 __yy 1558

:[0]
b [2]

> gml_Script_scr_drawpart_rotate (locals=4, argc=6)
:[1]
push.v arg.argument1
push.v arg.argument0
push.v self.sprite_yoffset
push.v self.sprite_xoffset
call.i point_direction(argc=4)
pop.v.v local.__theta
push.v arg.argument1
push.v arg.argument0
push.v self.sprite_yoffset
push.v self.sprite_xoffset
call.i point_distance(argc=4)
pop.v.v local.__radius
push.v local.__theta
push.v self.image_angle
add.v.v
pop.v.v local.__theta
push.v self.x
pushloc.v local.__theta
pushloc.v local.__radius
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v local.__xx
push.v self.y
pushloc.v local.__theta
pushloc.v local.__radius
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v local.__yy
push.v self.image_alpha
push.v self.image_blend
push.v self.image_blend
push.v self.image_blend
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
pushloc.v local.__yy
push.v arg.argument5
add.v.v
pushloc.v local.__xx
push.v arg.argument4
add.v.v
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_general(argc=16)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_drawpart_rotate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_drawpart_rotate
popz.v

:[end]