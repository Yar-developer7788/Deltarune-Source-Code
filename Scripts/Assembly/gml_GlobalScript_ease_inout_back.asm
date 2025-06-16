.localvar 2 arguments
.localvar 11665 _s 3333

:[0]
b [5]

> gml_Script_ease_inout_back (locals=1, argc=4)
:[1]
push.d 1.70158
pop.v.d local._s
push.v arg.argument0
push.v arg.argument3
div.v.v
pop.v.v arg.argument0
push.v arg.argument0
pushi.e 2
mul.i.v
pop.v.v arg.argument0
push.v arg.argument0
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v local._s
push.d 1.525
mul.d.v
pop.v.v local._s
push.v arg.argument2
push.d 0.5
mul.d.v
push.v arg.argument0
push.v arg.argument0
mul.v.v
pushloc.v local._s
pushi.e 1
add.i.v
push.v arg.argument0
mul.v.v
pushloc.v local._s
sub.v.v
mul.v.v
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[3]
push.v arg.argument0
pushi.e 2
sub.i.v
pop.v.v arg.argument0
push.v local._s
push.d 1.525
mul.d.v
pop.v.v local._s
push.v arg.argument2
push.d 0.5
mul.d.v
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
pushi.e 2
add.i.v
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_ease_inout_back
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ease_inout_back
popz.v

:[end]