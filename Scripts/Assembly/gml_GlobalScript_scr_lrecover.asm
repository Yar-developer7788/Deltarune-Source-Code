.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_lrecover (locals=0, argc=1)
:[1]
push.v arg.argument0
pop.v.v self.recovered
pushi.e 0
pop.v.i self.maxedout
pushglb.v global.lhp
pushglb.v global.lmaxhp
cmp.v.v LT
bf [3]

:[2]
push.v global.lhp
push.v arg.argument0
add.v.v
pop.v.v global.lhp
b [4]

:[3]
pushi.e 1
pop.v.i self.maxedout

:[4]
pushglb.v global.lhp
pushglb.v global.lmaxhp
cmp.v.v GTE
bf [6]

:[5]
push.v self.maxedout
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushglb.v global.lmaxhp
pop.v.v global.lhp
pushi.e 1
pop.v.i self.maxedout

:[9]
exit.i

:[10]
push.i [function]gml_Script_scr_lrecover
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_lrecover
popz.v

:[end]