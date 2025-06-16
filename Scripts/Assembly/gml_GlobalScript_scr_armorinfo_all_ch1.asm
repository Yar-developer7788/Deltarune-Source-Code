.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_armorinfo_all_ch1 (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [4]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.armor
call.i gml_Script_scr_armorinfo_ch1(argc=1)
popz.v
push.i 56985844
setowner.e
push.v self.armornametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorname
push.i 56985846
setowner.e
push.v self.armordesctemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armordesc
push.i 56985848
setowner.e
push.v self.amessage2temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.amessage2
push.i 56985850
setowner.e
push.v self.amessage3temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.amessage3
push.i 56985854
setowner.e
push.v self.armorattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorat
push.i 56985856
setowner.e
push.v self.armordftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armordf
push.i 56985858
setowner.e
push.v self.armormagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armormag
push.i 56985860
setowner.e
push.v self.armorboltstemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorbolts
push.i 56985862
setowner.e
push.v self.armorgrazeamttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorgrazeamt
push.i 56985864
setowner.e
push.v self.armorgrazesizetemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorgrazesize
push.i 56985866
setowner.e
push.v self.armorchar1temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorchar1
push.i 56985868
setowner.e
push.v self.armorchar2temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorchar2
push.i 56985870
setowner.e
push.v self.armorchar3temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorchar3
push.i 56985874
setowner.e
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorvalue
push.i 56985875
setowner.e
push.v self.armorabilitytemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorability
push.i 56985877
setowner.e
push.v self.armorabilityicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorabilityicon
push.i 56985879
setowner.e
push.v self.armoricontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armoricon
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_armorinfo_all_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_armorinfo_all_ch1
popz.v

:[end]