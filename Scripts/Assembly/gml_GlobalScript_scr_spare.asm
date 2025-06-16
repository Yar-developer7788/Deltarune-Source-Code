.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_spare (locals=0, argc=1)
:[1]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [3]

:[2]
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]
exit.i

:[4]
push.i [function]gml_Script_scr_spare
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_spare
popz.v

:[end]