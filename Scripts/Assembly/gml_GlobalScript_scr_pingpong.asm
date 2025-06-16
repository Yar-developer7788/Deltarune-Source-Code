.localvar 2 arguments
.localvar 11824 __value 3470

:[0]
b [5]

> gml_Script_scr_pingpong (locals=1, argc=2)
:[1]
push.v arg.argument0
push.v arg.argument1
pushi.e 2
mul.i.v
mod.v.v
pop.v.v local.__value
pushloc.v local.__value
push.v arg.argument1
cmp.v.v GT
bf [3]

:[2]
push.v arg.argument1
pushi.e 2
mul.i.v
pushloc.v local.__value
sub.v.v
pop.v.v local.__value

:[3]
push.v self.value
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_pingpong
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_pingpong
popz.v

:[end]