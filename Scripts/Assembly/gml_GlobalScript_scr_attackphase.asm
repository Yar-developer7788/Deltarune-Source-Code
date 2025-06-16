.localvar 2 arguments

:[0]
b [37]

> gml_Script_scr_attackphase (locals=0, argc=0)
:[1]
pushi.e 357
pushenv [36]

:[2]
pushi.e 0
pop.v.i self.techwon
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.techwon

:[4]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [7]

:[5]
pushi.e 484
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [7]

:[6]
push.v 484.endcon
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.techwon
b [12]

:[10]
push.v self.techwon
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
call.i gml_Script_scr_wincombat(argc=0)
popz.v

:[12]
push.v self.techwon
pushi.e 0
cmp.i.v EQ
bf [36]

:[13]
pushi.e 0
pop.v.i self.__hiti

:[14]
push.v self.__hiti
pushi.e 3
cmp.i.v LT
bf [16]

:[15]
push.i 25135273
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.__hiti
conv.v.i
pop.v.v [array]self.hittarget
push.v self.__hiti
push.e 1
add.i.v
pop.v.v self.__hiti
b [14]

:[16]
pushi.e 1
pop.v.i self.fightphase
pushi.e 3
pop.v.i global.charturn
pushi.e -5
pushi.e 0
push.v [array]self.charaction
pushi.e 4
cmp.i.v EQ
bt [18]

:[17]
pushi.e -5
pushi.e 0
push.v [array]self.charaction
pushi.e 2
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
pushi.e 0
pop.v.i self.fightphase

:[21]
pushi.e -5
pushi.e 1
push.v [array]self.charaction
pushi.e 4
cmp.i.v EQ
bt [23]

:[22]
pushi.e -5
pushi.e 1
push.v [array]self.charaction
pushi.e 2
cmp.i.v EQ
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
pushi.e 0
pop.v.i self.fightphase

:[26]
pushi.e -5
pushi.e 2
push.v [array]self.charaction
pushi.e 4
cmp.i.v EQ
bt [28]

:[27]
pushi.e -5
pushi.e 2
push.v [array]self.charaction
pushi.e 2
cmp.i.v EQ
b [29]

:[28]
push.e 1

:[29]
bf [31]

:[30]
pushi.e 0
pop.v.i self.fightphase

:[31]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1
pop.v.i self.fightphase

:[33]
push.v self.fightphase
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
pushi.e 1
pop.v.i global.myfight
pushi.e 355
conv.i.v
push.v self.yy
pushi.e 365
add.i.v
push.v self.xx
pushi.e 2
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
b [36]

:[35]
pushi.e 4
pop.v.i global.myfight
pushi.e 869
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[36]
popenv [2]
exit.i

:[37]
push.i [function]gml_Script_scr_attackphase
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_attackphase
popz.v

:[end]