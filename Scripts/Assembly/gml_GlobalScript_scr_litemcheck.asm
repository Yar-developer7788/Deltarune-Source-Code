.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_litemcheck (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self.haveit
pushi.e 0
pop.v.i self.itemcount
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [8]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.litem
push.v arg.argument0
cmp.v.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.haveit

:[5]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.litem
push.v arg.argument0
cmp.v.v EQ
bf [7]

:[6]
push.v self.itemcount
pushi.e 1
add.i.v
pop.v.v self.itemcount

:[7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[8]
push.v self.haveit
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_scr_litemcheck
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_litemcheck
popz.v

:[end]