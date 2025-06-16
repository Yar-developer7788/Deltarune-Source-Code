.localvar 2 arguments

:[0]
b [148]

> gml_Script_scr_spelltext (locals=0, argc=2)
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
bt [47]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [48]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [49]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [50]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [56]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [57]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [58]

:[8]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [59]

:[9]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [60]

:[10]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [61]

:[11]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [62]

:[12]
dup.v 0
pushi.e 100
cmp.i.v EQ
bt [63]

:[13]
dup.v 0
pushi.e 201
cmp.i.v EQ
bt [74]

:[14]
dup.v 0
pushi.e 202
cmp.i.v EQ
bt [75]

:[15]
dup.v 0
pushi.e 203
cmp.i.v EQ
bt [76]

:[16]
dup.v 0
pushi.e 204
cmp.i.v EQ
bt [90]

:[17]
dup.v 0
pushi.e 205
cmp.i.v EQ
bt [118]

:[18]
dup.v 0
pushi.e 206
cmp.i.v EQ
bt [119]

:[19]
dup.v 0
pushi.e 207
cmp.i.v EQ
bt [120]

:[20]
dup.v 0
pushi.e 208
cmp.i.v EQ
bt [121]

:[21]
dup.v 0
pushi.e 209
cmp.i.v EQ
bt [122]

:[22]
dup.v 0
pushi.e 210
cmp.i.v EQ
bt [123]

:[23]
dup.v 0
pushi.e 211
cmp.i.v EQ
bt [124]

:[24]
dup.v 0
pushi.e 212
cmp.i.v EQ
bt [125]

:[25]
dup.v 0
pushi.e 213
cmp.i.v EQ
bt [126]

:[26]
dup.v 0
pushi.e 214
cmp.i.v EQ
bt [127]

:[27]
dup.v 0
pushi.e 215
cmp.i.v EQ
bt [128]

:[28]
dup.v 0
pushi.e 216
cmp.i.v EQ
bt [129]

:[29]
dup.v 0
pushi.e 217
cmp.i.v EQ
bt [130]

:[30]
dup.v 0
pushi.e 218
cmp.i.v EQ
bt [131]

:[31]
dup.v 0
pushi.e 219
cmp.i.v EQ
bt [132]

:[32]
dup.v 0
pushi.e 220
cmp.i.v EQ
bt [133]

:[33]
dup.v 0
pushi.e 221
cmp.i.v EQ
bt [134]

:[34]
dup.v 0
pushi.e 222
cmp.i.v EQ
bt [135]

:[35]
dup.v 0
pushi.e 223
cmp.i.v EQ
bt [136]

:[36]
dup.v 0
pushi.e 224
cmp.i.v EQ
bt [137]

:[37]
dup.v 0
pushi.e 225
cmp.i.v EQ
bt [138]

:[38]
dup.v 0
pushi.e 226
cmp.i.v EQ
bt [139]

:[39]
dup.v 0
pushi.e 227
cmp.i.v EQ
bt [140]

:[40]
dup.v 0
pushi.e 228
cmp.i.v EQ
bt [141]

:[41]
dup.v 0
pushi.e 229
cmp.i.v EQ
bt [142]

:[42]
dup.v 0
pushi.e 230
cmp.i.v EQ
bt [143]

:[43]
dup.v 0
pushi.e 231
cmp.i.v EQ
bt [144]

:[44]
dup.v 0
pushi.e 232
cmp.i.v EQ
bt [145]

:[45]
dup.v 0
pushi.e 233
cmp.i.v EQ
bt [146]

:[46]
b [147]

:[47]
b [147]

:[48]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_14_0"@7929
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 cast RUDE BUSTER!/%"@7931
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[49]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_18_0"@7932
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 cast HEAL PRAYER!/%"@7933
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[50]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_23_0"@7934
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 cast PACIFY!/%"@7935
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_retarget_spell(argc=0)
popz.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [55]

:[51]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
b [55]

:[53]
push.s "scr_spelltext_slash_scr_spelltext_gml_33_0"@7936
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 cast PACIFY^1!&* But the enemy wasn't \\cBTIRED\\cW.../%"@7937
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [55]

:[54]
push.s "scr_spelltext_slash_scr_spelltext_gml_36_0"@7938
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 cast PACIFY^1!&* But the foe wasn't \\cBTIRED\\cW... try \\cYSPARING\\cW!/%"@7939
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[55]
b [147]

