.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_inverselerp (locals=0, argc=3)
:[1]
push.v arg.argument1
push.v arg.argument0
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
ret.v

:[3]
push.v arg.argument2
push.v arg.argument0
sub.v.v
push.v arg.argument1
push.v arg.argument0
sub.v.v
div.v.v
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_inverselerp
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_inverselerp
popz.v

:[end]