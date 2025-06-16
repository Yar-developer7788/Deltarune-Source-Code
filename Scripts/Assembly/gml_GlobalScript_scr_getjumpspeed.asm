.localvar 2 arguments

:[0]
b [3]

> gml_Script_scr_getjumpspeed (locals=0, argc=2)
:[1]
pushi.e 2
push.v arg.argument0
mul.v.i
push.v arg.argument1
mul.v.v
call.i sqrt(argc=1)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_getjumpspeed
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_getjumpspeed
popz.v

:[end]