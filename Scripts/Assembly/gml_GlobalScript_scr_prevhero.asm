.localvar 2 arguments

:[0]
b [37]

> gml_Script_scr_prevhero (locals=0, argc=0)
:[1]
pushglb.v global.charturn
pop.v.v self.prevturn
pushi.e 0
pop.v.i self.moveswapped
pushglb.v global.charturn
pushi.e 1
cmp.i.v EQ
bf [4]

:[2]
pushi.e -5
pushi.e 0
push.v [array]self.charmove
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i global.charturn
pushi.e 1
pop.v.i self.moveswapped

:[4]
pushglb.v global.charturn
pushi.e 2
cmp.i.v EQ
bf [12]

:[5]
pushi.e 1
pop.v.i self.moveswapped
pushi.e -5
pushi.e 1
push.v [array]self.charmove
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 1
push.v [array]self.acting
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i global.charturn
b [12]

:[10]
pushi.e -5
pushi.e 0
push.v [array]self.charmove
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i global.charturn

:[12]
push.v self.moveswapped
pushi.e 1
cmp.i.v EQ
bf [26]

:[13]
pushi.e 0
pop.v.i global.bmenuno
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [17]

:[14]
pushi.e 392
pushenv [16]

:[15]
pushi.e 0
pop.v.i self.actingnoe

:[16]
popenv [15]

:[17]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [21]

:[18]
pushi.e 392
pushenv [20]

:[19]
pushi.e 0
pop.v.i self.actingral

:[20]
popenv [19]

:[21]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [25]

:[22]
pushi.e 392
pushenv [24]

:[23]
pushi.e 0
pop.v.i self.actingsus

:[24]
popenv [23]

:[25]
push.i 27232704
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.actingsingle
push.i 27232707
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.actingsimul
push.i 27232491
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.faceaction
push.i 27232391
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.chartarget
push.i 27232395
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charaction
push.i 27232412
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charspecial
pushi.e 1
pop.v.i self.movenoise

:[26]
pushglb.v global.charturn
pushi.e 0
cmp.i.v EQ
bf [33]

:[27]
pushi.e 392
pushenv [29]

:[28]
pushi.e 0
pop.v.i self.acting

:[29]
popenv [28]
push.i 27232331
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.acting
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.acting
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.acting
push.i 27232491
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.faceaction
push.i 27232391
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.chartarget
push.i 27232395
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charaction
push.i 27232412
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charspecial
push.i 27232491
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.faceaction
pushi.e -5
pushi.e 0
push.v [array]self.temptension
pop.v.v global.tension
pushi.e 0
pop.v.i self.i

:[30]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [32]

:[31]
push.i 13666494
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.item
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.tempitem
pushi.e 0
popaf.e
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [30]

:[32]
b [36]

:[33]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.temptension
pop.v.v global.tension
pushi.e 0
pop.v.i self.i

:[34]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [36]

:[35]
push.i 13666494
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
pushi.e 1
sub.i.v
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
b [34]

:[36]
exit.i

:[37]
push.i [function]gml_Script_scr_prevhero
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_prevhero
popz.v

:[end]