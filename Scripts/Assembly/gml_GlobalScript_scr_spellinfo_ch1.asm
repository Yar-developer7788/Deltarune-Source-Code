.localvar 2 arguments

:[0]
b [21]

> gml_Script_scr_spellinfo_ch1 (locals=0, argc=1)
:[1]
pushi.e -1
pop.v.i self.cost
pushi.e 1
pop.v.i self.spelltarget
push.s " "@353
pop.v.s self.spellname
push.s " "@353
pop.v.s self.spellnameb
push.s " "@353
pop.v.s self.spelldescb
push.s " "@353
pop.v.s self.spelldesc
pushi.e 0
pop.v.i self.spellanim
pushi.e 0
pop.v.i self.spellusable
push.s " "@353
pop.v.s self.spelltext
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [10]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [11]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [12]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [13]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [14]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [17]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [18]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [19]

:[9]
b [20]

:[10]
push.s " "@353
pop.v.s self.spellname
push.s " "@353
pop.v.s self.spellnameb
pushi.e 0
pop.v.i self.spelltarget
pushi.e -1
pop.v.i self.cost
push.s "scr_spellinfo_slash_scr_spellinfo_gml_18_0"@7823
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spelldescb
b [20]

:[11]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_21_0"@7825
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_22_0"@7827
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_23_0"@7829
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_24_0"@7831
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spelldesc
pushi.e 2
pop.v.i self.spelltarget
pushi.e 125
pop.v.i self.cost
pushi.e 0
pop.v.i self.spellusable
b [20]

:[12]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_31_0"@7833
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_32_0"@7835
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_33_0"@7836
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_34_0"@7838
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spelldesc
pushi.e 1
pop.v.i self.spelltarget
pushi.e 80
pop.v.i self.cost
pushi.e 0
pop.v.i self.usable
pushi.e 1
pop.v.i self.spellusable
b [20]

:[13]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_42_0"@7840
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_43_0"@7842
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_44_0"@7843
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_45_0"@7845
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spelldesc
pushi.e 2
pop.v.i self.spelltarget
pushi.e 40
pop.v.i self.cost
pushi.e 0
pop.v.i self.usable
pushi.e 0
pop.v.i self.spellusable
b [20]

:[14]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_52_0"@7847
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_53_0"@7849
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_54_0"@7850
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_55_0"@7851
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spelldesc
pushi.e 2
pop.v.i self.spelltarget
pushi.e 125
pop.v.i self.cost
pushi.e -5
pushi.e 2
push.v [array]self.charweapon
pushi.e 7
cmp.i.v EQ
bf [16]

:[15]
pushi.e 100
pop.v.i self.cost

:[16]
pushi.e 0
pop.v.i self.spellusable
b [20]

:[17]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_64_0"@7852
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_65_0"@7854
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_66_0"@7855
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spelldescb
push.s " "@353
pop.v.s self.spelldesc
pushi.e 2
pop.v.i self.spelltarget
pushi.e 0
pop.v.i self.cost
pushi.e 0
pop.v.i self.spellusable
b [20]

:[18]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_75_0"@7858
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_76_0"@7860
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_77_0"@7861
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spelldescb
push.s " "@353
pop.v.s self.spelldesc
pushi.e 0
pop.v.i self.spelltarget
pushi.e 0
pop.v.i self.cost
pushi.e 0
pop.v.i self.spellusable
b [20]

:[19]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_86_0"@7864
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_87_0"@7866
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_88_0"@7867
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_89_0"@7869
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.spelldesc
pushi.e 0
pop.v.i self.spelltarget
pushi.e 0
pop.v.i self.cost
pushi.e 0
pop.v.i self.spellusable
b [20]

:[20]
popz.v
exit.i

:[21]
push.i [function]gml_Script_scr_spellinfo_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_spellinfo_ch1
popz.v

:[end]