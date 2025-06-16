.localvar 2 arguments

:[0]
b [8]

> gml_Script_scr_monster_makeinstance (locals=0, argc=1)
:[1]
push.i 61442098
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monster
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
push.i 61442099
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstancetype
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monstermakey
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monstermakex
call.i gml_Script_instance_create(argc=3)
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monsterinstance
push.i 61442092
setowner.e
push.v arg.argument0
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.myself
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [5]

:[4]
pushi.e 12
conv.i.v
call.i event_user(argc=1)
popz.v

:[5]
popenv [4]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [7]

:[6]
pushi.e 15
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
popenv [6]
exit.i

:[8]
push.i [function]gml_Script_scr_monster_makeinstance
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_monster_makeinstance
popz.v

:[end]