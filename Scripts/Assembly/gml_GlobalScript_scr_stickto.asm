.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_stickto (locals=0, argc=2)
:[1]
pushi.e 925
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self._stickto
push.v self.id
push.v self._stickto
pushi.e -9
pop.v.v [stacktop]self.stickingobj
push.v arg.argument0
push.v self._stickto
pushi.e -9
pop.v.v [stacktop]self.stucktoobj
push.v arg.argument1
push.v self._stickto
pushi.e -9
pop.v.v [stacktop]self.relativedepth
push.v self._stickto
pushi.e -9
pushenv [3]

:[2]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]
exit.i

:[4]
push.i [function]gml_Script_scr_stickto
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_stickto
popz.v

:[end]