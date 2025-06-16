.localvar 2 arguments

:[0]
b [3]

> gml_Script_ease_in_expo (locals=0, argc=4)
:[1]
push.v arg.argument2
pushi.e 10
push.v arg.argument0
push.v arg.argument3
div.v.v
pushi.e 1
sub.i.v
mul.v.i
pushi.e 2
conv.i.v
call.i power(argc=2)
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_ease_in_expo
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ease_in_expo
popz.v

:[end]