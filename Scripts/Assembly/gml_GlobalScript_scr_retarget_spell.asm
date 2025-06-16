.localvar 2 arguments

:[0]
b [23]

> gml_Script_scr_retarget_spell (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.cancelattack
push.v self.star
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
pushi.e -5
pushi.e 0
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.star

:[4]
push.v self.star
pushi.e 1
cmp.i.v EQ
bf [7]

:[5]
pushi.e -5
pushi.e 1
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2
pop.v.i self.star

:[7]
push.v self.star
pushi.e 2
cmp.i.v EQ
bf [22]

:[8]
pushi.e -5
pushi.e 2
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 3
pop.v.i self.star

:[10]
push.v self.star
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 0
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 0
pop.v.i self.star

:[15]
push.v self.star
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
pushi.e -5
pushi.e 1
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.i self.star

:[20]
push.v self.star
pushi.e 3
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i self.cancelattack

:[22]
exit.i

:[23]
push.i [function]gml_Script_scr_retarget_spell
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_retarget_spell
popz.v

:[end]