.localvar 2 arguments
.localvar 9180 _boxleft 1547
.localvar 9181 _boxtop 1549
.localvar 9185 _yy 1551
.localvar 9183 _xx 1552

:[0]
b [2]

> gml_Script_scr_drawinbox_ext (locals=4, argc=4)
:[1]
push.v arg.argument0
push.v arg.argument2
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self._minx
push.v arg.argument1
push.v arg.argument3
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self._miny
pushloc.v local._boxleft
push.v self.x
push.v self.sprite_xoffset
sub.v.v
sub.v.v
pushi.e 1
add.i.v
pop.v.v self._maxx
pushloc.v local._boxtop
push.v self.y
push.v self.sprite_yoffset
sub.v.v
sub.v.v
pushi.e 1
add.i.v
pop.v.v self._maxy
push.v self.image_alpha
push.v self.image_blend
push.v self.image_yscale
call.i sign(argc=1)
push.v self.image_xscale
call.i sign(argc=1)
pushloc.v local._boxtop
pushi.e 1
add.i.v
pushloc.v local._boxleft
pushi.e 1
add.i.v
push.v arg.argument3
push.v arg.argument2
pushloc.v local._yy
pushloc.v local._xx
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_drawinbox_ext
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_drawinbox_ext
popz.v

:[end]