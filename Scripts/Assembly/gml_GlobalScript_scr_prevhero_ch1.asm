.localvar 2 arguments

:[0]
b [25]

> gml_Script_scr_prevhero_ch1 (locals=0, argc=0)
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
bf [14]

:[13]
pushi.e 0
pop.v.i global.bmenuno
push.i 117672171
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.faceaction
push.i 117672071
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.chartarget
push.i 117672075
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charaction
push.i 117672092
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charspecial
pushi.e 1
pop.v.i self.movenoise

:[14]
pushglb.v global.charturn
pushi.e 0
cmp.i.v EQ
bf [21]

:[15]
pushi.e 1563
pushenv [17]

:[16]
pushi.e 0
pop.v.i self.acting

:[17]
popenv [16]
push.i 117672011
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
push.i 117672171
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.faceaction
push.i 117672071
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.chartarget
push.i 117672075
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charaction
push.i 117672092
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charspecial
push.i 117672171
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

:[18]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [20]

:[19]
push.i 58886334
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
b [18]

:[20]
b [24]

:[21]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.temptension
pop.v.v global.tension
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [24]

:[23]
push.i 58886334
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
b [22]

:[24]
exit.i

:[25]
push.i [function]gml_Script_scr_prevhero_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_prevhero_ch1
popz.v

:[end]