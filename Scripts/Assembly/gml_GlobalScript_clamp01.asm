.localvar 2 arguments

:[0]
b [3]

> gml_Script_clamp01 (locals=0, argc=1)
:[1]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i clamp(argc=3)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_clamp01
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.clamp01
popz.v

:[end]