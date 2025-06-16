.localvar 2 arguments
.localvar 6482 xx 961
.localvar 6483 yy 962
.localvar 6664 radius 963
.localvar 6673 inner_radius 964
.localvar 6666 steps 965

:[0]
b [5]

> gml_Script_scr_draw_circle_width_radius (locals=5, argc=5)
:[1]
push.v arg.argument0
pop.v.v local.xx
push.v arg.argument1
pop.v.v local.yy
push.v arg.argument2
pop.v.v local.radius
pushi.e 0
conv.i.v
push.v arg.argument3
call.i max(argc=2)
pop.v.v local.inner_radius
push.v arg.argument4
pop.v.v local.steps
pushi.e 4
conv.i.v
call.i draw_primitive_begin(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushloc.v local.steps
cmp.v.v LT
bf [4]

:[3]
pushloc.v local.yy
pushi.e 360
push.v self.i
mul.v.i
pushloc.v local.steps
div.v.v
pushloc.v local.inner_radius
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local.xx
pushi.e 360
push.v self.i
mul.v.i
pushloc.v local.steps
div.v.v
pushloc.v local.inner_radius
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
pushloc.v local.yy
pushi.e 360
push.v self.i
mul.v.i
pushloc.v local.steps
div.v.v
pushloc.v local.radius
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local.xx
pushi.e 360
push.v self.i
mul.v.i
pushloc.v local.steps
div.v.v
pushloc.v local.radius
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
pushloc.v local.yy
pushi.e 360
push.v self.i
pushi.e 1
add.i.v
mul.v.i
pushloc.v local.steps
div.v.v
pushloc.v local.radius
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local.xx
pushi.e 360
push.v self.i
pushi.e 1
add.i.v
mul.v.i
pushloc.v local.steps
div.v.v
pushloc.v local.radius
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
pushloc.v local.yy
pushi.e 360
push.v self.i
pushi.e 1
add.i.v
mul.v.i
pushloc.v local.steps
div.v.v
pushloc.v local.radius
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local.xx
pushi.e 360
push.v self.i
pushi.e 1
add.i.v
mul.v.i
pushloc.v local.steps
div.v.v
pushloc.v local.radius
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
pushloc.v local.yy
pushi.e 360
push.v self.i
pushi.e 1
add.i.v
mul.v.i
pushloc.v local.steps
div.v.v
pushloc.v local.inner_radius
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local.xx
pushi.e 360
push.v self.i
pushi.e 1
add.i.v
mul.v.i
pushloc.v local.steps
div.v.v
pushloc.v local.inner_radius
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
pushloc.v local.yy
pushi.e 360
push.v self.i
mul.v.i
pushloc.v local.steps
div.v.v
pushloc.v local.inner_radius
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local.xx
pushi.e 360
push.v self.i
mul.v.i
pushloc.v local.steps
div.v.v
pushloc.v local.inner_radius
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
call.i draw_primitive_end(argc=0)
popz.v
exit.i

:[5]
push.i [function]gml_Script_scr_draw_circle_width_radius
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_draw_circle_width_radius
popz.v

:[end]