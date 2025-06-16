.localvar 2 arguments

:[0]
b [7]

> gml_Script_scr_lrecoitem_ch1 (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i gml_Script_scr_lrecover_ch1(argc=1)
popz.v
push.i 103253763
setowner.e
push.v self.recovered
pushi.e -5
pushi.e 8
pop.v.v [array]self.item
push.v self.maxedout
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 9999
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.item

:[3]
push.i 103253843
setowner.e
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.msg
push.s "scr_lrecoitem_slash_scr_lrecoitem_gml_11_0"@12393
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
add.v.v
pop.i.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.item
pushi.e 999
cmp.i.v LT
bf [5]

:[4]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.item
call.i string(argc=1)
push.s "scr_lrecoitem_slash_scr_lrecoitem_gml_14_0"@386
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
add.v.v
pop.i.v [array]self.msg
b [6]

:[5]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.msg
push.s "scr_lrecoitem_slash_scr_lrecoitem_gml_16_0"@390
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
add.v.v
pop.i.v [array]self.msg

:[6]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
push.i [function]gml_Script_scr_writetext_ch1
conv.i.v
call.i script_execute(argc=5)
popz.v
exit.i

:[7]
push.i [function]gml_Script_scr_lrecoitem_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_lrecoitem_ch1
popz.v

:[end]