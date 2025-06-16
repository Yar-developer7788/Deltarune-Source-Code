.localvar 2 arguments
.localvar 6360 $$$$temp$$$$ 3288
.localvar 11665 _s 3289

:[0]
b [22]

> gml_Script_scr_ease_in_dx (locals=2, argc=5)
:[1]
push.v arg.argument4
pushi.e -3
cmp.i.v LT
bt [3]

:[2]
push.v arg.argument4
pushi.e 6
cmp.i.v GT
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
push.v arg.argument0
ret.v

:[6]
push.v arg.argument4
dup.v 0
pushi.e -3
cmp.i.v EQ
bt [14]

:[7]
dup.v 0
pushi.e -2
cmp.i.v EQ
bt [15]

:[8]
dup.v 0
pushi.e -1
cmp.i.v EQ
bt [16]

:[9]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [17]

:[10]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [18]

:[11]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [19]

:[12]
b [20]

:[13]
b [21]

:[14]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_ease_in_bounce(argc=4)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[15]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_ease_in_elastic(argc=4)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[16]
push.d 1.70158
pop.v.d local._s
push.v arg.argument0
push.v arg.argument0
mul.v.v
pushloc.v local._s
pushi.e 1
add.i.v
push.v arg.argument0
mul.v.v
pushloc.v local._s
sub.v.v
mul.v.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[17]
push.v arg.argument0
push.v arg.argument3
div.v.v
pop.v.v arg.argument0
push.v arg.argument0
push.d 1.5707963267948966
mul.d.v
call.i cos(argc=1)
neg.v
pushi.e 1
add.i.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[18]
pushi.e 10
push.v arg.argument0
pushi.e 1
sub.i.v
mul.v.i
pushi.e 2
conv.i.v
call.i power(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[19]
pushi.e 1
push.v arg.argument0
call.i sqr(argc=1)
sub.v.i
call.i sqrt(argc=1)
neg.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[20]
push.v arg.argument2
push.v arg.argument4
push.v arg.argument0
push.v arg.argument3
div.v.v
call.i power(argc=2)
mul.v.v
push.v arg.argument1
add.v.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[21]
popz.v
exit.i

:[22]
push.i [function]gml_Script_scr_ease_in_dx
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_ease_in_dx
popz.v

:[end]