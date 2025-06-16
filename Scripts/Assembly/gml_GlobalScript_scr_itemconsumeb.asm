.localvar 2 arguments

:[0]
b [9]

> gml_Script_scr_itemconsumeb (locals=0, argc=0)
:[1]
push.i 26052843
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.faceaction
push.i 26052747
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charaction
push.i 26052764
setowner.e
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 200
add.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charspecial
push.v self.usable
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.replaceable
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushglb.v global.charturn
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
call.i gml_Script_scr_itemshift_temp(argc=2)
popz.v
b [8]

:[6]
push.v self.replaceable
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
push.i 13076670
setowner.e
push.v self.replaceable
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypopaf]self.tempitem
pushglb.v global.charturn
conv.v.i
popaf.e

:[8]
call.i gml_Script_scr_nexthero(argc=0)
popz.v
exit.i

:[9]
push.i [function]gml_Script_scr_itemconsumeb
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemconsumeb
popz.v

:[end]