.localvar 2 arguments

:[0]
b [3]

> gml_Script_ease_out_sine (locals=0, argc=4)
:[1]
push.v arg.argument2
push.v arg.argument0
push.v arg.argument3
div.v.v
push.d 1.5707963267948966
mul.d.v
call.i sin(argc=1)
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_ease_out_sine
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ease_out_sine
popz.v

:[end]