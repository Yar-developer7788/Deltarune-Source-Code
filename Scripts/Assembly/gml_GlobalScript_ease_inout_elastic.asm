.localvar 2 arguments
.localvar 11665 _s 3342
.localvar 11707 _p 3343
.localvar 11708 _a 3344

:[0]
b [17]

> gml_Script_ease_inout_elastic (locals=3, argc=4)
:[1]
push.d 1.70158
pop.v.d local._s
pushi.e 0
pop.v.i local._p
push.v arg.argument2
pop.v.v local._a
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bt [3]

:[2]
pushloc.v local._a
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
push.v arg.argument1
ret.v

:[6]
push.v arg.argument0
push.v arg.argument3
push.d 0.5
mul.d.v
div.v.v
pop.v.v arg.argument0
push.v arg.argument0
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.v arg.argument1
push.v arg.argument2
add.v.v
ret.v

:[8]
pushloc.v local._p
conv.v.b
not.b
bf [10]

:[9]
push.v arg.argument3
push.d 0.44999999999999996
mul.d.v
pop.v.v local._p

:[10]
pushloc.v local._a
push.v arg.argument2
call.i abs(argc=1)
cmp.v.v LT
bf [12]

:[11]
push.v arg.argument2
pop.v.v local._a
pushloc.v local._p
push.d 0.25
mul.d.v
pop.v.v local._s
b [13]

:[12]
pushloc.v local._p
push.d 6.283185307179586
div.d.v
push.v arg.argument2
pushloc.v local._a
div.v.v
call.i arcsin(argc=1)
mul.v.v
pop.v.v local._s

:[13]
push.v arg.argument0
pushi.e 1
cmp.i.v LT
bf [15]

:[14]
push.d -0.5
pushloc.v local._a
pushi.e 10
push.v arg.argument0
push.e 1
sub.i.v
dup.v 0
pop.v.v arg.argument0
mul.v.i
pushi.e 2
conv.i.v
call.i power(argc=2)
mul.v.v
push.v arg.argument0
push.v arg.argument3
mul.v.v
pushloc.v local._s
sub.v.v
push.d 6.283185307179586
mul.d.v
pushloc.v local._p
div.v.v
call.i sin(argc=1)
mul.v.v
mul.v.d
push.v arg.argument1
add.v.v
ret.v

:[15]
pushloc.v local._a
pushi.e -10
push.v arg.argument0
push.e 1
sub.i.v
dup.v 0
pop.v.v arg.argument0
mul.v.i
pushi.e 2
conv.i.v
call.i power(argc=2)
mul.v.v
push.v arg.argument0
push.v arg.argument3
mul.v.v
pushloc.v local._s
sub.v.v
push.d 6.283185307179586
mul.d.v
pushloc.v local._p
div.v.v
call.i sin(argc=1)
mul.v.v
push.d 0.5
mul.d.v
push.v arg.argument2
add.v.v
push.v arg.argument1
add.v.v
ret.v

:[16]
exit.i

:[17]
push.i [function]gml_Script_ease_inout_elastic
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ease_inout_elastic
popz.v

:[end]