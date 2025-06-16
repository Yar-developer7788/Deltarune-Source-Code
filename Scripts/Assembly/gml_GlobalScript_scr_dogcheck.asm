.localvar 2 arguments

:[0]
b [11]

> gml_Script_scr_dogcheck (locals=0, argc=0)
:[1]
pushglb.v global.currentroom
pushi.e 4
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
ret.v

:[3]
pushglb.v global.currentroom
pushi.e 233
cmp.i.v GTE
bt [5]

:[4]
pushglb.v global.currentroom
pushi.e 11
cmp.i.v LTE
b [6]

:[5]
push.e 1

:[6]
bf [9]

:[7]
pushi.e 1
conv.i.v
ret.v

:[8]
b [10]

:[9]
pushi.e 0
conv.i.v
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_scr_dogcheck
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_dogcheck
popz.v

:[end]