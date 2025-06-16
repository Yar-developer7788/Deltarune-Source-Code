.localvar 2 arguments
.localvar 290 _tempVector 200
.localvar 292 _dir 201
.localvar 294 _len 202

:[0]
b [7]

> gml_Script_scr_rotatevector (locals=3, argc=3)
:[1]
push.v arg.argument1
push.v arg.argument0
b [3]

> gml_Script____struct___0_scr_rotatevector_gml_GlobalScript_scr_rotatevector (locals=0, argc=0)
:[2]
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[3]
push.i [function]gml_Script____struct___0_scr_rotatevector_gml_GlobalScript_scr_rotatevector
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -16
pop.v.v [stacktop]static.___struct___0
call.i @@NewGMLObject@@(argc=3)
pop.v.v local._tempVector
push.v arg.argument2
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushloc.v local._tempVector
ret.v

:[5]
push.v arg.argument1
push.v arg.argument0
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_direction(argc=4)
pop.v.v local._dir
push.v arg.argument1
push.v arg.argument0
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_distance(argc=4)
pop.v.v local._len
pushloc.v local._dir
push.v arg.argument2
add.v.v
pushloc.v local._len
call.i lengthdir_x(argc=2)
pushloc.v local._tempVector
pushi.e -9
pop.v.v [stacktop]self.x
pushloc.v local._dir
push.v arg.argument2
add.v.v
pushloc.v local._len
call.i lengthdir_y(argc=2)
pushloc.v local._tempVector
pushi.e -9
pop.v.v [stacktop]self.y
pushloc.v local._tempVector
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_scr_rotatevector
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_rotatevector
popz.v

:[end]