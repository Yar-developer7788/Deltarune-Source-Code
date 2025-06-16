.localvar 2 arguments

:[0]
b [35]

> gml_Script_scr_nexthero (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.moveswapped
pushglb.v global.charturn
pop.v.v self.prevturn
pushglb.v global.charturn
pushi.e 0
cmp.i.v EQ
bf [13]

:[2]
pushi.e 1
pop.v.i self.moveswapped
pushi.e -5
pushi.e 1
push.v [array]self.charmove
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
conv.i.v
call.i gml_Script_scr_charcan(argc=1)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i global.charturn
b [13]

:[7]
pushi.e -5
pushi.e 2
push.v [array]self.charmove
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 2
conv.i.v
call.i gml_Script_scr_charcan(argc=1)
conv.v.b
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 2
pop.v.i global.charturn
b [13]

:[12]
call.i gml_Script_scr_endturn(argc=0)
popz.v

:[13]
pushglb.v global.charturn
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.moveswapped
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [23]

:[17]
pushi.e 1
pop.v.i self.moveswapped
pushi.e 2
conv.i.v
call.i gml_Script_scr_charcan(argc=1)
conv.v.b
bf [19]

:[18]
pushi.e -5
pushi.e 1
push.v [array]self.acting
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 2
pop.v.i global.charturn
b [23]

:[22]
call.i gml_Script_scr_endturn(argc=0)
popz.v

:[23]
pushglb.v global.charturn
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
push.v self.moveswapped
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
call.i gml_Script_scr_endturn(argc=0)
popz.v

:[28]
push.v self.moveswapped
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
pop.v.i global.bmenuno

:[30]
pushglb.v global.charturn
pushi.e 0
cmp.i.v GT
bf [34]

:[31]
push.i 27101643
setowner.e
pushglb.v global.tension
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.temptension
pushi.e 0
pop.v.i self.i

:[32]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [34]

:[33]
push.i 13600958
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.tempitem
push.v self.prevturn
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.tempitem
pushglb.v global.charturn
conv.v.i
popaf.e
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [32]

:[34]
exit.i

:[35]
push.i [function]gml_Script_scr_nexthero
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_nexthero
popz.v

:[end]