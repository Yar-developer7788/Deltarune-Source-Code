.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_dark_marker_ch1 (locals=0, argc=3)
:[1]
pushi.e 1407
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.thismarker
push.v self.thismarker
pushi.e -9
pushenv [3]

:[2]
push.v arg.argument2
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[3]
popenv [2]
push.v self.thismarker
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_dark_marker_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_dark_marker_ch1
popz.v

:[end]