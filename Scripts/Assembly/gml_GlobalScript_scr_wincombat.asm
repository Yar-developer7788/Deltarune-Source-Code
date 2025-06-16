.localvar 2 arguments

:[0]
b [37]

> gml_Script_scr_wincombat (locals=0, argc=0)
:[1]
pushi.e -5
pushi.e 60
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bt [3]

:[2]
pushi.e -5
pushi.e 36
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [18]

:[5]
pushi.e 7
pop.v.i global.myfight
pushi.e -1
pop.v.i global.mnfight
pushi.e 357
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.victory

:[7]
popenv [6]
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [17]

:[9]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [12]

:[11]
push.e 0

:[12]
bf [16]

:[13]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [15]

:[14]
call.i gml_Script_scr_monsterdefeat(argc=0)
popz.v

:[15]
popenv [14]

:[16]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [8]

:[17]
b [36]

:[18]
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [28]

:[20]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [23]

:[22]
push.e 0

:[23]
bf [27]

:[24]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [26]

:[25]
call.i gml_Script_scr_monsterdefeat(argc=0)
popz.v

:[26]
popenv [25]

:[27]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [19]

:[28]
pushi.e -5
pushi.e 60
push.v [array]self.flag
pop.v.v global.encounterno
pushglb.v global.encounterno
call.i gml_Script_scr_encountersetup(argc=1)
popz.v
push.i 13862692
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 60
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.__j

:[29]
push.v self.__j
pushi.e 3
cmp.i.v LT
bf [35]

:[30]
pushi.e -5
push.v self.__j
conv.v.i
push.v [array]self.monstertype
pushi.e 0
cmp.i.v NEQ
bf [34]

:[31]
pushi.e -5
push.v self.__j
conv.v.i
push.v [array]self.monsterinstancetype
pushi.e -5
push.v self.__j
conv.v.i
push.v [array]self.monstertype
call.i gml_Script_scr_monster_add(argc=2)
pop.v.v self._newmonster
push.i 13765105
setowner.e
call.i gml_Script_camerax(argc=0)
pushi.e 800
add.i.v
pushi.e -5
push.v self._newmonster
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.x
push.i 13765106
setowner.e
pushi.e -5
push.v self.__j
conv.v.i
push.v [array]self.monstermakey
pushi.e -5
push.v self._newmonster
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e -5
push.v self._newmonster
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [33]

:[32]
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermakey
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermakex
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[33]
popenv [32]

:[34]
push.v self.__j
push.e 1
add.i.v
pop.v.v self.__j
b [29]

:[35]
pushi.e 5
pop.v.i global.myfight
pushi.e 15
pop.v.i self.myfightreturntimer
pushi.e -1
pop.v.i global.mnfight

:[36]
exit.i

:[37]
push.i [function]gml_Script_scr_wincombat
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_wincombat
popz.v

:[end]