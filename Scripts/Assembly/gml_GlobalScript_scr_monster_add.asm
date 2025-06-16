.localvar 2 arguments

:[0]
b [8]

> gml_Script_scr_monster_add (locals=0, argc=2)
:[1]
pushi.e -1
pop.v.i self.__returnid
pushi.e 0
pop.v.i self.__mopenslot

:[2]
push.v self.__mopenslot
pushi.e 3
cmp.i.v LT
bf [6]

:[3]
pushi.e -5
push.v self.__mopenslot
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.i 61704246
setowner.e
push.v arg.argument0
pushi.e -5
push.v self.__mopenslot
conv.v.i
pop.v.v [array]self.monstertype
push.i 61704248
setowner.e
push.v arg.argument1
pushi.e -5
push.v self.__mopenslot
conv.v.i
pop.v.v [array]self.monsterinstancetype
push.v self.__mopenslot
call.i gml_Script_scr_monster_statreset(argc=1)
popz.v
push.v self.__mopenslot
call.i gml_Script_scr_monster_makeinstance(argc=1)
popz.v
push.v self.__mopenslot
pop.v.v self.__returnid
b [6]

:[5]
push.v self.__mopenslot
push.e 1
add.i.v
pop.v.v self.__mopenslot
b [2]

:[6]
push.v self.__returnid
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_monster_add
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_monster_add
popz.v

:[end]