.localvar 2 arguments

:[0]
b [27]

> gml_Script_scr_actselect (locals=0, argc=2)
:[1]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [10]

:[2]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.i 63014987
setowner.e
push.v arg.argument1
pushi.e 1
add.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.acting

:[4]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.i 63015002
setowner.e
push.v arg.argument1
pushi.e 1
add.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.actingsus

:[6]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.i 63015004
setowner.e
push.v arg.argument1
pushi.e 1
add.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.actingral

:[8]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
push.i 63015003
setowner.e
push.v arg.argument1
pushi.e 1
add.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.actingnoe

:[10]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [25]

:[11]
push.i 63015363
setowner.e
pushi.e -1
push.v arg.argument1
conv.v.i
push.v [array]self.actsimul
pushi.e -5
pushi.e 0
pop.v.v [array]self.actingsimul
push.i 63014987
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.acting
push.i 63015360
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.actingsingle
push.i 63015370
setowner.e
push.v arg.argument0
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.actingtarget
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.actactor
push.v arg.argument1
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.i 63014987
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e -1
pushi.e 1
push.v [array]self.charpos
conv.v.i
pop.v.v [array]self.acting

:[13]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.actactor
push.v arg.argument1
conv.v.i
pushaf.e
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e -1
pushi.e 2
push.v [array]self.charpos
conv.v.i
pop.v.v [array]self.acting

:[15]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.actactor
push.v arg.argument1
conv.v.i
pushaf.e
pushi.e 4
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.acting
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.acting

:[17]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.actactor
push.v arg.argument1
conv.v.i
pushaf.e
pushi.e 5
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e -1
pushi.e 3
push.v [array]self.charpos
conv.v.i
pop.v.v [array]self.acting

:[19]
pushi.e 0
pop.v.i self.i

:[20]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [24]

:[21]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.acting
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.i 63015147
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.faceaction
push.i 63015051
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charaction

:[23]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [20]

:[24]
b [26]

:[25]
push.i 63015370
setowner.e
push.v arg.argument0
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.actingtarget
push.i 63015360
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.actingsingle
push.i 63015363
setowner.e
pushi.e -1
push.v arg.argument1
conv.v.i
push.v [array]self.actsimul
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.actingsimul
push.i 63015147
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.faceaction
push.i 63015051
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charaction

:[26]
exit.i

:[27]
push.i [function]gml_Script_scr_actselect
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_actselect
popz.v

:[end]