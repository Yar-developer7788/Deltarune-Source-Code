.localvar 2 arguments

:[0]
b [25]

> gml_Script_scr_ease_inout (locals=0, argc=2)
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
pushi.e -3
cmp.i.v EQ
bf [9]

:[7]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i gml_Script_ease_inout_bounce(argc=4)
ret.v

:[8]
b [20]

:[9]
push.v arg.argument1
pushi.e -2
cmp.i.v EQ
bf [12]

:[10]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i gml_Script_ease_inout_elastic(argc=4)
ret.v

:[11]
b [20]

:[12]
push.v arg.argument1
pushi.e -1
cmp.i.v EQ
bf [15]

:[13]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i gml_Script_ease_inout_back(argc=4)
ret.v

:[14]
b [20]

:[15]
push.v arg.argument1
pushi.e 1
cmp.i.v EQ
bf [18]

:[16]
push.d -0.5
push.d 3.141592653589793
push.v arg.argument0
mul.v.d
pushi.e 1
sub.i.v
call.i cos(argc=1)
mul.v.d
ret.v

:[17]
b [20]

:[18]
push.v arg.argument1
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
push.v arg.argument0
ret.v

:[20]
push.v arg.argument0
pushi.e 2
mul.i.v
pop.v.v arg.argument0
push.v arg.argument0
pushi.e 1
cmp.i.v LT
bf [23]

:[21]
push.d 0.5
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_scr_ease_in(argc=2)
mul.v.d
ret.v

:[22]
b [24]

:[23]
push.v arg.argument0
push.e 1
sub.i.v
pop.v.v arg.argument0
push.d 0.5
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_scr_ease_out(argc=2)
pushi.e 1
add.i.v
mul.v.d
ret.v

:[24]
exit.i

:[25]
push.i [function]gml_Script_scr_ease_inout
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_ease_inout
popz.v

:[end]