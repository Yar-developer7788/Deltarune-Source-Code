.localvar 2 arguments
.localvar 6482 xx 4620
.localvar 6483 yy 4621
.localvar 723 str 4622
.localvar 14 __txtcolor__ 4623

:[0]
b [2]

> gml_Script_scr_84_draw_text_outline_ch1 (locals=4, argc=3)
:[1]
push.v arg.argument0
pop.v.v local.xx
push.v arg.argument1
pop.v.v local.yy
push.v arg.argument2
pop.v.v local.str
call.i draw_get_color(argc=0)
pop.v.v local.__txtcolor__
pushi.e 0
conv.i.v
call.i draw_set_colour(argc=1)
popz.v
pushloc.v local.str
pushloc.v local.yy
pushi.e 1
sub.i.v
pushloc.v local.xx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
pushloc.v local.str
pushloc.v local.yy
pushi.e 1
sub.i.v
pushloc.v local.xx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
pushloc.v local.str
pushloc.v local.yy
pushi.e 1
add.i.v
pushloc.v local.xx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
pushloc.v local.str
pushloc.v local.yy
pushi.e 1
add.i.v
pushloc.v local.xx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
pushloc.v local.__txtcolor__
call.i draw_set_colour(argc=1)
popz.v
pushloc.v local.str
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_84_draw_text_outline_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_draw_text_outline_ch1
popz.v

:[end]