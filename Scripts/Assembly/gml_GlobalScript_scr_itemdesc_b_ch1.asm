.localvar 2 arguments

:[0]
b [12]

> gml_Script_scr_itemdesc_b_ch1 (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [11]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.item
pop.v.v self.itemid
push.v self.itemid
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [7]

:[4]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [8]

:[5]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [9]

:[6]
b [10]

:[7]
push.i 59803833
setowner.e
push.s "---"@8074
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdescb
b [10]

:[8]
push.i 59803833
setowner.e
push.s "scr_itemdesc_b_slash_scr_itemdesc_b_gml_11_0"@13321
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdescb
b [10]

:[9]
push.i 59803833
setowner.e
push.s "scr_itemdesc_b_slash_scr_itemdesc_b_gml_14_0"@13322
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdescb
b [10]

:[10]
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[11]
exit.i

:[12]
push.i [function]gml_Script_scr_itemdesc_b_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemdesc_b_ch1
popz.v

:[end]