.localvar 2 arguments

:[0]
b [4]

> gml_Script_debug_message (locals=0, argc=1)
:[1]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v arg.argument0
call.i show_debug_message(argc=1)
popz.v

:[3]
exit.i

:[4]
push.i [function]gml_Script_debug_message
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.debug_message
popz.v

:[end]