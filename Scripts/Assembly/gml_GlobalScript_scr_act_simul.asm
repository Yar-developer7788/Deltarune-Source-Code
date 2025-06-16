.localvar 2 arguments

:[0]
b [40]

> gml_Script_scr_act_simul (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.__simulcount
pushglb.v global.currentactingchar
pop.v.v self.__ii

:[2]
push.v self.__ii
pushi.e 3
cmp.i.v LT
bf [39]

:[3]
pushi.e 0
pop.v.i self.__foundsimul
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.actingsingle
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 392
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [6]

:[5]
push.e 0

:[6]
bf [38]

:[7]
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e -5
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.actingtarget
conv.v.i
push.v [arraypushaf]self.actsimul
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.actingchoice
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [14]

:[11]
push.v self.__simulcount
pop.v.v 392.simulorderkri
pushi.e -5
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.actingtarget
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [13]

:[12]
pushi.e 0
pop.v.i self.actcon

:[13]
popenv [12]
pushi.e 1
pop.v.i self.__foundsimul

:[14]
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
pushi.e -5
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.actingtarget
conv.v.i
push.v [arraypushaf]self.actsimulsus
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.actingchoice
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [21]

:[18]
push.v self.__simulcount
pop.v.v 392.simulordersus
pushi.e -5
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.actingtarget
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.actconsus

:[20]
popenv [19]
pushi.e 1
pop.v.i self.__foundsimul

:[21]
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
pushi.e -5
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.actingtarget
conv.v.i
push.v [arraypushaf]self.actsimulral
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.actingchoice
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [28]

:[25]
push.v self.__simulcount
pop.v.v 392.simulorderral
pushi.e -5
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.actingtarget
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [27]

:[26]
pushi.e 1
pop.v.i self.actconral

:[27]
popenv [26]
pushi.e 1
pop.v.i self.__foundsimul

:[28]
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [30]

:[29]
pushi.e -5
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.actingtarget
conv.v.i
push.v [arraypushaf]self.actsimulnoe
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.actingchoice
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [35]

:[32]
push.v self.__simulcount
pop.v.v 392.simulordernoe
pushi.e -5
pushi.e -5
push.v self.__ii
conv.v.i
push.v [array]self.actingtarget
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [34]

:[33]
pushi.e 1
pop.v.i self.actconnoe

:[34]
popenv [33]
pushi.e 1
pop.v.i self.__foundsimul

:[35]
push.v self.__foundsimul
conv.v.b
bf [37]

:[36]
push.i 62360000
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.__ii
conv.v.i
pop.v.v [array]self.actingsingle
push.v self.__simulcount
push.e 1
add.i.v
pop.v.v self.__simulcount

:[37]
push.v self.__simulcount
pop.v.v 392.simultotal

:[38]
push.v self.__ii
push.e 1
add.i.v
pop.v.v self.__ii
b [2]

:[39]
exit.i

:[40]
push.i [function]gml_Script_scr_act_simul
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_act_simul
popz.v

:[end]