.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_debug (locals=0, argc=0)
:[1]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
conv.i.v
ret.v

:[3]
exit.i

:[4]
push.i [function]gml_Script_scr_debug
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_debug
popz.v

:[end]