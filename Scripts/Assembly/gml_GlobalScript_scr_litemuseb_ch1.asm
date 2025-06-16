.localvar 2 arguments

:[0]
b [51]

> gml_Script_scr_litemuseb_ch1 (locals=0, argc=2)
:[1]
push.v arg.argument1
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [14]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [15]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [16]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [17]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [18]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [19]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [20]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [21]

:[9]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [22]

:[10]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [23]

:[11]
dup.v 0
pushi.e 201
cmp.i.v EQ
bt [29]

:[12]
dup.v 0
pushi.e 202
cmp.i.v EQ
bt [49]

:[13]
b [50]

:[14]
push.i 102467411
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_6_0"@401
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [50]

:[15]
push.i 102467411
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_9_0"@403
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 448
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext_ch1(argc=4)
popz.v
pushi.e 0
conv.i.v
push.v arg.argument0
push.i [function]gml_Script_scr_litemshift_ch1
conv.i.v
call.i script_execute(argc=3)
popz.v
b [50]

:[16]
push.i 102467411
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_18_0"@406
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_scr_lweaponeq_ch1(argc=2)
popz.v
pushi.e 441
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext_ch1(argc=4)
popz.v
b [50]

:[17]
push.i 102467411
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_26_0"@408
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
push.i [function]gml_Script_scr_lrecoitem_ch1
conv.i.v
call.i script_execute(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v arg.argument0
push.i [function]gml_Script_scr_litemshift_ch1
conv.i.v
call.i script_execute(argc=3)
popz.v
b [50]

:[18]
push.i 102467411
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_34_0"@410
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext_ch1(argc=4)
popz.v
b [50]

:[19]
push.i 102467411
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_42_0"@412
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext_ch1(argc=4)
popz.v
b [50]

:[20]
push.i 102467411
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_48_0"@414
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_scr_lweaponeq_ch1(argc=2)
popz.v
pushi.e 441
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext_ch1(argc=4)
popz.v
b [50]

:[21]
push.i 102467411
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_56_0"@416
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_scr_lweaponeq_ch1(argc=2)
popz.v
pushi.e 441
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext_ch1(argc=4)
popz.v
b [50]

:[22]
push.i 102467411
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_63_0"@418
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 373
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext_ch1(argc=4)
popz.v
b [50]

:[23]
pushi.e -5
pushi.e 281
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.i 102467364
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 281
pop.v.v [array]self.flag
push.i 102467411
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_95_0"@12359
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_96_0"@12360
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_97_0"@12361
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
b [28]

:[25]
pushi.e -5
pushi.e 281
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.i 102467364
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 281
pop.v.v [array]self.flag
push.i 102467411
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_98_0"@12362
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_99_0"@12363
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [28]

:[27]
push.i 102467411
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_100_0"@12364
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[28]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext_ch1(argc=4)
popz.v
b [50]

:[29]
pushi.e 0
pop.v.i self.tempsaid
pushi.e 371
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.i 102467411
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_72_0"@12365
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_73_0"@12366
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushbltn.v builtin.room
pushi.e 283
cmp.i.v EQ
bt [32]

:[30]
pushbltn.v builtin.room
pushi.e 284
cmp.i.v EQ
bt [32]

:[31]
pushbltn.v builtin.room
pushi.e 287
cmp.i.v EQ
b [33]

:[32]
push.e 1

:[33]
bf [35]

:[34]
pushi.e 1
pop.v.i self.tempsaid
push.i 102467364
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 268
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_torface_ch1(argc=2)
popz.v
push.i 102467411
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_82_0"@12368
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_83_0"@12369
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_84_0"@12370
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 5
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_86_0"@12372
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg

:[35]
pushbltn.v builtin.room
pushi.e 286
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1
pop.v.i self.tempsaid
push.s "scr_litemuseb_slash_scr_litemuseb_gml_92_0"@12373
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_93_0"@12374
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_94_0"@12375
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[37]
push.v self.tempsaid
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
b [40]

:[39]
push.e 0

:[40]
bf [48]

:[41]
pushi.e -5
pushi.e 272
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
pushi.e 365
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[43]
pushi.e -5
pushi.e 272
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_109_0"@436
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_torface_ch1(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_111_0"@440
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_112_0"@442
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_113_0"@444
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_114_0"@446
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_116_0"@501
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg

:[45]
pushi.e -5
pushi.e 272
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
bf [47]

:[46]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_121_0"@12377
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_torface_ch1(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_123_0"@458
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_124_0"@12378
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_125_0"@12379
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 5
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_127_0"@509
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg

:[47]
push.i 102467364
setowner.e
pushi.e -5
pushi.e 272
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag

:[48]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext_ch1(argc=4)
popz.v
b [50]

:[49]
pushi.e 375
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
b [50]

:[50]
popz.v
exit.i

:[51]
push.i [function]gml_Script_scr_litemuseb_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_litemuseb_ch1
popz.v

:[end]