.localvar 2 arguments
.localvar 11861 _hltarget 3507
.localvar 6561 _curhp 3508
.localvar 11862 _healpower 3509

:[0]
b [31]

> gml_Script_scr_spamton_heal (locals=3, argc=1)
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
bf [25]

:[6]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
b [24]

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
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e -5
pushloc.v local._hltarget
conv.v.i
push.v [array]self.maxhp
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._healpower
b [15]

:[10]
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushloc.v local._hltarget
conv.v.i
push.v [array]self.maxhp
pushi.e 5
conv.i.d
div.d.v
pop.v.v local._healpower
b [15]

:[12]
push.v arg.argument0
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i local._healpower
b [15]

:[14]
pushi.e 0
pop.v.i local._healpower

:[15]
pushloc.v local._healpower
call.i ceil(argc=1)
pop.v.v local._healpower
pushloc.v local._healpower
push.v self.i
call.i gml_Script_scr_heal(argc=2)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [23]

:[16]
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
pushenv [18]

:[17]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type
pushloc.v local._healpower
pop.v.v self.damage

:[18]
popenv [17]
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
bf [22]

:[19]
push.v self.dmgwr
pushi.e -9
pushenv [21]

:[20]
pushi.e 3
pop.v.i self.specialmessage

:[21]
popenv [20]

:[22]
push.v self.tu
pushi.e 1
add.i.v
pop.v.v self.tu

:[23]
popenv [16]

:[24]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [5]

:[25]
pushi.e 0
pop.v.i self.i

:[26]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [30]

:[27]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [29]

:[28]
push.v self.tu
push.e 1
sub.i.v
pop.v.v self.tu

:[29]
popenv [28]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [26]

:[30]
exit.i

:[31]
push.i [function]gml_Script_scr_spamton_heal
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_spamton_heal
popz.v

:[end]