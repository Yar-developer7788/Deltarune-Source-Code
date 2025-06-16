.localvar 2 arguments
.localvar 7095 __attackcount 1353

:[0]
b [13]

> gml_Script_scr_attackprepcheck (locals=1, argc=2)
:[1]
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
ret.v

:[3]
pushi.e 0
pop.v.i local.__attackcount
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
push.v arg.argument0
cmp.v.v LT
bf [11]

:[5]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monster
conv.v.b
bf [7]

:[6]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterattackname
push.v arg.argument1
cmp.v.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v local.__attackcount
push.e 1
add.i.v
pop.v.v local.__attackcount

:[10]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [4]

:[11]
pushloc.v local.__attackcount
ret.v

:[12]
exit.i

:[13]
push.i [function]gml_Script_scr_attackprepcheck
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_attackprepcheck
popz.v

:[end]