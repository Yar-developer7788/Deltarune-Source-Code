.localvar 2 arguments
.localvar 10370 _tdamage 2499
.localvar 10371 _tdef 2500
.localvar 10372 _tmaxhp 2501
.localvar 10373 _finaldamage 2502
.localvar 10374 _hpthresholda 2503
.localvar 10375 _hpthresholdb 2504
.localvar 10376 _di 2505

:[0]
b [11]

> gml_Script_scr_damage_calculation (locals=7, argc=2)
:[1]
push.v arg.argument0
pop.v.v local._tdamage
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.battledf
pop.v.v local._tdef
pushi.e -5
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
pop.v.v local._tmaxhp
pushi.e 1
pop.v.i local._finaldamage
pushloc.v local._tmaxhp
pushi.e 5
conv.i.d
div.d.v
pop.v.v local._hpthresholda
pushloc.v local._tmaxhp
pushi.e 8
conv.i.d
div.d.v
pop.v.v local._hpthresholdb
pushi.e 0
pop.v.i local._di

:[2]
pushloc.v local._di
pushloc.v local._tdef
cmp.v.v LT
bf [9]

:[3]
pushloc.v local._tdamage
pushloc.v local._hpthresholda
cmp.v.v GT
bf [5]

:[4]
push.v local._tdamage
pushi.e 3
sub.i.v
pop.v.v local._tdamage
b [8]

:[5]
pushloc.v local._tdamage
pushloc.v local._hpthresholdb
cmp.v.v GT
bf [7]

:[6]
push.v local._tdamage
pushi.e 2
sub.i.v
pop.v.v local._tdamage
b [8]

:[7]
push.v local._tdamage
pushi.e 1
sub.i.v
pop.v.v local._tdamage

:[8]
push.v local._di
push.e 1
add.i.v
pop.v.v local._di
b [2]

:[9]
pushloc.v local._finaldamage
pushloc.v local._tdamage
call.i max(argc=2)
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_scr_damage_calculation
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_damage_calculation
popz.v

:[end]