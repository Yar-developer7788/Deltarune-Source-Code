.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_ralface (locals=0, argc=2)
:[1]
push.i 35358547
setowner.e
push.s "scr_ralface_slash_scr_ralface_gml_1_0"@9338
conv.s.v
push.v arg.argument1
call.i string(argc=1)
push.s "\\TX \\F0 \\E~1 \\FR \\TR %"@9339
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.msg
exit.i

:[2]
push.i [function]gml_Script_scr_ralface
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_ralface
popz.v

:[end]