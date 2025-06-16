.localvar 2 arguments
.localvar 9196 __theta 3386
.localvar 9197 __radius 3387
.localvar 111 __xx 3388
.localvar 112 __yy 3389

:[0]
b [2]

> gml_Script_scr_pivotonpoint (locals=4, argc=3)
:[1]
push.v arg.argument1
push.v arg.argument0
push.v self.sprite_yoffset
push.v self.sprite_xoffset
call.i point_direction(argc=4)
pop.v.v local.__theta
push.v arg.argument1
push.v arg.argument0
push.v self.sprite_yoffset
push.v self.sprite_xoffset
call.i point_distance(argc=4)
pop.v.v local.__radius
push.v local.__theta
push.v self.direction
add.v.v
pop.v.v local.__theta
push.v self.x
pushloc.v local.__theta
pushloc.v local.__radius
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v local.__xx
push.v self.y
pushloc.v local.__theta
pushloc.v local.__radius
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v local.__yy
push.v arg.argument2
pushloc.v local.__yy
pushloc.v local.__xx
call.i gml_Script_scr_rotatearoundpoint(argc=3)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_pivotonpoint
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_pivotonpoint
popz.v

:[end]