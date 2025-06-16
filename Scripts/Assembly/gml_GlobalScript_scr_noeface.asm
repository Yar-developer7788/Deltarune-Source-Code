.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_noeface (locals=0, argc=2)
:[1]
push.i 35489619
setowner.e
push.s "scr_noeface_slash_scr_noeface_gml_1_0"@9341
conv.s.v
push.v arg.argument1
call.i string(argc=1)
push.s "\\TX \\F0 \\E~1 \\FN \\TN %"@9342
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.msg
exit.i

:[2]
push.i [function]gml_Script_scr_noeface
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_noeface
popz.v

:[end]