.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_armorinfo_mine (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [4]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.chararmor1
call.i gml_Script_scr_armorinfo(argc=1)
popz.v
push.i 11307293
setowner.e
push.v self.armornametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1name
push.i 11307294
setowner.e
push.v self.armordesctemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1desc
push.i 11307295
setowner.e
push.v self.armorattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1at
push.i 11307296
setowner.e
push.v self.armordftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1df
push.i 11307297
setowner.e
push.v self.armormagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1mag
push.i 11307298
setowner.e
push.v self.armorboltstemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1bolts
push.i 11307299
setowner.e
push.v self.armorgrazeamttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1grazeamt
push.i 11307300
setowner.e
push.v self.armorgrazesizetemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1grazesize
push.i 11307301
setowner.e
push.v self.armorabilitytemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1ability
push.i 11307302
setowner.e
push.v self.armorabilityicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1abilityicon
push.i 11307303
setowner.e
push.v self.armoricontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1icon
push.i 11307304
setowner.e
push.v self.armorelementtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1element
push.i 11307305
setowner.e
push.v self.armorelementamounttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1elementamount
push.i 22513383
setowner.e
push.v self.armorattemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemat
pushi.e 1
popaf.e
push.i 22513385
setowner.e
push.v self.armordftemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemdf
pushi.e 1
popaf.e
push.i 22513387
setowner.e
push.v self.armormagtemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemmag
pushi.e 1
popaf.e
push.i 22513389
setowner.e
push.v self.armorboltstemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itembolts
pushi.e 1
popaf.e
push.i 22513391
setowner.e
push.v self.armorgrazeamttemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazeamt
pushi.e 1
popaf.e
push.i 22513393
setowner.e
push.v self.armorgrazesizetemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazesize
pushi.e 1
popaf.e
push.i 22513399
setowner.e
push.v self.armorelementtemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemelement
pushi.e 1
popaf.e
push.i 22513401
setowner.e
push.v self.armorelementamounttemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemelementamount
pushi.e 1
popaf.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.chararmor2
call.i gml_Script_scr_armorinfo(argc=1)
popz.v
push.i 11307306
setowner.e
push.v self.armornametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2name
push.i 11307307
setowner.e
push.v self.armordesctemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2desc
push.i 11307308
setowner.e
push.v self.armorattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2at
push.i 11307309
setowner.e
push.v self.armordftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2df
push.i 11307310
setowner.e
push.v self.armormagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2mag
push.i 11307311
setowner.e
push.v self.armorboltstemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2bolts
push.i 11307312
setowner.e
push.v self.armorgrazeamttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2grazeamt
push.i 11307313
setowner.e
push.v self.armorgrazesizetemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2grazesize
push.i 11307314
setowner.e
push.v self.armorabilitytemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2ability
push.i 11307315
setowner.e
push.v self.armorabilityicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2abilityicon
push.i 11307316
setowner.e
push.v self.armoricontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2icon
push.i 11307317
setowner.e
push.v self.armorelementtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2element
push.i 11307318
setowner.e
push.v self.armorelementamounttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2elementamount
push.i 22513383
setowner.e
push.v self.armorattemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemat
pushi.e 2
popaf.e
push.i 22513385
setowner.e
push.v self.armordftemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemdf
pushi.e 2
popaf.e
push.i 22513387
setowner.e
push.v self.armormagtemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemmag
pushi.e 2
popaf.e
push.i 22513389
setowner.e
push.v self.armorboltstemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itembolts
pushi.e 2
popaf.e
push.i 22513391
setowner.e
push.v self.armorgrazeamttemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazeamt
pushi.e 2
popaf.e
push.i 22513393
setowner.e
push.v self.armorgrazesizetemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazesize
pushi.e 2
popaf.e
push.i 22513399
setowner.e
push.v self.armorelementtemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemelement
pushi.e 2
popaf.e
push.i 22513401
setowner.e
push.v self.armorelementamounttemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemelementamount
pushi.e 2
popaf.e
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_armorinfo_mine
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_armorinfo_mine
popz.v

:[end]