.localvar 2 arguments
.localvar 9196 __theta 3459
.localvar 9197 __radius 3460

:[0]
b [5]

> gml_Script_scr_orbity (locals=2, argc=5)
:[1]
push.v arg.argument4
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v arg.argument3
ret.v

:[3]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i point_direction(argc=4)
pop.v.v local.__theta
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i point_distance(argc=4)
pop.v.v local.__radius
push.v local.__theta
push.v arg.argument4
add.v.v
pop.v.v local.__theta
push.v arg.argument1
pushloc.v local.__theta
pushloc.v local.__radius
call.i lengthdir_y(argc=2)
add.v.v
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_orbity
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_orbity
popz.v

:[end]