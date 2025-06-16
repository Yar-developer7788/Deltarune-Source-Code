.localvar 2 arguments

:[0]
b [3]

> gml_Script_ease_in_circ (locals=0, argc=4)
:[1]
push.v arg.argument0
push.v arg.argument3
div.v.v
pop.v.v arg.argument0
push.v arg.argument2
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

:[2]
exit.i

:[3]
push.i [function]gml_Script_ease_in_circ
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ease_in_circ
popz.v

:[end]