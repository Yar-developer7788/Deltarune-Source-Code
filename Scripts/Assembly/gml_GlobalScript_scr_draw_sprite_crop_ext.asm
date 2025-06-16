.localvar 2 arguments
.localvar 9214 _sprite_xoffset 1589
.localvar 9215 _sprite_yoffset 1590
.localvar 9174 _sprite_width 1591
.localvar 9175 _sprite_height 1592
.localvar 9205 _true_xanchor 1593
.localvar 9206 _true_yanchor 1594
.localvar 9208 _leftcrop 1596
.localvar 9209 _topcrop 1597
.localvar 9210 _rightcrop 1598
.localvar 9211 _bottomcrop 1599

:[0]
b [9]

> gml_Script_scr_draw_sprite_crop_ext (locals=10, argc=12)
:[1]
push.v arg.argument0
call.i sprite_get_xoffset(argc=1)
pop.v.v local._sprite_xoffset
push.v arg.argument0
call.i sprite_get_yoffset(argc=1)
pop.v.v local._sprite_yoffset
push.v arg.argument0
call.i sprite_get_width(argc=1)
push.v arg.argument8
mul.v.v
pop.v.v local._sprite_width
push.v arg.argument0
call.i sprite_get_height(argc=1)
push.v arg.argument9
mul.v.v
pop.v.v local._sprite_height
push.v self.x
pushloc.v local._sprite_xoffset
call.i abs(argc=1)
push.v arg.argument8
mul.v.v
sub.v.v
pop.v.v local._true_xanchor
push.v self.y
pushloc.v local._sprite_yoffset
call.i abs(argc=1)
push.v arg.argument9
mul.v.v
sub.v.v
pop.v.v local._true_yanchor
pushloc.v local._true_xanchor
push.v arg.argument2
cmp.v.v GT
bf [5]

:[2]
pushloc.v local._true_xanchor
pushloc.v local._sprite_width
add.v.v
push.v arg.argument4
cmp.v.v LT
bf [5]

:[3]
pushloc.v local._true_yanchor
push.v arg.argument3
cmp.v.v GT
bf [5]

:[4]
pushloc.v local._true_yanchor
pushloc.v local._sprite_height
add.v.v
push.v arg.argument5
cmp.v.v LT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v arg.argument11
push.v arg.argument10
pushi.e 0
conv.i.v
push.v arg.argument9
push.v arg.argument8
push.v arg.argument7
push.v arg.argument6
push.v arg.argument1
push.v arg.argument0
call.i draw_sprite_ext(argc=9)
popz.v
exit.i

:[8]
pushloc.v local._sprite_width
call.i abs(argc=1)
pushi.e 0
conv.i.v
push.v arg.argument2
pushloc.v local._true_xanchor
sub.v.v
call.i clamp(argc=3)
pop.v.v local._leftcrop
pushloc.v local._sprite_height
call.i abs(argc=1)
pushi.e 0
conv.i.v
push.v arg.argument3
pushloc.v local._true_yanchor
sub.v.v
call.i clamp(argc=3)
pop.v.v local._topcrop
pushloc.v local._sprite_width
call.i abs(argc=1)
pushi.e 0
conv.i.v
push.v arg.argument4
pushloc.v local._true_xanchor
sub.v.v
call.i clamp(argc=3)
pop.v.v local._rightcrop
pushloc.v local._sprite_height
call.i abs(argc=1)
pushi.e 0
conv.i.v
push.v arg.argument5
pushloc.v local._true_yanchor
sub.v.v
call.i clamp(argc=3)
pop.v.v local._bottomcrop
push.v arg.argument11
push.v arg.argument10
push.v arg.argument9
push.v arg.argument8
push.v arg.argument7
pushloc.v local._sprite_yoffset
sub.v.v
pushloc.v local._topcrop
add.v.v
push.v arg.argument6
pushloc.v local._sprite_xoffset
sub.v.v
pushloc.v local._leftcrop
add.v.v
pushloc.v local._bottomcrop
pushloc.v local._rightcrop
pushloc.v local._topcrop
pushloc.v local._leftcrop
push.v arg.argument1
push.v arg.argument0
call.i draw_sprite_part_ext(argc=12)
popz.v
exit.i

:[9]
push.i [function]gml_Script_scr_draw_sprite_crop_ext
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_draw_sprite_crop_ext
popz.v

:[end]