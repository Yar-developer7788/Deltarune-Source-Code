.localvar 2 arguments

:[0]
b [35]

> gml_Script_scr_endturn_ch1 (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [4]

:[3]
push.i 116754179
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
push.i 58427582
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
pushi.e 1331
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
pushi.e 1328
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
pushi.e 1329
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
push.i 116754567
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
pushi.e -5
pushi.e 0
push.v [array]self.acting
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v
b [34]

:[33]
pushi.e 3
pop.v.i global.charturn
pushi.e 3
pop.v.i global.myfight

:[34]
exit.i

:[35]
push.i [function]gml_Script_scr_endturn_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_endturn_ch1
popz.v

:[end]