.localvar 2 arguments

:[0]
b [9]

> gml_Script_scr_itemdesc_oldtype_ch1 (locals=0, argc=1)
:[1]
push.i 111118163
setowner.e
push.s "scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_2_0"@6576
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [5]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [6]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [7]

:[4]
b [8]

:[5]
push.s "scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_6_0"@6578
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [8]

:[6]
push.s "scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_9_0"@6580
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [8]

:[7]
push.s "scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_12_0"@6582
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [8]

:[8]
popz.v
exit.i

:[9]
push.i [function]gml_Script_scr_itemdesc_oldtype_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemdesc_oldtype_ch1
popz.v

:[end]