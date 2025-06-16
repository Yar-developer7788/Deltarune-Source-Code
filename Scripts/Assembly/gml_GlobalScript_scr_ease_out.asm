.localvar 2 arguments
.localvar 6360 $$$$temp$$$$ 3292

:[0]
b [29]

> gml_Script_scr_ease_out (locals=1, argc=2)
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
bt [16]

:[7]
dup.v 0
pushi.e -2
cmp.i.v EQ
bt [17]

:[8]
dup.v 0
pushi.e -1
cmp.i.v EQ
bt [18]

:[9]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [19]

:[10]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [20]

:[11]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [21]

:[12]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [22]

:[13]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [23]

:[14]
b [24]

:[15]
b [28]

:[16]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i gml_Script_ease_out_bounce(argc=4)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[17]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i gml_Script_ease_out_elastic(argc=4)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[18]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i gml_Script_ease_out_back(argc=4)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[19]
push.v arg.argument0
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[20]
push.v arg.argument0
push.d 1.5707963267948966
mul.d.v
call.i sin(argc=1)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[21]
push.v arg.argument0
neg.v
push.v arg.argument0
pushi.e 2
sub.i.v
mul.v.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[22]
pushi.e -10
push.v arg.argument0
mul.v.i
pushi.e 2
conv.i.v
call.i power(argc=2)
neg.v
pushi.e 1
add.i.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[23]
push.v arg.argument0
push.e 1
sub.i.v
pop.v.v arg.argument0
pushi.e 1
push.v arg.argument0
push.v arg.argument0
mul.v.v
sub.v.i
call.i sqrt(argc=1)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[24]
push.v arg.argument0
push.e 1
sub.i.v
pop.v.v arg.argument0
push.v arg.argument1
pushi.e 4
cmp.i.v EQ
bf [27]

:[25]
pushi.e -1
push.v arg.argument1
push.v arg.argument0
call.i power(argc=2)
pushi.e 1
sub.i.v
mul.v.i
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[26]
b [28]

:[27]
push.v arg.argument1
push.v arg.argument0
call.i power(argc=2)
pushi.e 1
add.i.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[28]
popz.v
exit.i

:[29]
push.i [function]gml_Script_scr_ease_out
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_ease_out
popz.v

:[end]