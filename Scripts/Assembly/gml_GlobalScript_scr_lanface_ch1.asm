.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_lanface_ch1 (locals=0, argc=2)
:[1]
push.i 121866067
setowner.e
push.v arg.argument1
call.i string(argc=1)
push.s "scr_lanface_slash_scr_lanface_gml_1_0"@9353
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.msg
exit.i

:[2]
push.i [function]gml_Script_scr_lanface_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_lanface_ch1
popz.v

:[end]