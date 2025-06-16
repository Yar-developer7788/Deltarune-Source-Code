.localvar 2 arguments

:[0]
b [100]

> gml_Script_scr_spelltext_ch1 (locals=0, argc=2)
:[1]
push.v arg.argument0
pop.v.v self.spell
push.v arg.argument1
pop.v.v self.caster
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.chartarget
pop.v.v self.star
push.s " "@353
pop.v.s self.spelltext
push.v self.spell
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [25]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [26]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [27]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [28]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [34]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [35]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [36]

:[8]
dup.v 0
pushi.e 100
cmp.i.v EQ
bt [37]

:[9]
dup.v 0
pushi.e 201
cmp.i.v EQ
bt [44]

:[10]
dup.v 0
pushi.e 202
cmp.i.v EQ
bt [45]

:[11]
dup.v 0
pushi.e 203
cmp.i.v EQ
bt [46]

:[12]
dup.v 0
pushi.e 204
cmp.i.v EQ
bt [60]

:[13]
dup.v 0
pushi.e 205
cmp.i.v EQ
bt [88]

:[14]
dup.v 0
pushi.e 206
cmp.i.v EQ
bt [89]

:[15]
dup.v 0
pushi.e 207
cmp.i.v EQ
bt [90]

:[16]
dup.v 0
pushi.e 208
cmp.i.v EQ
bt [91]

:[17]
dup.v 0
pushi.e 209
cmp.i.v EQ
bt [92]

:[18]
dup.v 0
pushi.e 210
cmp.i.v EQ
bt [93]

:[19]
dup.v 0
pushi.e 211
cmp.i.v EQ
bt [94]

:[20]
dup.v 0
pushi.e 212
cmp.i.v EQ
bt [95]

:[21]
dup.v 0
pushi.e 213
cmp.i.v EQ
bt [96]

:[22]
dup.v 0
pushi.e 214
cmp.i.v EQ
bt [97]

:[23]
dup.v 0
pushi.e 215
cmp.i.v EQ
bt [98]

:[24]
b [99]

:[25]
b [99]

:[26]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_14_0"@7929
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[27]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_18_0"@7932
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[28]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_23_0"@7934
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_retarget_spell_ch1(argc=0)
popz.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [33]

:[29]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
b [33]

:[31]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_33_0"@7936
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [33]

:[32]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_36_0"@7938
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[33]
b [99]

:[34]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_43_0"@7940
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[35]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_47_0"@7942
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[36]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_51_0"@7944
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[37]
pushi.e 0
pop.v.i self.cancelattack
push.i 118851411
setowner.e
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monstername
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_58_0"@7954
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_retarget_spell_ch1(argc=0)
popz.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [39]

:[38]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monstername
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_62_0"@7956
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [41]

:[39]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monstername
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_66_0"@7957
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monstername
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_69_0"@7959
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_spelltext_slash_scr_spelltext_gml_70_0"@7961
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[41]
push.v self.cancelattack
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_73_0"@7969
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[43]
b [99]

:[44]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_78_0"@7971
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[45]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_82_0"@13264
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[46]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_86_0"@7975
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_spelltext_slash_scr_spelltext_gml_87_0"@7977
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 0
pop.v.i self.spec_shard
pushi.e 0
pop.v.i self._en

:[47]
push.v self._en
pushi.e 3
cmp.i.v LT
bf [52]

:[48]
push.i 59476526
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self._en
conv.v.i
pop.v.v [array]self.shardtest
pushi.e -5
push.v self._en
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [51]

:[49]
pushi.e -5
push.v self._en
conv.v.i
push.v [array]self.monstertype
pushi.e 5
cmp.i.v EQ
bf [51]

:[50]
pushi.e 1
pop.v.i self.spec_shard
pushi.e 1
conv.i.v
pushi.e -1
push.v self._en
conv.v.i
pop.v.v [array]self.shardtest
push.i 118851686
setowner.e
pushi.e 200
conv.i.v
pushi.e -5
push.v self._en
conv.v.i
pop.v.v [array]self.mercymod

:[51]
push.v self._en
pushi.e 1
add.i.v
pop.v.v self._en
b [47]

:[52]
push.v self.spec_shard
pushi.e 0
cmp.i.v GT
bf [59]

:[53]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
push.v arg.argument1
conv.v.i
pushaf.e
call.i gml_Script_scr_itemshift_ch1(argc=2)
popz.v
push.i 118851411
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "scr_spelltext_slash_scr_spelltext_gml_109_0"@7983
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 0
pop.v.i self._j

:[54]
push.v self._j
pushi.e 3
cmp.i.v LT
bf [58]

:[55]
pushi.e -1
push.v self._j
conv.v.i
push.v [array]self.shardtest
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.msg
pushi.e -5
push.v self._j
conv.v.i
push.v [array]self.monstername
push.s "scr_spelltext_slash_scr_spelltext_gml_112_0"@13265
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
add.v.v
pop.i.v [array]self.msg

