.localvar 2 arguments

:[0]
b [6]

> gml_Script_scr_stickto_stop (locals=0, argc=0)
:[1]
push.s "_stickto"@10742
conv.s.v
push.v self.id
call.i variable_instance_exists(argc=2)
conv.v.b
bf [5]

:[2]
push.v self._stickto
pushi.e -9
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_stickto_stop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_stickto_stop
popz.v

:[end]