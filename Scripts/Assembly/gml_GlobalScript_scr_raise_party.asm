.localvar 2 arguments
.localvar 11861 _hltarget 3502
.localvar 6561 _curhp 3503
.localvar 11862 _healpower 3504

:[0]
b [27]

> gml_Script_scr_raise_party (locals=3, argc=0)
:[1]
pushi.e 873
pushenv [4]

:[2]
push.v self.delaytimer
pushi.e 1
cmp.i.v GTE
bf [4]

:[3]
pushi.e 1
pop.v.i self.killactive

:[4]
popenv [2]
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [21]

:[6]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
b [20]

:[8]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pop.v.v local._hltarget
pushi.e -5
pushloc.v local._hltarget
conv.v.i
push.v [array]self.hp
pop.v.v local._curhp
pushloc.v local._curhp
pushi.e 0
cmp.i.v LTE
bf [10]

:[9]
pushloc.v local._curhp
neg.v
pushi.e 5
add.i.v
pop.v.v local._healpower
b [11]

:[10]
pushi.e 1
pop.v.i local._healpower

:[11]
pushloc.v local._healpower
push.v self.i
call.i gml_Script_scr_heal(argc=2)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [19]

:[12]
pushi.e 858
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ha
push.v self.id
push.v self.ha
pushi.e -9
pop.v.v [stacktop]self.target
call.i gml_Script_scr_dmgwriter_selfchar(argc=0)
pop.v.v self.dmgwr
push.v self.dmgwr
pushi.e -9
pushenv [14]

:[13]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type
pushloc.v local._healpower
pop.v.v self.damage

:[14]
popenv [13]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
cmp.v.v GTE
bf [18]

:[15]
push.v self.dmgwr
pushi.e -9
pushenv [17]

:[16]
pushi.e 3
pop.v.i self.specialmessage

:[17]
popenv [16]

:[18]
push.v self.tu
pushi.e 1
add.i.v
pop.v.v self.tu

:[19]
popenv [12]

:[20]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [5]

:[21]
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [26]

:[23]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [25]

:[24]
push.v self.tu
push.e 1
sub.i.v
pop.v.v self.tu

:[25]
popenv [24]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [22]

:[26]
exit.i

:[27]
push.i [function]gml_Script_scr_raise_party
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_raise_party
popz.v

:[end]