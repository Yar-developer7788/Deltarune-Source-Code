.localvar 2 arguments
.localvar 9196 __theta 3406
.localvar 9197 __radius 3407

:[0]
b [2]

> gml_Script_scr_orbitaroundobject (locals=2, argc=2)
:[1]
push.v self.y
push.v self.x
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
pop.v.v local.__theta
push.v self.y
push.v self.x
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.x
call.i point_distance(argc=4)
pop.v.v local.__radius
push.v local.__theta
push.v arg.argument1
add.v.v
pop.v.v local.__theta
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.x
pushloc.v local.__theta
pushloc.v local.__radius
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.y
pushloc.v local.__theta
pushloc.v local.__radius
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
exit.i

:[2]
push.i [function]gml_Script_scr_orbitaroundobject
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_orbitaroundobject
popz.v

:[end]