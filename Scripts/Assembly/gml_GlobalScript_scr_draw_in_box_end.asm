.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_draw_in_box_end (locals=0, argc=0)
:[1]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [3]

:[2]
exit.i

:[3]
pushi.e 128
conv.i.v
call.i gpu_set_alphatestref(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
exit.i

:[4]
push.i [function]gml_Script_scr_draw_in_box_end
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_draw_in_box_end
popz.v

:[end]