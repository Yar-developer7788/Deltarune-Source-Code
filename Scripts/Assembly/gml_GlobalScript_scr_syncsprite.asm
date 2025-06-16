.localvar 2 arguments
.localvar 9779 _instance 3168

:[0]
b [5]

> gml_Script_scr_syncsprite (locals=1, argc=6)
:[1]
pushi.e 1090
conv.i.v
push.v arg.argument5
push.v arg.argument2
push.v arg.argument1
call.i instance_create_depth(argc=4)
pop.v.v local._instance
pushloc.v local._instance
pushi.e -9
pushenv [3]

:[2]
push.v arg.argument0
pop.v.v self.sprite_index
push.v arg.argument3
pop.v.v self.bpm
push.v arg.argument4
pop.v.v self.loopsPerBeat

:[3]
popenv [2]
pushloc.v local._instance
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_syncsprite
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_syncsprite
popz.v

:[end]