.localvar 2 arguments

:[0]
b [58]

> gml_Script_scr_endturn (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [4]

:[3]
push.i 25921283
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.item
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [10]

:[6]
pushi.e 0
pop.v.i self.j

:[7]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [9]

:[8]
push.i 13011134
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.item
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.tempitem
push.v self.j
conv.v.i
popaf.e
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [7]

:[9]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[10]
pushi.e 0
pop.v.i self.moveswapped
pushi.e 64
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
pushi.e 61
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
pushi.e 62
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 0
pop.v.i global.attacking
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [31]

:[18]
push.i 25921981
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charauto
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
b [21]

:[20]
push.e 0

:[21]
bf [28]

:[22]
pushi.e -5
pushi.e 2
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.i 25921671
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chartarget

:[24]
pushi.e -5
pushi.e 1
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chartarget

:[26]
pushi.e -5
pushi.e 0
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chartarget

:[28]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charaction
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i global.attacking

:[30]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [17]

:[31]
pushi.e 1
pop.v.i self.__noactors
pushi.e -5
pushi.e 0
push.v [array]self.acting
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushi.e 0
pop.v.i self.__noactors

:[33]
pushi.e 0
pop.v.i self.__noactorsi

:[34]
push.v self.__noactorsi
pushi.e 3
cmp.i.v LT
bf [38]

:[35]
pushi.e -5
push.v self.__noactorsi
conv.v.i
push.v [array]self.actingsingle
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
pushi.e 0
pop.v.i self.__noactors

:[37]
push.v self.__noactorsi
push.e 1
add.i.v
pop.v.v self.__noactorsi
b [34]

:[38]
push.v self.__noactors
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
call.i gml_Script_scr_attackphase(argc=0)
popz.v
b [55]

:[40]
pushi.e 3
pop.v.i global.charturn
pushi.e 3
pop.v.i global.myfight
pushi.e 0
pop.v.i global.currentactingchar
pushi.e -5
pushi.e 0
push.v [array]self.acting
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[42]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [47]

:[43]
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [47]

:[44]
pushi.e -5
pushi.e 0
push.v [array]self.actingsingle
pushi.e 1
cmp.i.v EQ
bf [47]

:[45]
pushi.e -5
pushi.e 1
push.v [array]self.actingsingle
pushi.e 0
cmp.i.v EQ
bf [47]

:[46]
pushi.e -5
pushi.e 2
push.v [array]self.actingsingle
pushi.e 0
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
pushi.e 1
pop.v.i 710.simultotal_funny

:[50]
pushi.e -5
pushi.e 0
push.v [array]self.acting
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
pushi.e -5
pushi.e 0
push.v [array]self.actingsimul
pushi.e 1
cmp.i.v EQ
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
call.i gml_Script_scr_act_simul(argc=0)
popz.v

:[55]
pushi.e 357
pushenv [57]

:[56]
pushi.e -1
pop.v.i self.messagepriority
pushi.e -1
pop.v.i self.attackpriority

:[57]
popenv [56]
exit.i

:[58]
push.i [function]gml_Script_scr_endturn
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_endturn
popz.v

:[end]