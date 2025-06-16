.localvar 2 arguments
.localvar 7813 minutes 1406
.localvar 7814 seconds 1407
.localvar 7815 timedisp 1408

:[0]
b [7]

> gml_Script_scr_timedisp (locals=3, argc=1)
:[1]
push.v arg.argument0
pushi.e 1800
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v local.minutes
push.v arg.argument0
pushi.e 1800
conv.i.d
div.d.v
pushloc.v local.minutes
sub.v.v
pushi.e 60
mul.i.v
call.i round(argc=1)
pop.v.v local.seconds
pushloc.v local.seconds
pushi.e 60
cmp.i.v EQ
bf [3]

:[2]
pushi.e 59
pop.v.i local.seconds

:[3]
pushloc.v local.seconds
pushi.e 10
cmp.i.v LT
bf [5]

:[4]
push.s "0"@3491
pushloc.v local.seconds
call.i string(argc=1)
add.v.s
pop.v.v local.seconds

:[5]
pushloc.v local.minutes
call.i string(argc=1)
push.s ":"@6158
add.s.v
pushloc.v local.seconds
call.i string(argc=1)
add.v.v
pop.v.v local.timedisp
pushloc.v local.timedisp
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_scr_timedisp
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_timedisp
popz.v

:[end]