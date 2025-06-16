.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_windowcaption_ch1 (locals=0, argc=1)
:[1]
pushi.e -5
pushi.e 10
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.s "scr_windowcaption_slash_scr_windowcaption_gml_1_0"@12917
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i window_set_caption(argc=1)
popz.v
b [4]

:[3]
push.v arg.argument0
call.i window_set_caption(argc=1)
popz.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_windowcaption_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_windowcaption_ch1
popz.v

:[end]