:[56]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_43_0"@7940
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used RUDE BUSTER!/%"@7941
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[57]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_47_0"@7942
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used RED BUSTER!/%"@7943
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[58]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_51_0"@7944
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 cast DUAL HEAL!/%"@7945
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[59]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_55_0"@7946
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 cast SLEEPMIST!/%"@7947
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[60]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_59_0"@7948
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 cast ICESHOCK!/%"@7949
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[61]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_63_0"@7950
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 cast SNOWGRAVE!/%"@7951
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[62]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_67_0"@7952
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 cast ULTIMATEHEAL!/%"@7953
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[63]
pushi.e 0
pop.v.i self.cancelattack
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_58_0"@7954
conv.s.v
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
push.s "* ~1 spared ~2!/%"@7955
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_retarget_spell(argc=0)
popz.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [65]

:[64]
push.s "scr_spelltext_slash_scr_spelltext_gml_62_0"@7956
conv.s.v
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
push.s "* ~1 spared ~2!/%"@7955
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [71]

:[65]
push.s "scr_spelltext_slash_scr_spelltext_gml_66_0"@7957
conv.s.v
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
push.s "* ~1 spared ~2^2!&* But its name wasn't \\cYYELLOW\\cW.../%"@7958
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [71]

:[66]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [68]

:[67]
push.s "scr_spelltext_slash_scr_spelltext_gml_69_0"@7959
conv.s.v
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
push.s "* ~1 spared ~2^2!&* But its name wasn't \\cYYELLOW\\cW.../"@7960
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_spelltext_slash_scr_spelltext_gml_70_0"@7961
conv.s.v
push.s "* (Try using Ralsei's \\cBPACIFY\\cW!)/%"@7962
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [71]

:[68]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [70]

:[69]
push.s "scr_spelltext_slash_scr_spelltext_gml_94_0"@7963
conv.s.v
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
push.s "* ~1 spared ~2^2!&* But its name wasn't \\cYYELLOW\\cW.../"@7960
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=5)
popz.v
push.s "scr_spelltext_slash_scr_spelltext_gml_95_0"@7964
conv.s.v
push.s "* (Try using Noelle's \\cBSLEEPMIST\\cW!)/%"@7965
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [71]

:[70]
push.s "scr_spelltext_slash_scr_spelltext_gml_99_0"@7966
conv.s.v
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
push.s "* ~1 spared ~2^2!&* But its name wasn't \\cYYELLOW\\cW.../"@7960
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=5)
popz.v
push.s "scr_spelltext_slash_scr_spelltext_gml_100_0_b"@7967
conv.s.v
push.s "* (Try using \\cBACTs\\cW!)/%"@7968
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[71]
push.v self.cancelattack
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
push.s "scr_spelltext_slash_scr_spelltext_gml_73_0"@7969
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 spared!/%"@7970
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[73]
b [147]

:[74]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_78_0"@7971
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the DARK CANDY!/%"@7972
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[75]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_100_0"@7973
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the REVIVEMINT!/%"@7974
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[76]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_86_0"@7975
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the GLOWSHARD!/"@7976
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_spelltext_slash_scr_spelltext_gml_87_0"@7977
conv.s.v
push.s "* But nothing happened.../%"@7978
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 0
pop.v.i self.spec_shard
pushi.e 0
pop.v.i self._en

:[77]
push.v self._en
pushi.e 3
cmp.i.v LT
bf [82]

:[78]
push.i 14387758
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
bf [81]

:[79]
pushi.e -5
push.v self._en
conv.v.i
push.v [array]self.monstertype
pushi.e 5
cmp.i.v EQ
bf [81]

:[80]
pushi.e 1
pop.v.i self.spec_shard
pushi.e 1
conv.i.v
pushi.e -1
push.v self._en
conv.v.i
pop.v.v [array]self.shardtest
push.i 28674150
setowner.e
pushi.e 200
conv.i.v
pushi.e -5
push.v self._en
conv.v.i
pop.v.v [array]self.mercymod

:[81]
push.v self._en
pushi.e 1
add.i.v
pop.v.v self._en
b [77]

:[82]
push.v self.spec_shard
pushi.e 0
cmp.i.v GT
bf [89]

:[83]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
push.v arg.argument1
conv.v.i
pushaf.e
call.i gml_Script_scr_itemshift(argc=2)
popz.v
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_126_0"@7982
conv.s.v
push.s ""@157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "scr_spelltext_slash_scr_spelltext_gml_109_0"@7983
conv.s.v
push.s "* The GLOWSHARD disappeared!/%"@7984
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 0
pop.v.i self._j

