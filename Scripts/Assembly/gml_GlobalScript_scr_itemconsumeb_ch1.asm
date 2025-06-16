.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_itemconsumeb_ch1 (locals=0, argc=0)
:[1]
push.i 116885739
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.faceaction
push.i 116885643
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charaction
push.i 116885660
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
pushglb.v global.charturn
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
call.i gml_Script_scr_itemshift_temp_ch1(argc=2)
popz.v

:[3]
call.i gml_Script_scr_nexthero_ch1(argc=0)
popz.v
exit.i

:[4]
push.i [function]gml_Script_scr_itemconsumeb_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemconsumeb_ch1
popz.v

:[end]