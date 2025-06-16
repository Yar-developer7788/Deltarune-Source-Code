.localvar 2 arguments
.localvar 9196 __theta 3410
.localvar 9197 __radius 3411

:[0]
b [2]

> gml_Script_scr_orbitaroundpoint (locals=2, argc=3)
:[1]
push.v self.y
push.v self.x
push.v arg.argument1
push.v arg.argument0
call.i point_direction(argc=4)
pop.v.v local.__theta
push.v self.y
push.v self.x
push.v arg.argument1
push.v arg.argument0
call.i point_distance(argc=4)
pop.v.v local.__radius
push.v local.__theta
push.v arg.argument2
add.v.v
pop.v.v local.__theta
push.v arg.argument0
pushloc.v local.__theta
pushloc.v local.__radius
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v arg.argument1
pushloc.v local.__theta
pushloc.v local.__radius
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
exit.i

:[2]
push.i [function]gml_Script_scr_orbitaroundpoint
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_orbitaroundpoint
popz.v

:[end]