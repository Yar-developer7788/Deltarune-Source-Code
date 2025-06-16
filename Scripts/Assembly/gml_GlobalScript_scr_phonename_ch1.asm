.localvar 2 arguments

:[0]
b [15]

> gml_Script_scr_phonename_ch1 (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [4]

:[3]
push.i 102205263
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phonename
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [14]

:[6]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.phone
pop.v.v self.itemid
push.v self.itemid
dup.v 0
pushi.e 201
cmp.i.v EQ
bt [9]

:[7]
dup.v 0
pushi.e 202
cmp.i.v EQ
bt [10]

:[8]
b [13]

:[9]
push.i 102205263
setowner.e
push.s "scr_phonename_slash_scr_phonename_gml_17_0"@357
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phonename
b [13]

:[10]
push.i 102205263
setowner.e
push.s "scr_phonename_slash_scr_phonename_gml_20_0"@12349
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phonename
pushi.e -5
pushi.e 274
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
bf [12]

:[11]
push.s "scr_phonename_slash_scr_phonename_gml_21_0"@361
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phonename

:[12]
b [13]

:[13]
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[14]
exit.i

:[15]
push.i [function]gml_Script_scr_phonename_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_phonename_ch1
popz.v

:[end]