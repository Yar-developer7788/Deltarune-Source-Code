.localvar 2 arguments
.localvar 11780 __traveltime 3420
.localvar 11781 __downwardDistance 3421

:[0]
b [3]

> gml_Script_scr_getjumphspeed (locals=2, argc=4)
:[1]
pushi.e 2
push.v arg.argument1
mul.v.i
push.v arg.argument0
div.v.v
call.i sqrt(argc=1)
pop.v.v local.__traveltime
push.v arg.argument3
push.v self.y
push.v arg.argument1
sub.v.v
sub.v.v
pop.v.v local.__downwardDistance
push.v local.__traveltime
pushi.e 2
pushloc.v local.__downwardDistance
mul.v.i
push.v arg.argument0
div.v.v
call.i sqrt(argc=1)
add.v.v
pop.v.v local.__traveltime
push.v arg.argument2
pushloc.v local.__traveltime
div.v.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_getjumphspeed
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_getjumphspeed
popz.v

:[end]