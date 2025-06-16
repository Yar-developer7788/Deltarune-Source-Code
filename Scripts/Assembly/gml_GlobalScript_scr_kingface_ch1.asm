.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_kingface_ch1 (locals=0, argc=2)
:[1]
pushglb.v global.plot
pushi.e 235
cmp.i.v GTE
bf [3]

:[2]
push.i 121997139
setowner.e
push.v arg.argument1
call.i string(argc=1)
push.s "scr_kingface_slash_scr_kingface_gml_3_0"@9356
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.msg
b [4]

:[3]
push.i 121997139
setowner.e
push.v arg.argument1
call.i string(argc=1)
push.s "scr_kingface_slash_scr_kingface_gml_7_0"@9358
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.msg

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_kingface_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_kingface_ch1
popz.v

:[end]