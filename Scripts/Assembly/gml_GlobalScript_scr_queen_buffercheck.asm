.localvar 2 arguments

:[0]
b [6]

> gml_Script_scr_queen_buffercheck (locals=0, argc=0)
:[1]
pushi.e 562
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 562.buffering
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
conv.b.v
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_queen_buffercheck
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_queen_buffercheck
popz.v

:[end]