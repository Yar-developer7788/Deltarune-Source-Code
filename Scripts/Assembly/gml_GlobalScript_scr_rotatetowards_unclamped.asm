.localvar 2 arguments
.localvar 11799 __diff 3444

:[0]
b [3]

> gml_Script_scr_rotatetowards_unclamped (locals=1, argc=3)
:[1]
push.v arg.argument0
push.v arg.argument1
call.i angle_difference(argc=2)
pop.v.v local.__diff
push.v arg.argument0
pushloc.v local.__diff
call.i sign(argc=1)
push.v arg.argument2
mul.v.v
add.v.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_rotatetowards_unclamped
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_rotatetowards_unclamped
popz.v

:[end]