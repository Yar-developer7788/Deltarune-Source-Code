.localvar 2 arguments

:[0]
b [5]

> gml_Script_ease_inout_expo (locals=0, argc=4)
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
pushi.e 10
push.v arg.argument0
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

:[3]
push.v arg.argument0
pushi.e 1
sub.i.v
pop.v.v arg.argument0
push.v arg.argument2
push.d 0.5
mul.d.v
pushi.e -10
push.v arg.argument0
mul.v.i
pushi.e 2
conv.i.v
call.i power(argc=2)
neg.v
pushi.e 2
add.i.v
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_ease_inout_expo
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ease_inout_expo
popz.v

:[end]