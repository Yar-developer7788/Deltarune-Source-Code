.localvar 2 arguments
.localvar 6256 _newVector 576

:[0]
b [5]

> gml_Script_Vector2 (locals=1, argc=2)
:[1]
push.v arg.argument1
push.v arg.argument0
b [3]

> gml_Script____struct___1_Vector2_gml_GlobalScript_Vector2 (locals=0, argc=0)
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
push.i [function]gml_Script____struct___1_Vector2_gml_GlobalScript_Vector2
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pushi.e -16
pop.v.v [stacktop]static.___struct___1
call.i @@NewGMLObject@@(argc=3)
pop.v.v local._newVector
pushloc.v local._newVector
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_Vector2
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.Vector2
popz.v

:[end]