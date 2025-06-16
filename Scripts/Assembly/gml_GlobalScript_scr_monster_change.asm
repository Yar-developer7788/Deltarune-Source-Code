.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_monster_change (locals=0, argc=3)
:[1]
push.i 61573174
setowner.e
push.v arg.argument1
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monstertype
push.i 61573176
setowner.e
push.v arg.argument2
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monsterinstancetype
push.v arg.argument0
call.i gml_Script_scr_monster_statreset(argc=1)
popz.v
push.v arg.argument0
call.i gml_Script_scr_monster_makeinstance(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_monster_change
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_monster_change
popz.v

:[end]