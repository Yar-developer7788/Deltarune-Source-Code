.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_actor_setup_nofacing (locals=0, argc=3)
:[1]
push.v arg.argument0
pop.v.v self._actorid
push.v arg.argument1
pop.v.v self._actorinstance
push.v arg.argument2
pop.v.v self._actorname
push.i 56724252
setowner.e
push.v self._actorinstance
pushi.e 898
push.v self._actorid
conv.v.i
pop.v.v [array]self.actor_id
push.i 56724251
setowner.e
push.v self._actorname
pushi.e 898
push.v self._actorid
conv.v.i
pop.v.v [array]self.actor_name
push.v self._actorname
push.v self._actorinstance
pushi.e -9
pop.v.v [stacktop]self.name
exit.i

:[2]
push.i [function]gml_Script_scr_actor_setup_nofacing
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_actor_setup_nofacing
popz.v

:[end]