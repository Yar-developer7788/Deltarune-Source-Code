.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_armorinfo_all (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 48
cmp.i.v LT
bf [4]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.armor
call.i gml_Script_scr_armorinfo(argc=1)
popz.v
push.i 11241716
setowner.e
push.v self.armornametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorname
push.i 11241718
setowner.e
push.v self.armordesctemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armordesc
push.i 11241720
setowner.e
push.v self.amessage2temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.amessage2
push.i 11241722
setowner.e
push.v self.amessage3temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.amessage3
push.i 11241724
setowner.e
push.v self.amessage4temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.amessage4
push.i 11241726
setowner.e
push.v self.armorattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorat
push.i 11241728
setowner.e
push.v self.armordftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armordf
push.i 11241730
setowner.e
push.v self.armormagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armormag
push.i 11241732
setowner.e
push.v self.armorboltstemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorbolts
push.i 11241734
setowner.e
push.v self.armorgrazeamttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorgrazeamt
push.i 11241736
setowner.e
push.v self.armorgrazesizetemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorgrazesize
push.i 11241738
setowner.e
push.v self.armorchar1temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorchar1
push.i 11241740
setowner.e
push.v self.armorchar2temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorchar2
push.i 11241742
setowner.e
push.v self.armorchar3temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorchar3
push.i 11241744
setowner.e
push.v self.armorchar4temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorchar4
push.i 11241746
setowner.e
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorvalue
push.i 11241747
setowner.e
push.v self.armorabilitytemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorability
push.i 11241749
setowner.e
push.v self.armorabilityicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorabilityicon
push.i 11241751
setowner.e
push.v self.armoricontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armoricon
push.i 11241753
setowner.e
push.v self.armorelementtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorelement
push.i 11241755
setowner.e
push.v self.armorelementamounttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorelementamount
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_armorinfo_all
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_armorinfo_all
popz.v

:[end]