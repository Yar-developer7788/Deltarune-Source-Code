.localvar 2 arguments
.localvar 6360 $$$$temp$$$$ 3282
.localvar 11665 _s 3283

:[0]
b [24]

> gml_Script_scr_ease_in (locals=2, argc=2)
:[1]
push.v arg.argument1
pushi.e -3
cmp.i.v LT
bt [3]

:[2]
push.v arg.argument1
pushi.e 7
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
push.v arg.argument1
dup.v 0
pushi.e -3
cmp.i.v EQ
bt [15]

:[7]
dup.v 0
pushi.e -2
cmp.i.v EQ
bt [16]

:[8]
dup.v 0
pushi.e -1
cmp.i.v EQ
bt [17]

:[9]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [18]

:[10]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [19]

:[11]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [20]

:[12]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [21]

:[13]
b [22]

:[14]
b [23]

:[15]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i gml_Script_ease_in_bounce(argc=4)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[16]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i gml_Script_ease_in_elastic(argc=4)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[17]
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

:[18]
push.v arg.argument0
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[19]
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

:[20]
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

:[21]
pushi.e 1
push.v arg.argument0
call.i sqr(argc=1)
sub.v.i
call.i sqrt(argc=1)
pushi.e 1
sub.i.v
neg.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[22]
push.v arg.argument1
push.v arg.argument0
call.i power(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[23]
popz.v
exit.i

:[24]
push.i [function]gml_Script_scr_ease_in
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_ease_in
popz.v

:[end]