.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_feetx_me (locals=0, argc=1)
:[1]
push.v arg.argument0
push.v self.id
call.i gml_Script_scr_feetx(argc=2)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_feetx_me
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_feetx_me
popz.v

:[end]