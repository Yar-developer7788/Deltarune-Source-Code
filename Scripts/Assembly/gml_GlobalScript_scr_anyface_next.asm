.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_anyface_next (locals=0, argc=2)
:[1]
push.v global.msgno
push.e 1
add.i.v
pop.v.v global.msgno
push.v arg.argument1
pushglb.v global.msgno
push.v arg.argument0
call.i gml_Script_scr_anyface(argc=3)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_anyface_next
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_anyface_next
popz.v

:[end]