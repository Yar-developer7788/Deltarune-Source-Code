.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_noface (locals=0, argc=1)
:[1]
push.i 36276051
setowner.e
push.s "scr_noface_slash_scr_noface_gml_1_0"@9361
conv.s.v
push.s "\\TX \\F0 \\T0 %"@9362
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.msg
exit.i

:[2]
push.i [function]gml_Script_scr_noface
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_noface
popz.v

:[end]