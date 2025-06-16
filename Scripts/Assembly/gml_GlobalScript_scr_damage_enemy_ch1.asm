.localvar 2 arguments

:[0]
b [19]

> gml_Script_scr_damage_enemy_ch1 (locals=0, argc=2)
:[1]
pushi.e 1633
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
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dm
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
pushi.e 1
sub.i.v
push.v self.dm
pushi.e -9
pop.v.v [stacktop]self.type
push.v arg.argument1
push.v self.dm
pushi.e -9
pop.v.v [stacktop]self.damage
push.i 116492726
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
bf [6]

:[2]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [4]

:[3]
pushi.e 9
pop.v.i self.shakex
pushi.e 3
pop.v.i self.state
pushi.e 30
pop.v.i self.hurttimer

:[4]
popenv [3]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.i 116492727
setowner.e
push.v arg.argument1
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.hurtamt

:[6]
push.i 116492457
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
bf [14]

:[7]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [13]

:[8]
pushi.e 0
pop.v.i self.hurtamt
push.v self.hurttimer
pushi.e 15
cmp.i.v LTE
bf [10]

:[9]
push.v self.candodge
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 0
pop.v.i self.dodgetimer
pushi.e 4
pop.v.i self.state

:[13]
popenv [8]

:[14]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v LTE
bf [18]

:[15]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [17]

:[16]
call.i gml_Script_scr_monsterdefeat_ch1(argc=0)
popz.v

:[17]
popenv [16]

:[18]
exit.i

:[19]
push.i [function]gml_Script_scr_damage_enemy_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_damage_enemy_ch1
popz.v

:[end]