:[84]
push.v self._j
pushi.e 3
cmp.i.v LT
bf [88]

:[85]
pushi.e -1
push.v self._j
conv.v.i
push.v [array]self.shardtest
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.msg
push.s "* "@7986
pushi.e -5
push.v self._j
conv.v.i
push.v [array]self.monstername
add.v.s
push.s "scr_spelltext_slash_scr_spelltext_gml_143_0"@7987
conv.s.v
push.s " became enraptured!&"@7988
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
add.v.v
add.v.v
pop.i.v [array]self.msg

:[87]
push.v self._j
pushi.e 1
add.i.v
pop.v.v self._j
b [84]

:[88]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.msg
push.s "/"@4448
add.s.v
pop.i.v [array]self.msg

:[89]
b [147]

:[90]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_122_0"@7989
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 read the MANUAL!/"@7990
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_spelltext_slash_scr_spelltext_gml_123_0"@7991
conv.s.v
push.s "* But nothing happened.../%"@7978
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 0
pop.v.i self.spec_shard
pushi.e 0
pop.v.i self._en

:[91]
push.v self._en
pushi.e 3
cmp.i.v LT
bf [106]

:[92]
push.i 14387758
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
bf [105]

:[93]
pushi.e -5
push.v self._en
conv.v.i
push.v [array]self.monstertype
pushi.e 5
cmp.i.v EQ
bf [95]

:[94]
pushi.e 1
pop.v.i self.spec_shard
pushi.e 1
conv.i.v
pushi.e -1
push.v self._en
conv.v.i
pop.v.v [array]self.shardtest
push.i 28674370
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self._en
conv.v.i
pop.v.v [array]self.monsterstatus
push.i 28674608
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_166_0"@7992
conv.s.v
push.s "(Tired)"@7993
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self._en
conv.v.i
pop.v.v [array]self.monstercomment

:[95]
pushi.e -5
push.v self._en
conv.v.i
push.v [array]self.monstertype
pushi.e 6
cmp.i.v EQ
bf [97]

:[96]
pushi.e 1
pop.v.i self.spec_shard
push.i 14387758
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
push.v self._en
conv.v.i
pop.v.v [array]self.shardtest

:[97]
pushi.e -5
push.v self._en
conv.v.i
push.v [array]self.monstertype
pushi.e 7
cmp.i.v EQ
bt [99]

:[98]
pushi.e -5
push.v self._en
conv.v.i
push.v [array]self.monstertype
pushi.e 16
cmp.i.v EQ
b [100]

:[99]
push.e 1

:[100]
bf [105]

:[101]
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
pushenv [104]

:[102]
pushi.e 1
pop.v.i self.battlecancel
push.v self.manual
pushi.e 0
cmp.i.v EQ
bf [104]

:[103]
pushi.e 1
pop.v.i self.manual
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[104]
popenv [102]

:[105]
push.v self._en
pushi.e 1
add.i.v
pop.v.v self._en
b [91]

:[106]
push.v self.spec_shard
pushi.e 0
cmp.i.v GT
bf [117]

:[107]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_182_0"@7997
conv.s.v
push.s ""@157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 0
pop.v.i self._j

:[108]
push.v self._j
pushi.e 3
cmp.i.v LT
bf [116]

:[109]
pushi.e -1
push.v self._j
conv.v.i
push.v [array]self.shardtest
pushi.e 1
cmp.i.v EQ
bf [111]

:[110]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.msg
push.s "* "@7986
pushi.e -5
push.v self._j
conv.v.i
push.v [array]self.monstername
add.v.s
push.s "scr_spelltext_slash_scr_spelltext_gml_199_0"@7998
conv.s.v
push.s " was \\cBbored to tears\\cW!&"@7999
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
add.v.v
add.v.v
pop.i.v [array]self.msg

:[111]
pushi.e -1
push.v self._j
conv.v.i
push.v [array]self.shardtest
pushi.e 2
cmp.i.v EQ
bf [113]

:[112]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.msg
push.s "* "@7986
pushi.e -5
push.v self._j
conv.v.i
push.v [array]self.monstername
add.v.s
push.s "scr_spelltext_slash_scr_spelltext_gml_200_0_b"@8000
conv.s.v
push.s " listened politely!&"@8001
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
add.v.v
add.v.v
pop.i.v [array]self.msg

:[113]
pushi.e -1
push.v self._j
conv.v.i
push.v [array]self.shardtest
pushi.e 3
cmp.i.v EQ
bf [115]

