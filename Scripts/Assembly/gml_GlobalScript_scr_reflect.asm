.localvar 2 arguments
.localvar 11784 reversedir 3424
.localvar 11786 angledif 3425

:[0]
b [8]

> gml_Script_scr_reflect (locals=2, argc=2)
:[1]
push.v arg.argument0
pushi.e 180
add.i.v
pushi.e 360
mod.i.v
pop.v.v local.reversedir
pushloc.v local.reversedir
push.v arg.argument1
call.i angle_difference(argc=2)
pop.v.v local.angledif
pushloc.v local.angledif
pushi.e 90
cmp.i.v GTE
bt [3]

:[2]
pushloc.v local.angledif
pushi.e -90
cmp.i.v LTE
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
push.v arg.argument0
ret.v

:[6]
push.v arg.argument1
pushloc.v local.angledif
add.v.v
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_reflect
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_reflect
popz.v

:[end]