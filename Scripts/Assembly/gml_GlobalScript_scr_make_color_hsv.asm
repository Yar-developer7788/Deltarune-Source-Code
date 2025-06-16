.localvar 2 arguments
.localvar 11454 hue 3082

:[0]
b [6]

> gml_Script_scr_make_color_hsv (locals=1, argc=3)
:[1]
push.v arg.argument0
pop.v.v local.hue
pushloc.v local.hue
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e 256
pushloc.v local.hue
neg.v
pushi.e 256
mod.i.v
sub.v.i
pop.v.v local.hue
b [4]

:[3]
push.v local.hue
pushi.e 256
mod.i.v
pop.v.v local.hue

:[4]
push.v arg.argument2
push.v arg.argument1
pushloc.v local.hue
call.i make_color_hsv(argc=3)
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_make_color_hsv
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_make_color_hsv
popz.v

:[end]