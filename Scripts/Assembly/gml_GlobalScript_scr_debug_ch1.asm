.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_debug_ch1 (locals=0, argc=0)
:[1]
pushi.e 1669
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 1669.debug
ret.v

:[3]
exit.i

:[4]
push.i [function]gml_Script_scr_debug_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_debug_ch1
popz.v

:[end]