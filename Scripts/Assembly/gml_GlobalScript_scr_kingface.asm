.localvar 2 arguments

:[0]
b [11]

> gml_Script_scr_kingface (locals=0, argc=2)
:[1]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushglb.v global.plot
pushi.e 235
cmp.i.v GTE
b [4]

:[3]
push.e 0

:[4]
bt [6]

:[5]
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
push.i 36144979
setowner.e
push.s "scr_kingface_slash_scr_kingface_gml_3_0"@9356
conv.s.v
push.v arg.argument1
call.i string(argc=1)
push.s "\\TX \\F0 \\E~1 \\FK \\TK %"@9357
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.msg
b [10]

:[9]
push.i 36144979
setowner.e
push.s "scr_kingface_slash_scr_kingface_gml_7_0"@9358
conv.s.v
push.v arg.argument1
call.i string(argc=1)
push.s "\\TX \\F0 \\E~1 \\TK %"@9359
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.msg

:[10]
exit.i

:[11]
push.i [function]gml_Script_scr_kingface
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_kingface
popz.v

:[end]