:[114]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.msg
push.s "* "@7986
pushi.e -5
push.v self._j
conv.v.i
push.v [array]self.monstername
add.v.s
push.s "scr_spelltext_slash_scr_spelltext_gml_201_0"@8002
conv.s.v
push.s " became sentimental!&"@8003
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
add.v.v
add.v.v
pop.i.v [array]self.msg

:[115]
push.v self._j
pushi.e 1
add.i.v
pop.v.v self._j
b [108]

:[116]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.msg
push.s "/%"@4449
add.s.v
pop.i.v [array]self.msg

:[117]
b [147]

:[118]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_179_0"@8004
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the BROKEN CAKE!/%"@8005
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[119]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_183_0"@8006
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the TOPCAKE!/%"@8007
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[120]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_187_0"@8008
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the SPINCAKE!/%"@8009
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[121]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_191_0"@8010
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the DARKBURGER!/%"@8011
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[122]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_194_0"@8012
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the LANCERCOOKIE!/%"@8013
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[123]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_197_0"@8014
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the GIGASALAD!/%"@8015
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[124]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_200_0"@8016
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the CLUBS SANDWICH!/%"@8017
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[125]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_203_0"@8018
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the HEARTS DONUT!/%"@8019
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[126]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_206_0"@8020
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the CHOCO DIAMOND!/%"@8021
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[127]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_209_0"@8022
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the FAV SANDWICH!/%"@8023
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[128]
push.i 28673875
setowner.e
push.s "scr_spelltext_slash_scr_spelltext_gml_230_0"@8024
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the ROUXLS ROUX!/%"@8025
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [147]

:[129]
push.s "scr_spelltext_slash_scr_spelltext_gml_233_0"@8026
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the CD BAGEL!/%"@8027
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[130]
push.s "scr_spelltext_slash_scr_spelltext_gml_236_0"@8028
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the CLOTHESDOLL!/"@8029
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
push.s "scr_spelltext_slash_scr_spelltext_gml_237_0"@8030
conv.s.v
push.s "* ... but nothing happened!/%"@8031
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [147]

:[131]
push.s "scr_spelltext_slash_scr_spelltext_gml_240_0"@8032
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the KRIS TEA!/%"@8033
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[132]
push.s "scr_spelltext_slash_scr_spelltext_gml_243_0"@8034
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the NOELLE TEA!/%"@8035
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[133]
push.s "scr_spelltext_slash_scr_spelltext_gml_246_0"@8036
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the RALSEI TEA!/%"@8037
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[134]
push.s "scr_spelltext_slash_scr_spelltext_gml_249_0"@8038
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the SUSIE TEA!/%"@8039
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[135]
push.s "scr_spelltext_slash_scr_spelltext_gml_252_0"@8040
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the DD-BURGER!/%"@8041
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[136]
push.s "scr_spelltext_slash_scr_spelltext_gml_255_0"@8042
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the LIGHTCANDY!/%"@8043
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[137]
push.s "scr_spelltext_slash_scr_spelltext_gml_258_0"@8044
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the BUTJUICE!/%"@8045
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[138]
push.s "scr_spelltext_slash_scr_spelltext_gml_261_0"@8046
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the SPAGHETTICODE!/%"@8047
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[139]
push.s "scr_spelltext_slash_scr_spelltext_gml_264_0"@8048
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the JAVACOOKIE!/%"@8049
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[140]
push.s "scr_spelltext_slash_scr_spelltext_gml_267_0"@8050
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the TENSIONBIT!&* Tension raised up earlier./%"@8051
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[141]
push.s "scr_spelltext_slash_scr_spelltext_gml_270_0"@8052
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the TENSIONGEM!/%"@8053
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[142]
push.s "scr_spelltext_slash_scr_spelltext_gml_273_0"@8054
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the TENSIONMAX!/%"@8055
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[143]
push.s "scr_spelltext_slash_scr_spelltext_gml_276_0"@8056
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the REVIVEDUST!/%"@8057
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[144]
push.s "scr_spelltext_slash_scr_spelltext_gml_279_0"@8058
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 used the REVIVEBRIGHT!/%"@8059
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[145]
push.s "scr_spelltext_slash_scr_spelltext_gml_282_0"@8060
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 administered S.POISON!/%"@8061
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[146]
push.s "scr_spelltext_slash_scr_spelltext_gml_298_0"@8062
conv.s.v
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
push.s "* ~1 admired DOGDOLLAR!/%"@8063
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [147]

:[147]
popz.v
exit.i

:[148]
push.i [function]gml_Script_scr_spelltext
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_spelltext
popz.v

:[end]