:[57]
push.v self._j
pushi.e 1
add.i.v
pop.v.v self._j
b [54]

:[58]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.msg
push.s "/"@4448
add.s.v
pop.i.v [array]self.msg

:[59]
b [99]

:[60]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_122_0"@7989
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_spelltext_slash_scr_spelltext_gml_123_0"@7991
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 0
pop.v.i self.spec_shard
pushi.e 0
pop.v.i self._en

:[61]
push.v self._en
pushi.e 3
cmp.i.v LT
bf [76]

:[62]
push.i 59476526
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self._en
conv.v.i
pop.v.v [array]self.shardtest
pushi.e -5
push.v self._en
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [75]

:[63]
pushi.e -5
push.v self._en
conv.v.i
push.v [array]self.monstertype
pushi.e 5
cmp.i.v EQ
bf [65]

:[64]
pushi.e 1
pop.v.i self.spec_shard
pushi.e 1
conv.i.v
pushi.e -1
push.v self._en
conv.v.i
pop.v.v [array]self.shardtest
push.i 118851906
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self._en
conv.v.i
pop.v.v [array]self.monsterstatus
push.i 118852144
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_135_0"@13266
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self._en
conv.v.i
pop.v.v [array]self.monstercomment

:[65]
pushi.e -5
push.v self._en
conv.v.i
push.v [array]self.monstertype
pushi.e 6
cmp.i.v EQ
bf [67]

:[66]
pushi.e 1
pop.v.i self.spec_shard
push.i 59476526
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
push.v self._en
conv.v.i
pop.v.v [array]self.shardtest

:[67]
pushi.e -5
push.v self._en
conv.v.i
push.v [array]self.monstertype
pushi.e 7
cmp.i.v EQ
bt [69]

:[68]
pushi.e -5
push.v self._en
conv.v.i
push.v [array]self.monstertype
pushi.e 16
cmp.i.v EQ
b [70]

:[69]
push.e 1

:[70]
bf [75]

:[71]
pushi.e 1
pop.v.i self.spec_shard
pushi.e 3
conv.i.v
pushi.e -1
push.v self._en
conv.v.i
pop.v.v [array]self.shardtest
pushi.e -5
push.v self._en
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [74]

:[72]
pushi.e 1
pop.v.i self.battlecancel
push.v self.manual
pushi.e 0
cmp.i.v EQ
bf [74]

:[73]
pushi.e 1
pop.v.i self.manual
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v

:[74]
popenv [72]

:[75]
push.v self._en
pushi.e 1
add.i.v
pop.v.v self._en
b [61]

:[76]
push.v self.spec_shard
pushi.e 0
cmp.i.v GT
bf [87]

:[77]
push.i 118851411
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 0
pop.v.i self._j

:[78]
push.v self._j
pushi.e 3
cmp.i.v LT
bf [86]

:[79]
pushi.e -1
push.v self._j
conv.v.i
push.v [array]self.shardtest
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.msg
pushi.e -5
push.v self._j
conv.v.i
push.v [array]self.monstername
push.s "scr_spelltext_slash_scr_spelltext_gml_168_0"@13267
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
add.v.v
pop.i.v [array]self.msg

:[81]
pushi.e -1
push.v self._j
conv.v.i
push.v [array]self.shardtest
pushi.e 2
cmp.i.v EQ
bf [83]

:[82]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.msg
pushi.e -5
push.v self._j
conv.v.i
push.v [array]self.monstername
push.s "scr_spelltext_slash_scr_spelltext_gml_169_0"@13268
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
add.v.v
pop.i.v [array]self.msg

:[83]
pushi.e -1
push.v self._j
conv.v.i
push.v [array]self.shardtest
pushi.e 3
cmp.i.v EQ
bf [85]

:[84]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.msg
pushi.e -5
push.v self._j
conv.v.i
push.v [array]self.monstername
push.s "scr_spelltext_slash_scr_spelltext_gml_170_0"@13269
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
add.v.v
pop.i.v [array]self.msg

:[85]
push.v self._j
pushi.e 1
add.i.v
pop.v.v self._j
b [78]

:[86]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.msg
push.s "scr_spelltext_slash_scr_spelltext_gml_172_0"@13270
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
add.v.v
pop.i.v [array]self.msg

:[87]
b [99]

:[88]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_179_0"@8004
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[89]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_183_0"@8006
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[90]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_187_0"@8008
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[91]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_191_0"@8010
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[92]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_194_0"@8012
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[93]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_197_0"@8014
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[94]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_200_0"@8016
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[95]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_203_0"@8018
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[96]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_206_0"@8020
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[97]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_209_0"@8022
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[98]
push.i 118851411
setowner.e
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_212_0"@13271
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [99]

:[99]
popz.v
exit.i

:[100]
push.i [function]gml_Script_scr_spelltext_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_spelltext_ch1
popz.v

:[end]