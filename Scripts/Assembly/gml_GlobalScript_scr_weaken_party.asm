.localvar 2 arguments
.localvar 6641 _writedamage 931
.localvar 6642 _didhit 932
.localvar 6643 _chartarget 933
.localvar 6645 __hpdiff 934

:[0]
b [29]

> gml_Script_scr_weaken_party (locals=4, argc=0)
:[1]
pushi.e 0
pop.v.b local._writedamage
pushbltn.v builtin.argument_count
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e -15
pushi.e 0
push.v [array]self.argument
pushi.e 1
cmp.b.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.b local._writedamage

:[6]
pushi.e 0
pop.v.b local._didhit
pushloc.v local._writedamage
conv.v.b
bf [11]

:[7]
pushi.e 873
pushenv [10]

:[8]
push.v self.delaytimer
pushi.e 1
cmp.i.v GTE
bf [10]

:[9]
pushi.e 1
pop.v.i self.killactive

:[10]
popenv [8]

:[11]
pushi.e 0
pop.v.i self.i

:[12]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [25]

:[13]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
b [24]

:[15]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pop.v.v local._chartarget
pushloc.v local._writedamage
conv.v.b
bf [22]

:[16]
pushi.e -5
pushloc.v local._chartarget
conv.v.i
push.v [array]self.hp
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v local.__hpdiff
pushloc.v local.__hpdiff
pushi.e 0
cmp.i.v GT
bf [20]

:[17]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [19]

:[18]
pushi.e 1
pop.v.i self.hurt
pushi.e 0
pop.v.i self.hurttimer

:[19]
popenv [18]

:[20]
pushi.e 873
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.myheight
add.v.v
pushi.e 24
sub.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dmgwriter
pushloc.v local.__hpdiff
push.v self.dmgwriter
pushi.e -9
pop.v.v [stacktop]self.damage
pushloc.v local.__hpdiff
pushi.e 0
cmp.i.v GT
bf [22]

:[21]
pushi.e 1
pop.v.b local._didhit

:[22]
pushi.e -5
pushloc.v local._chartarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
bf [24]

:[23]
push.i 19891931
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local._chartarget
conv.v.i
pop.v.v [array]self.hp

:[24]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [12]

:[25]
pushglb.v global.invc
pushi.e 40
mul.i.v
pop.v.v global.inv
pushloc.v local._didhit
conv.v.b
bf [28]

:[26]
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [28]

:[27]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[28]
exit.i

:[29]
push.i [function]gml_Script_scr_weaken_party
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_weaken_party
popz.v

:[end]