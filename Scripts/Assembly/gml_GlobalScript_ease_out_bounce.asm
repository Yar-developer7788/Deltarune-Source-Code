.localvar 2 arguments

:[0]
b [12]

> gml_Script_ease_out_bounce (locals=0, argc=4)
:[1]
push.v arg.argument0
push.v arg.argument3
div.v.v
pop.v.v arg.argument0
push.v arg.argument0
push.d 0.36363636363636365
cmp.d.v LT
bf [4]

:[2]
push.v arg.argument2
push.d 7.5625
push.v arg.argument0
mul.v.d
push.v arg.argument0
mul.v.v
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[3]
b [11]

:[4]
push.v arg.argument0
push.d 0.7272727272727273
cmp.d.v LT
bf [7]

:[5]
push.v arg.argument0
push.d 0.5454545454545454
sub.d.v
pop.v.v arg.argument0
push.v arg.argument2
push.d 7.5625
push.v arg.argument0
mul.v.d
push.v arg.argument0
mul.v.v
push.d 0.75
add.d.v
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[6]
b [11]

:[7]
push.v arg.argument0
push.d 0.9090909090909091
cmp.d.v LT
bf [10]

:[8]
push.v arg.argument0
push.d 0.8181818181818182
sub.d.v
pop.v.v arg.argument0
push.v arg.argument2
push.d 7.5625
push.v arg.argument0
mul.v.d
push.v arg.argument0
mul.v.v
push.d 0.9375
add.d.v
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[9]
b [11]

:[10]
push.v arg.argument0
push.d 0.9545454545454546
sub.d.v
pop.v.v arg.argument0
push.v arg.argument2
push.d 7.5625
push.v arg.argument0
mul.v.d
push.v arg.argument0
mul.v.v
push.d 0.984375
add.d.v
mul.v.v
push.v arg.argument1
add.v.v
ret.v

:[11]
exit.i

:[12]
push.i [function]gml_Script_ease_out_bounce
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ease_out_bounce
popz.v

:[end]