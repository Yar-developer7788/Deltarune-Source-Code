.localvar 2 arguments

:[0]
b [3]

> gml_Script_ease_linear (locals=0, argc=4)
:[1]
push.v arg.argument2
push.v arg.argument0
mul.v.v
push.v arg.argument3
div.v.v
push.v arg.argument1
add.v.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_ease_linear
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ease_linear
popz.v

:[end]