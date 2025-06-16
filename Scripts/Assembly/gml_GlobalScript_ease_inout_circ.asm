.localvar 2 arguments

:[0]
b [5]

> gml_Script_ease_inout_circ (locals=0, argc=4)
:[1]
push.v arg.argument0
push.v arg.argument3
push.d 0.5
mul.d.v
div.v.v
pop.v.v arg.argument0
push.v arg.argument0
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v arg.argument2
push.d 0.5
mul.d.v
pushi.e 1
pushi.e 1
push.v arg.argument0
push.v arg.argument0
mul.v.v
sub.v.i
call.i sqrt(argc=1)
sub.v.i
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[3]
push.v arg.argument0
pushi.e 2
sub.i.v
pop.v.v arg.argument0
push.v arg.argument2
push.d 0.5
mul.d.v
pushi.e 1
push.v arg.argument0
push.v arg.argument0
mul.v.v
sub.v.i
call.i sqrt(argc=1)
pushi.e 1
add.i.v
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_ease_inout_circ
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ease_inout_circ
popz.v

:[end]