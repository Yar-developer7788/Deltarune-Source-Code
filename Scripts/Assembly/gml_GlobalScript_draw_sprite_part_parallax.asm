.localvar 2 arguments
.localvar 12226 _mysprite 3842
.localvar 12227 _mywidth 3843
.localvar 12228 _myheight 3844
.localvar 12229 _xoffset 3845
.localvar 12230 _yoffset 3846

:[0]
b [12]

> gml_Script_draw_sprite_part_parallax (locals=5, argc=5)
:[1]
push.v arg.argument0
pop.v.v local._mysprite
push.v arg.argument0
call.i sprite_get_width(argc=1)
pop.v.v local._mywidth
push.v arg.argument0
call.i sprite_get_height(argc=1)
pop.v.v local._myheight
push.v arg.argument2
pushloc.v local._mywidth
mod.v.v
pop.v.v local._xoffset
push.v arg.argument3
pushloc.v local._myheight
mod.v.v
pop.v.v local._yoffset
pushloc.v local._xoffset
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
push.v local._xoffset
pushloc.v local._mywidth
add.v.v
pop.v.v local._xoffset

:[3]
pushloc.v local._yoffset
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
push.v local._yoffset
pushloc.v local._myheight
add.v.v
pop.v.v local._yoffset

:[5]
pushloc.v local._xoffset
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushloc.v local._yoffset
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v arg.argument4
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v arg.argument1
push.v arg.argument0
call.i draw_sprite_ext(argc=9)
popz.v
b [11]

:[10]
push.v arg.argument4
push.v self.image_blend
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushloc.v local._yoffset
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushloc.v local._xoffset
pushi.e 2
mul.i.v
add.v.v
pushloc.v local._myheight
pushloc.v local._yoffset
sub.v.v
pushloc.v local._mywidth
pushloc.v local._xoffset
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v arg.argument4
push.v self.image_blend
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushloc.v local._yoffset
pushloc.v local._xoffset
pushloc.v local._myheight
pushloc.v local._yoffset
sub.v.v
pushloc.v local._mywidth
pushloc.v local._xoffset
sub.v.v
push.v arg.argument1
push.v arg.argument0
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v arg.argument4
push.v self.image_blend
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushloc.v local._xoffset
pushi.e 2
mul.i.v
add.v.v
pushloc.v local._yoffset
pushloc.v local._mywidth
pushloc.v local._xoffset
sub.v.v
pushloc.v local._myheight
pushloc.v local._yoffset
sub.v.v
pushi.e 0
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v arg.argument4
push.v self.image_blend
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushloc.v local._yoffset
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushloc.v local._myheight
pushloc.v local._yoffset
sub.v.v
pushloc.v local._xoffset
pushi.e 0
conv.i.v
pushloc.v local._mywidth
pushloc.v local._xoffset
sub.v.v
push.v arg.argument1
push.v arg.argument0
call.i draw_sprite_part_ext(argc=12)
popz.v

:[11]
exit.i

:[12]
push.i [function]gml_Script_draw_sprite_part_parallax
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.draw_sprite_part_parallax
popz.v

:[end]