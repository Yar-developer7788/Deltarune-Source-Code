.localvar 2 arguments
.localvar 9250 __surf 1631
.localvar 9242 __xdirA 1632
.localvar 9243 __xdirB 1633
.localvar 9244 __ydirA 1634
.localvar 9245 __ydirB 1635

:[0]
b [6]

> gml_Script_scr_draw_hard_outline (locals=5, argc=10)
:[1]
pushi.e -1
pop.v.i local.__surf
pushloc.v local.__surf
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [3]

:[2]
push.v arg.argument2
pushi.e 2
mul.i.v
push.v arg.argument2
pushi.e 2
mul.i.v
call.i surface_create(argc=2)
pop.v.v local.__surf

:[3]
pushloc.v local.__surf
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
push.v arg.argument9
pop.v.v local.__xdirA
pushi.e 0
pop.v.i local.__xdirB
pushi.e 0
pop.v.i local.__ydirA
push.v arg.argument9
pop.v.v local.__ydirB
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
pushloc.v local.__ydirA
add.v.v
push.v arg.argument2
pushloc.v local.__xdirA
add.v.v
push.v arg.argument1
push.v arg.argument0
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
pushloc.v local.__ydirA
sub.v.v
push.v arg.argument2
pushloc.v local.__xdirA
sub.v.v
push.v arg.argument1
push.v arg.argument0
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
pushloc.v local.__ydirB
add.v.v
push.v arg.argument2
pushloc.v local.__xdirB
add.v.v
push.v arg.argument1
push.v arg.argument0
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
pushloc.v local.__ydirB
sub.v.v
push.v arg.argument2
pushloc.v local.__xdirB
sub.v.v
push.v arg.argument1
push.v arg.argument0
call.i draw_sprite_ext(argc=9)
popz.v
call.i surface_reset_target(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument7
pushi.e 1
conv.b.v
call.i gpu_set_fog(argc=4)
popz.v
push.v arg.argument8
push.i 16777215
conv.i.v
push.v arg.argument6
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v arg.argument3
push.v arg.argument2
pushloc.v local.__surf
call.i draw_surface_ext(argc=8)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.b.v
call.i gpu_set_fog(argc=4)
popz.v
pushloc.v local.__surf
call.i surface_exists(argc=1)
conv.v.b
bf [5]

:[4]
pushloc.v local.__surf
call.i surface_free(argc=1)
popz.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_draw_hard_outline
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_draw_hard_outline
popz.v

:[end]