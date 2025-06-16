.localvar 2 arguments

:[0]
b [16]

> gml_Script_scr_recruit (locals=0, argc=0)
:[1]
push.v self.recruitable
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 61
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [15]

:[5]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 600
add.i.v
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v GTE
bf [8]

:[6]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 600
add.i.v
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v LT
bf [8]

:[7]
push.v self.recruitcount
pushi.e 0
cmp.i.v GT
b [9]

:[8]
push.e 0

:[9]
bf [15]

:[10]
push.v self.recruitcount
pushi.e -1
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
call.i gml_Script_scr_recruit_info(argc=1)
popz.v
push.v self._recruitcount
pop.v.v self.recruitcount

:[12]
push.i 63407908
setowner.e
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 600
add.i.v
conv.v.i
dup.i 1
push.v [array]self.flag
pushi.e 1
conv.i.d
push.v self.recruitcount
div.v.d
add.v.v
pop.i.v [array]self.flag
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 600
add.i.v
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v GT
bf [14]

:[13]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 600
add.i.v
conv.v.i
pop.v.v [array]self.flag

:[14]
pushi.e 338
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 865
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e 40
sub.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self._recruitanim
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 600
add.i.v
conv.v.i
push.v [array]self.flag
pushi.e 1
conv.i.d
push.v self.recruitcount
div.v.d
div.v.v
call.i round(argc=1)
push.v self._recruitanim
pushi.e -9
pop.v.v [stacktop]self.firstnumber
push.v self.recruitcount
push.v self._recruitanim
pushi.e -9
pop.v.v [stacktop]self.secondnumber

:[15]
exit.i

:[16]
push.i [function]gml_Script_scr_recruit
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_recruit
popz.v

:[end]