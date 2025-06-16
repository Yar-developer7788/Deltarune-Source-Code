.localvar 2 arguments
.localvar 11821 __resultangle 3467

:[0]
b [11]

> gml_Script_scr_getlaunchdirection (locals=1, argc=4)
:[1]
push.v arg.argument0
call.i sqr(argc=1)
push.v arg.argument2
div.v.v
push.v arg.argument1
cmp.v.v LTE
bf [3]

:[2]
pushi.e 45
conv.i.v
ret.v

:[3]
push.v arg.argument1
push.v arg.argument2
mul.v.v
push.v arg.argument0
call.i sqr(argc=1)
div.v.v
call.i arcsin(argc=1)
call.i radtodeg(argc=1)
pushi.e 2
conv.i.d
div.d.v
pop.v.v local.__resultangle
push.v arg.argument3
pushi.e 1
cmp.i.v GTE
bf [6]

:[4]
pushi.e 90
pushloc.v local.__resultangle
sub.v.i
ret.v

:[5]
b [10]

:[6]
push.v arg.argument3
pushi.e -1
cmp.i.v LTE
bf [9]

:[7]
pushloc.v local.__resultangle
ret.v

:[8]
b [10]

:[9]
pushi.e 90
pushloc.v local.__resultangle
sub.v.i
pushloc.v local.__resultangle
call.i choose(argc=2)
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_scr_getlaunchdirection
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_getlaunchdirection
popz.v

:[end]