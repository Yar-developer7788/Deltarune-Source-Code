.localvar 2 arguments
.localvar 11806 __targetdir 3447
.localvar 11799 __diff 3448

:[0]
b [6]

> gml_Script_scr_rotatetowards_point (locals=2, argc=4)
:[1]
push.v arg.argument2
push.v arg.argument1
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v local.__targetdir
push.v arg.argument0
pushloc.v local.__targetdir
call.i angle_difference(argc=2)
pop.v.v local.__diff
pushloc.v local.__diff
call.i abs(argc=1)
push.v arg.argument3
cmp.v.v GT
bf [4]

:[2]
push.v arg.argument0
pushloc.v local.__diff
call.i sign(argc=1)
push.v arg.argument3
mul.v.v
add.v.v
ret.v

:[3]
b [5]

:[4]
pushloc.v local.__targetdir
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_rotatetowards_point
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_rotatetowards_point
popz.v

:[end]