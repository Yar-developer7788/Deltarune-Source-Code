.localvar 2 arguments

:[0]
b [11]

> gml_Script_scr_monsterattacknamecount (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self.__sameattack
pushi.e 0
pop.v.i self._sameattacki

:[2]
push.v self._sameattacki
pushi.e 3
cmp.i.v LT
bf [9]

:[3]
pushi.e -5
push.v self._sameattacki
conv.v.i
push.v [array]self.monsterattackname
push.v arg.argument0
cmp.v.v EQ
bf [5]

:[4]
pushi.e -5
push.v self._sameattacki
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v self.__sameattack
push.e 1
add.i.v
pop.v.v self.__sameattack

:[8]
push.v self._sameattacki
push.e 1
add.i.v
pop.v.v self._sameattacki
b [2]

:[9]
push.v self.__sameattack
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_scr_monsterattacknamecount
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_monsterattacknamecount
popz.v

:[end]