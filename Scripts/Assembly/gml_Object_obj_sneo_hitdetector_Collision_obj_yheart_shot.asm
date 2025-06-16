.localvar 2 arguments
.localvar 7017 a 12354
.localvar 25504 dmg 12356

:[0]
exit.i

:[1]
push.v self.active
conv.v.b
not.b
bf [3]

:[2]
exit.i

:[3]
pushi.e 655
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
exit.i

:[5]
pushi.e 624
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
exit.i

:[7]
pushi.e 698
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
push.v 698.type
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
exit.i

:[12]
pushi.e 698
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[13]
push.v 698.type
pushi.e 8
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
exit.i

:[17]
pushi.e 697
pushenv [23]

:[18]
pushi.e 698
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [20]

:[19]
push.v 698.type
push.d 1.5
cmp.d.v NEQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 1
pop.v.i self.hitcon

:[23]
popenv [18]
pushi.e 45
conv.i.v
call.i random(argc=1)
pop.v.v local.a
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [25]

:[24]
pushi.e 606
conv.i.v
push.v other.y
push.v other.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.part
pushloc.v local.a
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.part
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 8
push.v self.part
pushi.e -9
pop.v.i [stacktop]self.speed
push.d 0.8
push.v self.part
pushi.e -9
pop.v.d [stacktop]self.friction
push.v local.a
pushi.e 45
add.i.v
pop.v.v local.a
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [24]

:[25]
popz.i
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monstermaxhp
cmp.v.v EQ
bf [39]

:[26]
push.v other.big
pushi.e 1
cmp.i.v EQ
bf [35]

:[27]
pushi.e 697
pushenv [34]

:[28]
pushi.e 698
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [30]

:[29]
push.v 698.type
push.d 1.5
cmp.d.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
push.v 698.mercyaccumulated
pushi.e 1
add.i.v
pop.v.v 698.mercyaccumulated
pushi.e 873
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e 20
add.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.hittarget
pushi.e 20
mul.i.v
sub.v.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__mercydmgwriter
pushi.e 1
push.v self.__mercydmgwriter
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e 5
push.v self.__mercydmgwriter
pushi.e -9
pop.v.i [stacktop]self.type
push.i 231593
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.hittarget
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.hittarget
popz.v
b [34]

:[33]
pushi.e 1
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[34]
popenv [28]
b [38]

:[35]
pushi.e 697
pushenv [37]

:[36]
push.v self.singleshotmercy
pushi.e 1
add.i.v
pop.v.v self.singleshotmercy

:[37]
popenv [36]

:[38]
b [47]

:[39]
pushi.e 0
pop.v.i local.dmg
push.v other.big
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.01
mul.d.v
call.i ceil(argc=1)
pop.v.v local.dmg
b [42]

:[41]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.002
mul.d.v
call.i ceil(argc=1)
pop.v.v local.dmg

:[42]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterhp
pushloc.v local.dmg
sub.v.v
pushi.e 1
cmp.i.v LT
bf [44]

:[43]
push.i 231862
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v 697.myself
conv.v.i
pop.v.v [array]self.monsterhp
b [45]

:[44]
push.i 231862
setowner.e
pushi.e -5
push.v 697.myself
conv.v.i
dup.i 1
push.v [array]self.monsterhp
pushloc.v local.dmg
sub.v.v
pop.i.v [array]self.monsterhp

:[45]
pushloc.v local.dmg
pushi.e 0
cmp.i.v NEQ
bf [47]

:[46]
pushi.e 873
conv.i.v
pushi.e -5
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monstery
pushi.e -5
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.hittarget
pushi.e 20
mul.i.v
sub.v.v
pushi.e 20
add.i.v
pushi.e -5
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dm
pushi.e 1
push.v self.dm
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 8
push.v self.dm
pushi.e -9
pop.v.i [stacktop]self.delay
pushloc.v local.dmg
push.v self.dm
pushi.e -9
pop.v.v [stacktop]self.damage

:[47]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [49]

:[48]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[49]
popenv [48]

:[end]