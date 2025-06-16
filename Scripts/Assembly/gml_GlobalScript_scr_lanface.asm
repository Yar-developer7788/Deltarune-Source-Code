.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_lanface (locals=0, argc=2)
:[1]
push.i 36013907
setowner.e
push.s "scr_lanface_slash_scr_lanface_gml_1_0"@9353
conv.s.v
push.v arg.argument1
call.i string(argc=1)
push.s "\\TX \\F0 \\E~1 \\FL \\TL %"@9354
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.msg
exit.i

:[2]
push.i [function]gml_Script_scr_lanface
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_lanface
popz.v

:[end]