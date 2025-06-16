.localvar 2 arguments

:[0]
b [12]

> gml_Script_scr_dogcheck_ch1 (locals=0, argc=0)
:[1]
pushglb.v global.currentroom
pushi.e 412
cmp.i.v GTE
bt [3]

:[2]
pushglb.v global.currentroom
pushi.e 281
cmp.i.v LTE
b [4]

:[3]
push.e 1

:[4]
bf [10]

:[5]
call.i gml_Script_scr_debug_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
bf [8]

:[6]
pushi.e 1
conv.i.v
ret.v

:[7]
b [9]

:[8]
pushi.e 0
conv.i.v
ret.v

:[9]
b [11]

:[10]
pushi.e 0
conv.i.v
ret.v

:[11]
exit.i

:[12]
push.i [function]gml_Script_scr_dogcheck_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_dogcheck_ch1
popz.v

:[end]