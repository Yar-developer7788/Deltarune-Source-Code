.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_getmsgno (locals=0, argc=0)
:[1]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 64.msgno
ret.v

:[3]
exit.i

:[4]
push.i [function]gml_Script_scr_getmsgno
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_getmsgno
popz.v

:[end]