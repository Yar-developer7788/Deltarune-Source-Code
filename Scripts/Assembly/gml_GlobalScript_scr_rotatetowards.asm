.localvar 2 arguments
.localvar 11799 __diff 3440

:[0]
b [6]

> gml_Script_scr_rotatetowards (locals=1, argc=3)
:[1]
push.v arg.argument0
push.v arg.argument1
call.i angle_difference(argc=2)
pop.v.v local.__diff
pushloc.v local.__diff
call.i abs(argc=1)
push.v arg.argument2
cmp.v.v GT
bf [4]

:[2]
push.v arg.argument0
pushloc.v local.__diff
call.i sign(argc=1)
push.v arg.argument2
mul.v.v
add.v.v
ret.v

:[3]
b [5]

:[4]
push.v arg.argument1
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_rotatetowards
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_rotatetowards
popz.v
b [9]

> gml_Script_scr_angle_lerp (locals=1, argc=3)
:[7]
push.v arg.argument0
push.v arg.argument1
call.i angle_difference(argc=2)
pop.v.v local.__diff
push.v arg.argument0
push.v arg.argument2
pushloc.v local.__diff
pushi.e 0
conv.i.v
call.i lerp(argc=3)
add.v.v
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_scr_angle_lerp
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -6
pop.v.v [stacktop]self.scr_angle_lerp
popz.v

:[end]