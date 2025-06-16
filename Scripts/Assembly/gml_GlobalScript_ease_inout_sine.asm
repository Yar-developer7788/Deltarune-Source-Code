.localvar 2 arguments

:[0]
b [3]

> gml_Script_ease_inout_sine (locals=0, argc=4)
:[1]
push.v arg.argument2
push.d 0.5
mul.d.v
pushi.e 1
push.d 3.141592653589793
push.v arg.argument0
mul.v.d
push.v arg.argument3
div.v.v
call.i cos(argc=1)
sub.v.i
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_ease_inout_sine
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ease_inout_sine
popz.v

:[end]