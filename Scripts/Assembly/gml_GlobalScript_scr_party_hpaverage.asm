.localvar 2 arguments
.localvar 10365 _totalhp 2493
.localvar 10366 _totalmaxhp 2494
.localvar 10367 _members 2495
.localvar 10368 _hpi 2496

:[0]
b [11]

> gml_Script_scr_party_hpaverage (locals=4, argc=0)
:[1]
pushi.e 0
pop.v.i local._totalhp
pushi.e 0
pop.v.i local._totalmaxhp
pushi.e 0
pop.v.i local._members
pushi.e 0
pop.v.i local._hpi

:[2]
pushloc.v local._hpi
pushi.e 3
cmp.i.v LT
bf [6]

:[3]
pushi.e -5
pushloc.v local._hpi
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
push.v local._members
push.e 1
add.i.v
pop.v.v local._members
push.v local._totalhp
pushi.e -5
pushi.e -5
pushloc.v local._hpi
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
add.v.v
pop.v.v local._totalhp
push.v local._totalmaxhp
pushi.e -5
pushi.e -5
pushloc.v local._hpi
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
add.v.v
pop.v.v local._totalmaxhp

:[5]
push.v local._hpi
push.e 1
add.i.v
pop.v.v local._hpi
b [2]

:[6]
pushloc.v local._totalhp
pushi.e 0
cmp.i.v GT
bf [9]

:[7]
pushloc.v local._totalhp
pushloc.v local._totalmaxhp
div.v.v
call.i floor(argc=1)
ret.v

:[8]
b [10]

:[9]
pushi.e 0
conv.i.v
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_scr_party_hpaverage
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_party_hpaverage
popz.v

:[end]