.localvar 2 arguments
.localvar 9242 __xdirA 1619
.localvar 9243 __xdirB 1620
.localvar 9244 __ydirA 1621
.localvar 9245 __ydirB 1622

:[0]
b [4]

> gml_Script_scr_draw_outline (locals=4, argc=3)
:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument1
pushi.e 1
conv.b.v
call.i gpu_set_fog(argc=4)
popz.v
push.v arg.argument0
pop.v.v local.__xdirA
pushi.e 0
pop.v.i local.__xdirB
pushi.e 0
pop.v.i local.__ydirA
push.v arg.argument0
pop.v.v local.__ydirB
push.v self.image_angle
pushi.e 90
mod.i.v
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
push.v self.image_angle
push.v arg.argument0
call.i lengthdir_x(argc=2)
pop.v.v local.__xdirA
push.v self.image_angle
pushi.e 90
add.i.v
push.v arg.argument0
call.i lengthdir_x(argc=2)
pop.v.v local.__xdirB
push.v self.image_angle
pushi.e 90
add.i.v
push.v arg.argument0
call.i lengthdir_y(argc=2)
pop.v.v local.__ydirA
push.v self.image_angle
push.v arg.argument0
call.i lengthdir_y(argc=2)
pop.v.v local.__ydirB

:[3]
push.v self.image_alpha
push.v arg.argument2
mul.v.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.__ydirA
add.v.v
push.v self.x
pushloc.v local.__xdirA
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v arg.argument2
mul.v.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.__ydirA
sub.v.v
push.v self.x
pushloc.v local.__xdirA
sub.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v arg.argument2
mul.v.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.__ydirB
add.v.v
push.v self.x
pushloc.v local.__xdirB
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v arg.argument2
mul.v.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.__ydirB
sub.v.v
push.v self.x
pushloc.v local.__xdirB
sub.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.b.v
call.i gpu_set_fog(argc=4)
popz.v
exit.i

:[4]
push.i [function]gml_Script_scr_draw_outline
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_draw_outline
popz.v

:[end]