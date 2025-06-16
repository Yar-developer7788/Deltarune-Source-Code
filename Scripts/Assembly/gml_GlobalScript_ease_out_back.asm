.localvar 2 arguments
.localvar 11665 _s 3359

:[0]
b [3]

> gml_Script_ease_out_back (locals=1, argc=4)
:[1]
push.d 1.70158
pop.v.d local._s
push.v arg.argument0
push.v arg.argument3
div.v.v
pushi.e 1
sub.i.v
pop.v.v arg.argument0
push.v arg.argument2
push.v arg.argument0
push.v arg.argument0
mul.v.v
pushloc.v local._s
pushi.e 1
add.i.v
push.v arg.argument0
mul.v.v
pushloc.v local._s
add.v.v
mul.v.v
pushi.e 1
add.i.v
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_ease_out_back
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ease_out_back
popz.v

:[end]