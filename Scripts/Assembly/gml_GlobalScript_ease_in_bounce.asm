.localvar 2 arguments

:[0]
b [3]

> gml_Script_ease_in_bounce (locals=0, argc=4)
:[1]
push.v arg.argument2
push.v arg.argument3
push.v arg.argument2
pushi.e 0
conv.i.v
push.v arg.argument3
push.v arg.argument0
sub.v.v
call.i gml_Script_ease_out_bounce(argc=4)
sub.v.v
push.v arg.argument1
add.v.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_ease_in_bounce
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ease_in_bounce
popz.v

:[end]