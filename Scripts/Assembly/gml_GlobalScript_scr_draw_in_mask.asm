.localvar 2 arguments

:[0]
b [6]

> gml_Script_scr_draw_set_mask (locals=0, argc=1)
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
pushi.e 0
conv.b.v
call.i gpu_set_blendenable(argc=1)
popz.v
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
call.i gpu_set_colorwriteenable(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v arg.argument0
conv.v.b
bf [5]

:[4]
pushi.e 0
conv.b.v
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_draw_set_mask
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -6
pop.v.v [stacktop]self.scr_draw_set_mask
popz.v
b [8]

> gml_Script_scr_draw_in_mask_begin (locals=0, argc=0)
:[7]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_blendenable(argc=1)
popz.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
call.i gpu_set_colorwriteenable(argc=4)
popz.v
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
call.i gpu_set_blendmode_ext(argc=2)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gpu_set_alphatestref(argc=1)
popz.v
exit.i

:[8]
push.i [function]gml_Script_scr_draw_in_mask_begin
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -6
pop.v.v [stacktop]self.scr_draw_in_mask_begin
popz.v

:[end]