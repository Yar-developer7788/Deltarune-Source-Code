.localvar 2 arguments

:[0]
b [13]

> gml_Script_scr_actinfo_temp (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self.__acti

:[2]
push.v self.__acti
pushi.e 6
cmp.i.v LT
bf [12]

:[3]
push.i 31623657
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.canact
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.canact
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.canact
push.i 31624079
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.actcost
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.acttpcost
push.i 31623658
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.actsimul
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actsimul

:[5]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.i 31623657
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.canactsus
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.canact
push.i 31624079
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.actcostsus
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.acttpcost
push.i 31623658
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.actsimulsus
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actsimul

:[7]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
push.i 31623657
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.canactral
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.canact
push.i 31624079
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.actcostral
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.acttpcost
push.i 31623658
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.actsimulral
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actsimul

:[9]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [11]

:[10]
push.i 31623657
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.canactnoe
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.canact
push.i 31624079
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.actcostnoe
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.acttpcost
push.i 31623658
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.actsimulnoe
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actsimul

:[11]
push.v self.__acti
push.e 1
add.i.v
pop.v.v self.__acti
b [2]

:[12]
exit.i

:[13]
push.i [function]gml_Script_scr_actinfo_temp
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_actinfo_temp
popz.v

:[end]