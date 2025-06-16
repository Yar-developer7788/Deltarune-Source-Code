.localvar 2 arguments

:[0]
b [5]

> gml_Script_ease_inout_bounce (locals=0, argc=4)
:[1]
push.v arg.argument0
push.v arg.argument3
push.d 0.5
mul.d.v
cmp.v.v LT
bf [3]

:[2]
push.v arg.argument3
push.v arg.argument2
pushi.e 0
conv.i.v
push.v arg.argument0
pushi.e 2
mul.i.v
call.i gml_Script_ease_in_bounce(argc=4)
push.d 0.5
mul.d.v
push.v arg.argument1
add.v.v
ret.v

:[3]
push.v arg.argument3
push.v arg.argument2
pushi.e 0
conv.i.v
push.v arg.argument0
pushi.e 2
mul.i.v
push.v arg.argument3
sub.v.v
call.i gml_Script_ease_out_bounce(argc=4)
push.d 0.5
mul.d.v
push.v arg.argument2
push.d 0.5
mul.d.v
add.v.v
push.v arg.argument1
add.v.v
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_ease_inout_bounce
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ease_inout_bounce
popz.v

:[end]