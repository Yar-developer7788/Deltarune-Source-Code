.localvar 2 arguments

:[0]
b [119]

> gml_Script_scr_itemuse_ch1 (locals=0, argc=1)
:[1]
push.v arg.argument0
pop.v.v self.w
pushi.e 0
pop.v.i self.usable
pushglb.v global.charselect
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pop.v.v self._gc

:[3]
pushi.e -1
pop.v.i self.suspos
pushi.e -1
pop.v.i self.ralpos
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [10]

:[5]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.v self.i
pop.v.v self.suspos

:[7]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
push.v self.i
pop.v.v self.ralpos

:[9]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[10]
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [30]

:[11]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [31]

:[12]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [38]

:[13]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [45]

:[14]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [48]

:[15]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [49]

:[16]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [54]

:[17]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [59]

:[18]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [64]

:[19]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [69]

:[20]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [74]

:[21]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [79]

:[22]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [86]

:[23]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [93]

:[24]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [98]

:[25]
dup.v 0
pushi.e 300
cmp.i.v EQ
bt [103]

:[26]
dup.v 0
pushi.e 301
cmp.i.v EQ
bt [104]

:[27]
dup.v 0
pushi.e 302
cmp.i.v EQ
bt [107]

:[28]
dup.v 0
pushi.e 313
cmp.i.v EQ
bt [110]

:[29]
b [118]

:[30]
push.s " "@353
pop.v.s self.itemnameb
push.s "---"@8074
pop.v.s self.itemdescb
b [118]

