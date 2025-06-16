.localvar 2 arguments

:[0]
b [3]

> gml_Script_hexcolor (locals=0, argc=1)
:[1]
push.v arg.argument0
conv.v.l
pushi.e 255
and.i.l
pushi.e 16
conv.i.l
shl.l.l
push.v arg.argument0
conv.v.l
push.i 65280
and.i.l
or.l.l
push.v arg.argument0
conv.v.l
pushi.e 16
conv.i.l
shr.l.l
pushi.e 255
and.i.l
or.l.l
conv.l.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_hexcolor
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.hexcolor
popz.v

:[end]