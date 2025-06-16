.localvar 2 arguments

:[0]
b [9]

> gml_Script_scr_move_precise (locals=0, argc=3)
:[1]
pushi.e 844
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self._moveprecise
push.v self.id
push.v self._moveprecise
pushi.e -9
pop.v.v [stacktop]self.target
push.v arg.argument0
push.v self._moveprecise
pushi.e -9
pop.v.v [stacktop]self.type
push.v arg.argument1
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
push.v arg.argument1
push.v self._moveprecise
pushi.e -9
pop.v.v [stacktop]self.xOrientation

:[3]
push.v arg.argument2
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
push.v arg.argument2
push.v self._moveprecise
pushi.e -9
pop.v.v [stacktop]self.yOrientation

:[5]
push.v self._moveprecise
pushi.e -9
pushenv [7]

:[6]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
popenv [6]
push.v self._moveprecise
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_scr_move_precise
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_move_precise
popz.v

:[end]