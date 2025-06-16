.localvar 2 arguments
.localvar 11665 _s 3368
.localvar 11707 _p 3369
.localvar 6821 time 3370
.localvar 11746 start 3371
.localvar 11747 change 3372
.localvar 11748 duration 3373

:[0]
b [15]

> gml_Script_ease_out_elastic (locals=6, argc=4)
:[1]
push.d 1.70158
pop.v.d local._s
pushi.e 0
pop.v.i local._p
push.v arg.argument0
pop.v.v local.time
push.v arg.argument1
pop.v.v local.start
push.v arg.argument2
pop.v.v local.change
push.v arg.argument3
pop.v.v local.duration
pushloc.v local.time
pushi.e 0
cmp.i.v EQ
bt [3]

:[2]
pushloc.v local.change
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
pushloc.v local.start
ret.v

:[6]
push.v local.time
pushloc.v local.duration
div.v.v
pop.v.v local.time
pushloc.v local.time
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushloc.v local.start
push.v arg.argument2
add.v.v
ret.v

:[8]
pushloc.v local._p
conv.v.b
not.b
bf [10]

:[9]
pushloc.v local.duration
push.d 0.3
mul.d.v
pop.v.v local._p

:[10]
pushloc.v local.change
push.v arg.argument2
call.i abs(argc=1)
cmp.v.v LT
bf [12]

:[11]
push.v arg.argument2
pop.v.v local.change
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
pushloc.v local.change
div.v.v
call.i arcsin(argc=1)
mul.v.v
pop.v.v local._s

:[13]
pushloc.v local.change
pushi.e -10
pushloc.v local.time
mul.v.i
pushi.e 2
conv.i.v
call.i power(argc=2)
mul.v.v
pushloc.v local.time
pushloc.v local.duration
mul.v.v
pushloc.v local._s
sub.v.v
push.d 6.283185307179586
mul.d.v
pushloc.v local._p
div.v.v
call.i sin(argc=1)
mul.v.v
push.v arg.argument2
add.v.v
pushloc.v local.start
add.v.v
ret.v

:[14]
exit.i

:[15]
push.i [function]gml_Script_ease_out_elastic
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ease_out_elastic
popz.v

:[end]