.localvar 2 arguments
.localvar 9170 _xoff 1529
.localvar 9172 _yoff 1530
.localvar 9174 _sprite_width 1531
.localvar 9175 _sprite_height 1532

:[0]
b [2]

> gml_Script_draw_sprite_ext_centerscale (locals=4, argc=9)
:[1]
push.v arg.argument0
call.i sprite_get_xoffset(argc=1)
push.v self.image_xscale
mul.v.v
pop.v.v local._xoff
push.v arg.argument0
call.i sprite_get_yoffset(argc=1)
push.v self.image_yscale
mul.v.v
pop.v.v local._yoff
push.v arg.argument0
call.i sprite_get_width(argc=1)
push.v self.image_xscale
mul.v.v
pop.v.v local._sprite_width
push.v arg.argument0
call.i sprite_get_width(argc=1)
push.v self.image_yscale
mul.v.v
pop.v.v local._sprite_height
push.v arg.argument8
push.v arg.argument7
push.v arg.argument6
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
pushloc.v local._sprite_height
pushloc.v local._yoff
sub.v.v
push.v arg.argument5
push.v self.image_yscale
sub.v.v
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v arg.argument2
pushloc.v local._sprite_width
pushloc.v local._xoff
sub.v.v
push.v arg.argument4
push.v self.image_xscale
sub.v.v
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v arg.argument1
push.v arg.argument0
call.i draw_sprite_ext(argc=9)
popz.v
exit.i

:[2]
push.i [function]gml_Script_draw_sprite_ext_centerscale
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.draw_sprite_ext_centerscale
popz.v

:[end]