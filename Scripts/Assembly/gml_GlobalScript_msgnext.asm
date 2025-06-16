.localvar 2 arguments

:[0]
b [2]

> gml_Script_msgnext (locals=0, argc=1)
:[1]
push.v global.msgno
push.e 1
add.i.v
pop.v.v global.msgno
push.v arg.argument0
pushglb.v global.msgno
call.i gml_Script_msgset(argc=2)
popz.v
exit.i

:[2]
push.i [function]gml_Script_msgnext
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.msgnext
popz.v

:[end]