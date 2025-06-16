.localvar 2 arguments

:[0]
b [3]

> gml_Script_scr_directOverTime (locals=0, argc=3)
:[1]
push.v arg.argument0
push.v arg.argument1
sub.v.v
call.i abs(argc=1)
push.v arg.argument2
div.v.v
call.i floor(argc=1)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_directOverTime
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_directOverTime
popz.v

:[end]