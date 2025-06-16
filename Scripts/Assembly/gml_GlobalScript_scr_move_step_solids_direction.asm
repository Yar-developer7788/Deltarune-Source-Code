.localvar 2 arguments
.localvar 10748 __mx 2658
.localvar 10749 __my 2659

:[0]
b [8]

> gml_Script_scr_move_step_solids_direction (locals=2, argc=2)
:[1]
push.v arg.argument1
push.v arg.argument0
call.i lengthdir_x(argc=2)
pop.v.v local.__mx
push.v arg.argument1
push.v arg.argument0
call.i lengthdir_y(argc=2)
pop.v.v local.__my
pushi.e 68
conv.i.v
push.v self.y
pushloc.v local.__my
add.v.v
push.v self.x
pushloc.v local.__mx
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [6]

:[2]
pushi.e 68
conv.i.v
push.v self.y
push.v self.x
pushloc.v local.__mx
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [4]

:[3]
pushi.e 0
pop.v.i local.__my
b [6]

:[4]
pushi.e 68
conv.i.v
push.v self.y
pushloc.v local.__my
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [6]

:[5]
pushi.e 0
pop.v.i local.__mx

:[6]
push.v self.x
pushloc.v local.__mx
add.v.v
pop.v.v self.x
push.v self.y
pushloc.v local.__my
add.v.v
pop.v.v self.y
pushloc.v local.__my
pushloc.v local.__mx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_distance(argc=4)
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_move_step_solids_direction
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_move_step_solids_direction
popz.v

:[end]