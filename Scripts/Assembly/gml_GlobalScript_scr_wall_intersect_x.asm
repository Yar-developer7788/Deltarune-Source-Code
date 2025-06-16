.localvar 2 arguments
.localvar 11789 ylength 3428

:[0]
b [6]

> gml_Script_scr_wall_intersect_x (locals=1, argc=5)
:[1]
push.v arg.argument3
push.v arg.argument2
call.i lengthdir_y(argc=2)
pop.v.v local.ylength
pushloc.v local.ylength
push.v self.y
sub.v.v
call.i sign(argc=1)
push.v arg.argument4
push.v self.y
sub.v.v
call.i sign(argc=1)
cmp.v.v NEQ
bf [4]

:[2]
push.v arg.argument0
push.v arg.argument3
push.v arg.argument2
call.i lengthdir_x(argc=2)
add.v.v
ret.v

:[3]
b [5]

:[4]
push.v arg.argument0
push.v arg.argument3
push.v arg.argument1
push.v arg.argument4
sub.v.v
call.i abs(argc=1)
pushloc.v local.ylength
div.v.v
call.i lengthdir_x(argc=2)
add.v.v
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_wall_intersect_x
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_wall_intersect_x
popz.v

:[end]