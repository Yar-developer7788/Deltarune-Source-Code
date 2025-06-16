.localvar 2 arguments

:[0]
push.v self.songplay
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.i 231459
setowner.e
push.s "THE_HOLY.ogg"@19960
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.9
conv.d.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 3
pop.v.i self.songplay

:[2]
push.v self.songplay
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 2
pop.v.i self.songplay

:[4]
push.v self.songplay
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
pushi.e 1351
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.visible

:[7]
popenv [6]
pushi.e 1
pop.v.i self.songplay

:[8]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.JA_XOFF
pushi.e 1
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 220
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y
push.v self.susindex
pop.v.v self.image_index
push.v self.susindex
push.d 0.1
add.d.v
pop.v.v self.susindex
push.v self.susy
pushi.e 1
sub.i.v
pop.v.v self.susy
pushi.e 1
pop.v.i global.interact

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.susindex
push.d 2.1
pop.v.d self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[14]
push.v self.con
push.d 3.1
cmp.d.v EQ
bf [18]

:[15]
pushi.e 0
pop.v.i self.JA_XOFF
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [17]

:[16]
pushi.e 50
pop.v.i self.JA_XOFF

:[17]
pushi.e 37
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_fountainkris_slash_Step_0_gml_47_0"@40724
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1331
conv.i.v
pushi.e 80
conv.i.v
pushi.e 100
push.v self.JA_XOFF
add.v.i
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[18]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 4166
pop.v.i self.sussprite
push.d 3.2
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[23]
push.v self.con
push.d 4.2
cmp.d.v EQ
bf [25]

:[24]
push.i 231251
setowner.e
push.s "obj_fountainkris_slash_Step_0_gml_64_0"@40725
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_65_0"@40726
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_66_0"@40727
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_67_0"@40728
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 1331
conv.i.v
pushi.e 80
conv.i.v
pushi.e 100
push.v self.JA_XOFF
add.v.i
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 6
pop.v.i self.con

:[25]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [27]

:[26]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 4167
pop.v.i self.sussprite
pushi.e 7
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[30]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [32]

:[31]
push.i 231251
setowner.e
push.s "obj_fountainkris_slash_Step_0_gml_81_0"@40729
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_82_0"@40730
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_83_0"@40731
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_84_0"@40732
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 1331
conv.i.v
pushi.e 80
conv.i.v
pushi.e 100
push.v self.JA_XOFF
add.v.i
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.d 8.1
pop.v.d self.con

:[32]
push.v self.con
push.d 8.1
cmp.d.v EQ
bf [34]

:[33]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 9
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[37]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [39]

:[38]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y
push.v self.image_index
push.d 0.1
add.d.v
pop.v.v self.image_index

:[42]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [44]

:[43]
pushi.e 0
pop.v.i self.image_index
push.d 9.1
pop.v.d self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[44]
push.v self.con
push.d 10.1
cmp.d.v EQ
bf [46]

:[45]
pushi.e 42
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_fountainkris_slash_Step_0_gml_112_0"@40733
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_113_0"@40734
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_114_0"@19988
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_fountainkris_slash_Step_0_gml_115_0"@19990
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 1331
conv.i.v
pushi.e 80
conv.i.v
pushi.e 80
push.v self.JA_XOFF
add.v.i
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 12
pop.v.i self.con

:[46]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [48]

:[47]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [49]

:[48]
push.e 0

:[49]
bf [end]

:[50]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.made
pushi.e 1487
conv.i.v
push.v self.y
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 20
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 13
pop.v.i self.con

:[end]