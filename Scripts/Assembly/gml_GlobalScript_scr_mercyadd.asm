.localvar 2 arguments
.localvar 6550 _playsound 841
.localvar 6551 _pitch 842

:[0]
b [21]

> gml_Script_scr_mercyadd (locals=2, argc=2)
:[1]
push.i 16746598
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
dup.i 1
push.v [array]self.mercymod
push.v arg.argument1
add.v.v
pop.i.v [array]self.mercymod
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.mercymod
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.mercymod

:[3]
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [5]

:[4]
pushi.e 100
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.mercymod

:[5]
pushi.e 1
pop.v.i local._playsound
push.v arg.argument1
pushi.e 0
cmp.i.v LTE
bf [7]

:[6]
pushi.e 0
pop.v.i local._playsound

:[7]
pushi.e 873
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [12]

:[8]
pushi.e 873
pushenv [11]

:[9]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i local._playsound

:[11]
popenv [9]

:[12]
pushloc.v local._playsound
conv.v.b
bf [20]

:[13]
push.d 0.8
pop.v.d local._pitch
push.v arg.argument1
pushi.e 99
cmp.i.v LT
bf [15]

:[14]
pushi.e 1
pop.v.i local._pitch

:[15]
push.v arg.argument1
pushi.e 50
cmp.i.v LTE
bf [17]

:[16]
push.d 1.2
pop.v.d local._pitch

:[17]
push.v arg.argument1
pushi.e 25
cmp.i.v LTE
bf [19]

:[18]
push.d 1.4
pop.v.d local._pitch

:[19]
pushloc.v local._pitch
push.d 0.8
conv.d.v
pushi.e 0
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v

:[20]
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
pop.v.v self.__mercydmgwriter
push.v arg.argument1
push.v self.__mercydmgwriter
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 5
push.v self.__mercydmgwriter
pushi.e -9
pop.v.i [stacktop]self.type
push.i 16746665
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
dup.i 1
push.v [array]self.hittarget
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.hittarget
popz.v
exit.i

:[21]
push.i [function]gml_Script_scr_mercyadd
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_mercyadd
popz.v

:[end]