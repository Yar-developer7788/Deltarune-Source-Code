.localvar 2 arguments

:[0]
b [9]

> gml_Script_scr_draw_circle_width (locals=0, argc=4)
:[1]
push.v arg.argument3
pushi.e 1
cmp.i.v LTE
bt [3]

:[2]
push.v arg.argument3
push.v arg.argument2
cmp.v.v GTE
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
push.v arg.argument3
push.v arg.argument2
cmp.v.v LT
conv.b.v
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i draw_circle(argc=4)
popz.v
exit.i

:[6]
pushi.e -1
pop.v.i self.ring_surf
push.v self.ring_surf
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [8]

:[7]
push.v arg.argument2
pushi.e 2
mul.i.v
push.v arg.argument2
pushi.e 2
mul.i.v
call.i surface_create(argc=2)
pop.v.v self.ring_surf
push.v self.ring_surf
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushi.e 0
conv.b.v
push.v arg.argument2
push.v arg.argument2
push.v arg.argument2
call.i draw_circle(argc=4)
popz.v
pushi.e 3
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v arg.argument2
push.v arg.argument3
sub.v.v
push.v arg.argument2
push.v arg.argument2
call.i draw_circle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v

:[8]
push.v arg.argument1
push.v arg.argument2
sub.v.v
push.v arg.argument0
push.v arg.argument2
sub.v.v
push.v self.ring_surf
call.i draw_surface(argc=3)
popz.v
exit.i

:[9]
push.i [function]gml_Script_scr_draw_circle_width
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_draw_circle_width
popz.v

:[end]