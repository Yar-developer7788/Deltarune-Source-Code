.localvar 2 arguments

:[0]
pushi.e 191
conv.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 190
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.i 16777215
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.d -0.034
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.fadespeed
pushi.e 1
pop.v.i global.turntimer
pushi.e 643
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 644
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
push.v self.sprite_index
pushi.e 2028
cmp.i.v EQ
bf [end]

:[7]
pushi.e 697
pushenv [17]

:[8]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
cmp.v.v EQ
bf [10]

:[9]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
push.v 698.mercyaccumulated
pushi.e 5
add.i.v
pop.v.v 698.mercyaccumulated
pushi.e 697
pushenv [14]

:[13]
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
pushi.e 5
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

:[14]
popenv [13]
b [17]

:[15]
push.i 231862
setowner.e
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.monsterhp
pushi.e -5
pushi.e 0
push.v [array]self.monstermaxhp
push.d 0.05
mul.d.v
call.i ceil(argc=1)
sub.v.v
pop.i.v [array]self.monsterhp
pushi.e -5
pushi.e 0
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v LT
bf [17]

:[16]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterhp

:[17]
popenv [8]

:[end]