.localvar 2 arguments

:[0]
b [2]

> gml_Script_msgset (locals=0, argc=2)
:[1]
push.v arg.argument0
pop.v.v global.msgno
push.i 5998419
setowner.e
push.v arg.argument1
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.msg
exit.i

:[2]
push.i [function]gml_Script_msgset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.msgset
popz.v

:[end]