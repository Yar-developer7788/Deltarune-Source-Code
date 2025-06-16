.localvar 2 arguments
.localvar 9205 _true_xanchor 1569
.localvar 9206 _true_yanchor 1570
.localvar 9208 _leftcrop 1571
.localvar 9209 _topcrop 1572
.localvar 9210 _rightcrop 1573
.localvar 9211 _bottomcrop 1574

:[0]
b [9]

> gml_Script_scr_drawpart_crop (locals=6, argc=4)
:[1]
push.v self.x
push.v self.sprite_xoffset
call.i abs(argc=1)
sub.v.v
pop.v.v local._true_xanchor
push.v self.y
push.v self.sprite_yoffset
call.i abs(argc=1)
sub.v.v
pop.v.v local._true_yanchor
pushloc.v local._true_xanchor
push.v arg.argument0
cmp.v.v GT
bf [5]

:[2]
pushloc.v local._true_xanchor
push.v self.sprite_width
add.v.v
push.v arg.argument2
cmp.v.v LT
bf [5]

:[3]
pushloc.v local._true_yanchor
push.v arg.argument1
cmp.v.v GT
bf [5]

:[4]
pushloc.v local._true_yanchor
push.v self.sprite_height
add.v.v
push.v arg.argument3
cmp.v.v LT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
call.i draw_self(argc=0)
popz.v
exit.i

:[8]
push.v self.sprite_width
call.i abs(argc=1)
pushi.e 0
conv.i.v
push.v arg.argument0
pushloc.v local._true_xanchor
sub.v.v
call.i clamp(argc=3)
pop.v.v local._leftcrop
push.v self.sprite_height
call.i abs(argc=1)
pushi.e 0
conv.i.v
push.v arg.argument1
pushloc.v local._true_yanchor
sub.v.v
call.i clamp(argc=3)
pop.v.v local._topcrop
push.v self.sprite_width
call.i abs(argc=1)
pushi.e 0
conv.i.v
push.v arg.argument2
pushloc.v local._true_xanchor
sub.v.v
call.i clamp(argc=3)
pop.v.v local._rightcrop
push.v self.sprite_height
call.i abs(argc=1)
pushi.e 0
conv.i.v
push.v arg.argument3
pushloc.v local._true_yanchor
sub.v.v
call.i clamp(argc=3)
pop.v.v local._bottomcrop
push.v self.image_alpha
push.v self.image_blend
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.sprite_yoffset
sub.v.v
pushloc.v local._topcrop
add.v.v
push.v self.x
push.v self.sprite_xoffset
sub.v.v
pushloc.v local._leftcrop
add.v.v
pushloc.v local._bottomcrop
pushloc.v local._rightcrop
pushloc.v local._topcrop
pushloc.v local._leftcrop
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
exit.i

:[9]
push.i [function]gml_Script_scr_drawpart_crop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_drawpart_crop
popz.v

:[end]