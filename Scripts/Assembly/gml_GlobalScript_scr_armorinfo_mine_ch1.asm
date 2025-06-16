.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_armorinfo_mine_ch1 (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [4]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.chararmor1
call.i gml_Script_scr_armorinfo_ch1(argc=1)
popz.v
push.i 57051421
setowner.e
push.v self.armornametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1name
push.i 57051422
setowner.e
push.v self.armordesctemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1desc
push.i 57051423
setowner.e
push.v self.armorattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1at
push.i 57051424
setowner.e
push.v self.armordftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1df
push.i 57051425
setowner.e
push.v self.armormagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1mag
push.i 57051426
setowner.e
push.v self.armorboltstemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1bolts
push.i 57051427
setowner.e
push.v self.armorgrazeamttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1grazeamt
push.i 57051428
setowner.e
push.v self.armorgrazesizetemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1grazesize
push.i 57051429
setowner.e
push.v self.armorabilitytemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1ability
push.i 57051430
setowner.e
push.v self.armorabilityicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1abilityicon
push.i 57051431
setowner.e
push.v self.armoricontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1icon
push.i 114001639
setowner.e
push.v self.armorattemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemat
pushi.e 1
popaf.e
push.i 114001641
setowner.e
push.v self.armordftemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemdf
pushi.e 1
popaf.e
push.i 114001643
setowner.e
push.v self.armormagtemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemmag
pushi.e 1
popaf.e
push.i 114001645
setowner.e
push.v self.armorboltstemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itembolts
pushi.e 1
popaf.e
push.i 114001647
setowner.e
push.v self.armorgrazeamttemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazeamt
pushi.e 1
popaf.e
push.i 114001649
setowner.e
push.v self.armorgrazesizetemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazesize
pushi.e 1
popaf.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.chararmor2
call.i gml_Script_scr_armorinfo_ch1(argc=1)
popz.v
push.i 57051434
setowner.e
push.v self.armornametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2name
push.i 57051435
setowner.e
push.v self.armordesctemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2desc
push.i 57051436
setowner.e
push.v self.armorattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2at
push.i 57051437
setowner.e
push.v self.armordftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2df
push.i 57051438
setowner.e
push.v self.armormagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2mag
push.i 57051439
setowner.e
push.v self.armorboltstemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2bolts
push.i 57051440
setowner.e
push.v self.armorgrazeamttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2grazeamt
push.i 57051441
setowner.e
push.v self.armorgrazesizetemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2grazesize
push.i 57051442
setowner.e
push.v self.armorabilitytemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2ability
push.i 57051443
setowner.e
push.v self.armorabilityicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2abilityicon
push.i 57051444
setowner.e
push.v self.armoricontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2icon
push.i 114001639
setowner.e
push.v self.armorattemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemat
pushi.e 2
popaf.e
push.i 114001641
setowner.e
push.v self.armordftemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemdf
pushi.e 2
popaf.e
push.i 114001643
setowner.e
push.v self.armormagtemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemmag
pushi.e 2
popaf.e
push.i 114001645
setowner.e
push.v self.armorboltstemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itembolts
pushi.e 2
popaf.e
push.i 114001647
setowner.e
push.v self.armorgrazeamttemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazeamt
pushi.e 2
popaf.e
push.i 114001649
setowner.e
push.v self.armorgrazesizetemp
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazesize
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
push.i [function]gml_Script_scr_armorinfo_mine_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_armorinfo_mine_ch1
popz.v

:[end]