:[31]
pushi.e 40
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem_ch1(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
push.v self._gc
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
push.s "scr_itemuse_slash_scr_itemuse_gml_28_0"@13326
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[33]
push.v self._gc
pushi.e 3
cmp.i.v EQ
bf [37]

:[34]
push.v self.suspos
pushi.e 0
cmp.i.v GTE
bf [36]

:[35]
push.s "scr_itemuse_slash_scr_itemuse_gml_33_0"@13327
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.suspos
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[36]
push.s "scr_itemuse_slash_scr_itemuse_gml_35_0"@13328
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[37]
b [118]

:[38]
pushi.e -5
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.reviveamt
push.v self.reviveamt
pushglb.v global.charselect
call.i gml_Script_scr_healitem_ch1(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
push.v self._gc
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
push.s "scr_itemuse_slash_scr_itemuse_gml_47_0"@13329
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.suspos
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_48_0"@13330
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.ralpos
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[40]
push.v self._gc
pushi.e 3
cmp.i.v EQ
bf [44]

:[41]
push.v self.suspos
pushi.e 0
cmp.i.v GTE
bf [43]

:[42]
push.s "scr_itemuse_slash_scr_itemuse_gml_53_0"@13331
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.suspos
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[43]
push.s "scr_itemuse_slash_scr_itemuse_gml_54_0"@8421
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.ralpos
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[44]
b [118]

:[45]
pushi.e 6
pop.v.i global.interact
pushi.e 1494
pushenv [47]

:[46]
pushi.e 0
pop.v.i self.charcon

:[47]
popenv [46]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i self.charcon
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
push.i 119768915
setowner.e
push.s "scr_itemuse_slash_scr_itemuse_gml_71_0"@13332
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
b [118]

:[48]
pushi.e 20
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem_ch1(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
b [118]

:[49]
pushi.e 160
conv.i.v
call.i gml_Script_scr_healitem_all_ch1(argc=1)
popz.v
push.v self.suspos
pushi.e 0
cmp.i.v GTE
bf [51]

:[50]
push.s "scr_itemuse_slash_scr_itemuse_gml_83_0"@13333
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.suspos
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[51]
push.v self.ralpos
pushi.e 0
cmp.i.v GTE
bf [53]

:[52]
push.s "scr_itemuse_slash_scr_itemuse_gml_84_0"@13334
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.ralpos
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[53]
pushi.e 1
pop.v.i self.usable
b [118]

:[54]
pushi.e 80
conv.i.v
call.i gml_Script_scr_healitem_all_ch1(argc=1)
popz.v
push.v self.suspos
pushi.e 0
cmp.i.v GTE
bf [56]

:[55]
push.s "scr_itemuse_slash_scr_itemuse_gml_90_0"@13335
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.suspos
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[56]
push.v self.ralpos
pushi.e 0
cmp.i.v GTE
bf [58]

:[57]
push.s "scr_itemuse_slash_scr_itemuse_gml_91_0"@13336
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.ralpos
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[58]
pushi.e 1
pop.v.i self.usable
b [118]

:[59]
pushi.e 70
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem_ch1(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [61]

:[60]
push.s "scr_itemuse_slash_scr_itemuse_gml_101_0"@13337
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[61]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [63]

:[62]
push.s "scr_itemuse_slash_scr_itemuse_gml_105_0"@13338
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[63]
b [118]

:[64]
pushi.e 4
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem_ch1(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [66]

:[65]
push.s "scr_itemuse_slash_scr_itemuse_gml_115_0"@13339
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[66]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [68]

:[67]
push.s "scr_itemuse_slash_scr_itemuse_gml_119_0"@13340
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[68]
b [118]

:[69]
pushi.e 4
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem_ch1(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [71]

:[70]
push.s "scr_itemuse_slash_scr_itemuse_gml_129_0"@13341
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[71]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [73]

:[72]
push.s "scr_itemuse_slash_scr_itemuse_gml_133_0"@13342
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[73]
b [118]

:[74]
pushi.e 30
conv.i.v
call.i gml_Script_scr_healitem_all_ch1(argc=1)
popz.v
push.v self.suspos
pushi.e 0
cmp.i.v GTE
bf [76]

:[75]
push.s "scr_itemuse_slash_scr_itemuse_gml_139_0"@13343
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.suspos
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[76]
push.v self.ralpos
pushi.e 0
cmp.i.v GTE
bf [78]

:[77]
push.s "scr_itemuse_slash_scr_itemuse_gml_140_0"@13344
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.ralpos
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[78]
pushi.e 1
pop.v.i self.usable
b [118]

:[79]
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
pushi.e 20
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem_ch1(argc=2)
popz.v

:[81]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [83]

:[82]
pushi.e 80
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem_ch1(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_154_0"@13345
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[83]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [85]

:[84]
pushi.e 50
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem_ch1(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_159_0"@13346
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[85]
b [118]

:[86]
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
pushi.e 80
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem_ch1(argc=2)
popz.v

:[88]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [90]

:[89]
pushi.e 20
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem_ch1(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_173_0"@13347
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[90]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [92]

:[91]
pushi.e 50
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem_ch1(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_178_0"@8468
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[92]
b [118]

:[93]
pushi.e 1
pop.v.i self.usable
pushi.e 500
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem_ch1(argc=2)
popz.v
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [95]

:[94]
push.s "scr_itemuse_slash_scr_itemuse_gml_188_0"@13348
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[95]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [97]

:[96]
push.s "scr_itemuse_slash_scr_itemuse_gml_192_0"@13349
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[97]
b [118]

:[98]
pushi.e 50
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem_ch1(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [100]

:[99]
push.s "scr_itemuse_slash_scr_itemuse_gml_202_0"@13350
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[100]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [102]

:[101]
push.s "scr_itemuse_slash_scr_itemuse_gml_206_0"@13351
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[102]
b [118]

:[103]
b [118]

:[104]
pushi.e 1494
pushenv [106]

:[105]
pushi.e 0
pop.v.i self.charcon

:[106]
popenv [105]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i self.charcon
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
pushi.e 371
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.i 119768915
setowner.e
push.s "scr_itemuse_slash_scr_itemuse_gml_222_0"@8480
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 1648
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
b [118]

:[107]
pushi.e 6
pop.v.i global.interact
pushi.e 1494
pushenv [109]

:[108]
pushi.e 0
pop.v.i self.charcon

:[109]
popenv [108]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i self.charcon
pushi.e 373
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
push.i 119768915
setowner.e
push.s "scr_itemuse_slash_scr_itemuse_gml_237_0"@13352
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
b [118]

:[110]
pushi.e 6
pop.v.i global.interact
pushi.e 1494
pushenv [112]

:[111]
pushi.e 0
pop.v.i self.charcon

:[112]
popenv [111]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i self.charcon
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
pushi.e -5
pushi.e 280
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [114]

:[113]
push.i 119768868
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 280
pop.v.v [array]self.flag
push.i 119768915
setowner.e
push.s "scr_itemuse_slash_scr_itemuse_gml_238_0"@13353
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_itemuse_slash_scr_itemuse_gml_239_0"@8484
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "scr_itemuse_slash_scr_itemuse_gml_240_0"@13354
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "scr_itemuse_slash_scr_itemuse_gml_241_0"@13355
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
b [117]

:[114]
pushi.e -5
pushi.e 280
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [116]

:[115]
push.i 119768868
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 280
pop.v.v [array]self.flag
push.i 119768915
setowner.e
push.s "scr_itemuse_slash_scr_itemuse_gml_242_0"@13356
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_itemuse_slash_scr_itemuse_gml_243_0"@8486
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [117]

:[116]
push.i 119768915
setowner.e
push.s "scr_itemuse_slash_scr_itemuse_gml_244_0"@13357
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[117]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
b [118]

:[118]
popz.v
exit.i

:[119]
push.i [function]gml_Script_scr_itemuse_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemuse_ch1
popz.v

:[end]