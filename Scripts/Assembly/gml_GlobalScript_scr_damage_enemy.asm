.localvar 2 arguments
.localvar 7017 a 1277

:[0]
b [56]

> gml_Script_scr_damage_enemy (locals=1, argc=2)
:[1]
pushi.e 873
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monstery
pushi.e 20
add.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.hittarget
pushi.e 20
mul.i.v
sub.v.v
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dm
push.v self.caster
pushi.e 4
cmp.i.v LT
bf [4]

:[2]
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
pushi.e 1
sub.i.v
push.v self.dm
pushi.e -9
pop.v.v [stacktop]self.type
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [4]

:[3]
pushi.e 6
push.v self.dm
pushi.e -9
pop.v.i [stacktop]self.type

:[4]
push.v self.caster
pushi.e 5
cmp.i.v EQ
bf [6]

:[5]
pushi.e 5
push.v self.dm
pushi.e -9
pop.v.i [stacktop]self.type

:[6]
push.v arg.argument1
push.v self.dm
pushi.e -9
pop.v.v [stacktop]self.damage
push.i 25659830
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
dup.i 1
push.v [array]self.monsterhp
push.v arg.argument1
sub.v.v
pop.i.v [array]self.monsterhp
push.v arg.argument1
pushi.e 0
cmp.i.v GT
bf [11]

:[7]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [9]

:[8]
pushi.e 9
pop.v.i self.shakex
pushi.e 3
pop.v.i self.state
pushi.e 30
pop.v.i self.hurttimer

:[9]
popenv [8]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [11]

:[10]
push.i 25659831
setowner.e
push.v arg.argument1
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.hurtamt

:[11]
push.i 25659561
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
dup.i 1
push.v [array]self.hittarget
pushi.e 1
add.i.v
pop.i.v [array]self.hittarget
push.v arg.argument1
pushi.e 0
cmp.i.v EQ
bf [19]

:[12]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [18]

:[13]
pushi.e 0
pop.v.i self.hurtamt
push.v self.hurttimer
pushi.e 15
cmp.i.v LTE
bf [15]

:[14]
push.v self.candodge
pushi.e 1
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 0
pop.v.i self.dodgetimer
pushi.e 4
pop.v.i self.state

:[18]
popenv [13]

:[19]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [22]

:[20]
pushi.e 710
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [22]

:[21]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v LTE
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.i 25659830
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.monsterhp

:[25]
pushi.e 0
pop.v.i local.a
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
pushi.e 574
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 1
pop.v.i local.a

:[30]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [32]

:[31]
pushi.e 697
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 2
pop.v.i local.a

:[35]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [37]

:[36]
pushi.e 484
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 3
pop.v.i local.a

:[40]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v LTE
bf [42]

:[41]
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [47]

:[44]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [46]

:[45]
call.i gml_Script_scr_monsterdefeat(argc=0)
popz.v

:[46]
popenv [45]

:[47]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [50]

:[48]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v LTE
bf [50]

:[49]
pushloc.v local.a
pushi.e 3
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [55]

:[52]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [54]

:[53]
pushi.e 1
pop.v.i self.endcon

:[54]
popenv [53]

:[55]
exit.i

:[56]
push.i [function]gml_Script_scr_damage_enemy
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_damage_enemy
popz.v

:[end]