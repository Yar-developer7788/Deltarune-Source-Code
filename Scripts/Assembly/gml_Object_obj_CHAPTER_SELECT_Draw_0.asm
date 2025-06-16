.localvar 2 arguments
.localvar 107 i 6403
.localvar 11885 filename 6404
.localvar 14661 select_text 6409
.localvar 14672 max_options 6413
.localvar 6131 mycolor 6414
.localvar 14673 heart_xpos 6415
.localvar 14674 heart_ypos 6416
.localvar 14682 play_color 6419
.localvar 14683 not_color 6420

:[0]
pushglb.v global.is_console
conv.v.b
bf [3]

:[1]
push.v self.chapter_is_loading
conv.v.b
bf [3]

:[2]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "LOADING..."@14639
conv.s.v
pushi.e 250
conv.i.v
pushi.e 320
conv.i.v
call.i draw_text(argc=3)
popz.v

:[3]
pushi.e 1
conv.i.v
call.i audio_group_is_loaded(argc=1)
conv.v.b
not.b
bf [5]

:[4]
exit.i

:[5]
push.v self.init_loaded
conv.v.b
not.b
bf [7]

:[6]
exit.i

:[7]
push.v self.text_font
call.i draw_set_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.timer
pushi.e 20
cmp.i.v LT
bf [9]

:[8]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[9]
push.v self.con
push.s "init"@9838
cmp.s.v EQ
bf [14]

:[10]
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
conv.i.v
pushi.e 15
conv.i.v
pushi.e 343
conv.i.v
call.i audio_play_sound(argc=3)
pop.v.v self.loop

:[12]
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [14]

:[13]
push.s "start"@11746
pop.v.s self.con

:[14]
push.v self.con
push.s "start"@11746
cmp.s.v EQ
bf [42]

:[15]
pushi.e 0
pop.v.b self.file_found
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [17]

:[16]
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_ini_open(argc=1)
popz.v
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v

:[17]
pushi.e 0
pop.v.i local.i

:[18]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [28]

:[19]
push.s "filech"@9691
pushloc.v local.i
call.i string(argc=1)
add.v.s
push.s "_"@9692
add.s.v
pop.v.v local.filename
pushloc.v local.filename
pushi.e 3
conv.i.v
call.i string(argc=1)
add.v.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bt [22]

:[20]
pushloc.v local.filename
pushi.e 4
conv.i.v
call.i string(argc=1)
add.v.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bt [22]

:[21]
pushloc.v local.filename
pushi.e 5
conv.i.v
call.i string(argc=1)
add.v.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
pushloc.v local.i
pop.v.v self.highestCompletedChapter

:[25]
push.v self.highestCompletedChapter
pushi.e 0
cmp.i.v GT
bf [27]

:[26]
pushi.e 1
pop.v.b self.file_found

:[27]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [18]

:[28]
push.s "highestCompletedChapter:"@14640
push.v self.highestCompletedChapter
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[29]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [39]

:[30]
push.s "filech"@9691
pushloc.v local.i
call.i string(argc=1)
add.v.s
push.s "_"@9692
add.s.v
pop.v.v local.filename
pushloc.v local.filename
pushi.e 0
conv.i.v
call.i string(argc=1)
add.v.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bt [33]

:[31]
pushloc.v local.filename
pushi.e 1
conv.i.v
call.i string(argc=1)
add.v.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bt [33]

:[32]
pushloc.v local.filename
pushi.e 2
conv.i.v
call.i string(argc=1)
add.v.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
pushloc.v local.i
pop.v.v self.highestUncompletedChapter

:[36]
push.v self.highestUncompletedChapter
pushi.e 0
cmp.i.v GT
bf [38]

:[37]
pushi.e 1
pop.v.b self.file_found

:[38]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [29]

:[39]
push.s "highestUncompletedChapter:"@14641
push.v self.highestUncompletedChapter
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
push.v self.file_found
pushi.e 0
cmp.b.v EQ
bf [41]

:[40]
push.s "nofile"@14642
pop.v.s self.con
push.v self.fademax
pop.v.v self.fade
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.mpos
b [42]

:[41]
push.s "filefound"@14643
pop.v.s self.con
push.v self.fademax
pop.v.v self.fade
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.mpos

:[42]
push.v self.con
push.s "nofile"@14642
cmp.s.v EQ
bf [72]

:[43]
push.v self.fade
pushi.e 0
cmp.i.v NEQ
bf [45]

:[44]
push.d 0.125
conv.d.v
pushi.e 0
conv.i.v
push.v self.fade
call.i lerp(argc=3)
pop.v.v self.fade

:[45]
pushi.e 160
push.v self.scale
mul.v.i
pop.v.v self.xx
pushi.e 110
push.v self.scale
mul.v.i
pop.v.v self.yy
pushi.e 20
push.v self.scale
mul.v.i
pop.v.v self.mspace
push.v self.fade
push.v self.scale
mul.v.v
pop.v.v self.fadescaled
push.v self.fade
push.v self.fademax
div.v.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.drawcolor
push.v self.drawcolor
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [47]

:[46]
push.s "Would you like to start from Chapter 1?"@14646
conv.s.v
b [48]

:[47]
push.s "Chapter 1から始めますか？"@14647
conv.s.v

:[48]
pop.v.v self.my_stringset
push.v self.text_font
call.i draw_set_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.my_stringset
push.v self.yy
push.v self.fadescaled
sub.v.v
push.v self.xx
call.i draw_text_transformed(argc=6)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.mpos
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [51]

:[50]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[51]
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.yes
pushi.e 20
push.v self.scale
mul.v.i
push.v self.yy
add.v.v
push.v self.fadescaled
sub.v.v
push.v self.mspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
call.i draw_text_transformed(argc=6)
popz.v
push.v self.mpos
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [54]

:[53]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[54]
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.no
pushi.e 20
push.v self.scale
mul.v.i
push.v self.yy
add.v.v
push.v self.fadescaled
sub.v.v
push.v self.mspace
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
call.i draw_text_transformed(argc=6)
popz.v
push.v self.mpos
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
push.v self.fademax
push.v self.fade
sub.v.v
push.v self.fademax
div.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
pushi.e 20
push.v self.scale
mul.v.i
push.v self.yy
add.v.v
push.v self.fadescaled
sub.v.v
push.v self.mspace
push.v self.mpos
mul.v.v
add.v.v
pushi.e 4
push.v self.scale
mul.v.i
add.v.v
push.v self.xx
push.v self.yes
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
push.v self.scale
mul.v.v
sub.v.v
pushi.e 13
push.v self.scale
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1425
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[56]
push.v self.mpos
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
push.v self.fademax
push.v self.fade
sub.v.v
push.v self.fademax
div.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
pushi.e 20
push.v self.scale
mul.v.i
push.v self.yy
add.v.v
push.v self.fadescaled
sub.v.v
push.v self.mspace
push.v self.mpos
mul.v.v
add.v.v
pushi.e 4
push.v self.scale
mul.v.i
add.v.v
push.v self.xx
push.v self.no
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
push.v self.scale
mul.v.v
sub.v.v
pushi.e 13
push.v self.scale
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1425
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[58]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [60]

:[59]
push.v self.mpos
push.e 1
sub.i.v
pop.v.v self.mpos
pushi.e 1
pop.v.b self.move_noise

:[60]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [62]

:[61]
push.v self.mpos
push.e 1
add.i.v
pop.v.v self.mpos
pushi.e 1
pop.v.b self.move_noise

:[62]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.mpos
call.i clamp(argc=3)
pop.v.v self.mpos
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [64]

:[63]
push.v self.timer
pushi.e 10
cmp.i.v GT
b [65]

:[64]
push.e 0

:[65]
bf [72]

:[66]
pushi.e 1
pop.v.b self.select_noise
push.v self.mpos
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [69]

:[67]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [70]

:[68]
b [71]

:[69]
pushi.e 1
pop.v.i self.chaptertoload
push.s "gameload"@14649
pop.v.s self.con
b [71]

:[70]
pushi.e 0
pop.v.i self.mpos
push.s "chapterselect"@14650
pop.v.s self.con
b [71]

:[71]
popz.v

:[72]
push.v self.con
push.s "filefound"@14643
cmp.s.v EQ
bf [76]

:[73]
push.v self.fademax
pop.v.v self.fade
pushi.e 0
pop.v.i self.mpos
pushi.e 0
pop.v.i self.timer
push.v self.highestCompletedChapter
push.v self.highestUncompletedChapter
cmp.v.v EQ
bf [75]

:[74]
push.s "startNextChapter"@14651
pop.v.s self.con
b [76]

:[75]
push.s "continueChapter"@14652
pop.v.s self.con

:[76]
push.v self.con
push.s "startNextChapter"@14651
cmp.s.v EQ
bf [110]

:[77]
push.v self.highestCompletedChapter
push.v self.latestAvailableChapter
cmp.v.v GTE
bf [79]

:[78]
push.s "chapterselect"@14650
pop.v.s self.con
exit.i

:[79]
push.v self.fade
pushi.e 0
cmp.i.v NEQ
bf [81]

:[80]
push.d 0.125
conv.d.v
pushi.e 0
conv.i.v
push.v self.fade
call.i lerp(argc=3)
pop.v.v self.fade

:[81]
pushi.e 160
push.v self.scale
mul.v.i
pop.v.v self.xx
pushi.e 110
push.v self.scale
mul.v.i
pop.v.v self.yy
pushi.e 20
push.v self.scale
mul.v.i
pop.v.v self.mspace
push.v self.fade
push.v self.scale
mul.v.v
pop.v.v self.fadescaled
push.v self.fade
push.v self.fademax
div.v.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.drawcolor
push.v self.drawcolor
call.i draw_set_color(argc=1)
popz.v
push.s "Chapter "@14653
push.v self.highestCompletedChapter
call.i string(argc=1)
add.v.s
push.s " was completed."@14654
add.s.v
pop.v.v self.my_stringset
push.s "Play Chapter "@14655
push.v self.highestCompletedChapter
pushi.e 1
add.i.v
call.i string(argc=1)
add.v.s
pop.v.v self.stringset2
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [83]

:[82]
push.s "Chapter "@14653
push.v self.highestCompletedChapter
call.i string(argc=1)
add.v.s
push.s "はクリア済みです。"@14657
add.s.v
pop.v.v self.my_stringset
push.s "Chapter "@14653
push.v self.highestCompletedChapter
pushi.e 1
add.i.v
call.i string(argc=1)
add.v.s
push.s "をプレイ"@14658
add.s.v
pop.v.v self.stringset2

:[83]
push.v self.text_font
call.i draw_set_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.my_stringset
push.v self.yy
push.v self.fadescaled
sub.v.v
push.v self.mspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
call.i draw_text_transformed(argc=6)
popz.v
push.v self.mpos
pushi.e 0
cmp.i.v EQ
bf [85]

:[84]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [86]

:[85]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[86]
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.stringset2
push.v self.yy
push.v self.fadescaled
sub.v.v
push.v self.mspace
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
call.i draw_text_transformed(argc=6)
popz.v
push.v self.mpos
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [89]

:[88]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[89]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [91]

:[90]
push.s "Chapter Select"@14659
conv.s.v
b [92]

:[91]
push.s "チャプター選択"@14660
conv.s.v

:[92]
pop.v.v local.select_text
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
pushloc.v local.select_text
push.v self.yy
push.v self.fadescaled
sub.v.v
push.v self.mspace
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
call.i draw_text_transformed(argc=6)
popz.v
push.v self.mpos
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
push.v self.fademax
push.v self.fade
sub.v.v
push.v self.fademax
div.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
push.v self.fadescaled
sub.v.v
push.v self.mspace
pushi.e 1
mul.i.v
add.v.v
pushi.e 4
push.v self.scale
mul.v.i
add.v.v
push.v self.xx
push.v self.stringset2
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
push.v self.scale
mul.v.v
sub.v.v
pushi.e 13
push.v self.scale
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1425
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[94]
push.v self.mpos
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
push.v self.fademax
push.v self.fade
sub.v.v
push.v self.fademax
div.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
push.v self.fadescaled
sub.v.v
push.v self.mspace
pushi.e 2
mul.i.v
add.v.v
pushi.e 4
push.v self.scale
mul.v.i
add.v.v
push.v self.xx
pushloc.v local.select_text
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
push.v self.scale
mul.v.v
sub.v.v
pushi.e 13
push.v self.scale
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1425
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[96]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [98]

:[97]
push.v self.mpos
push.e 1
sub.i.v
pop.v.v self.mpos
pushi.e 1
pop.v.b self.move_noise

:[98]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [100]

:[99]
push.v self.mpos
push.e 1
add.i.v
pop.v.v self.mpos
pushi.e 1
pop.v.b self.move_noise

:[100]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.mpos
call.i clamp(argc=3)
pop.v.v self.mpos
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [102]

:[101]
push.v self.timer
pushi.e 10
cmp.i.v GT
b [103]

:[102]
push.e 0

:[103]
bf [110]

:[104]
pushi.e 1
pop.v.b self.select_noise
push.v self.mpos
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [107]

:[105]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [108]

:[106]
b [109]

:[107]
push.v self.highestCompletedChapter
pushi.e 1
add.i.v
pop.v.v self.chaptertoload
push.s "gameload"@14649
pop.v.s self.con
b [109]

:[108]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.mpos
push.s "chapterselect"@14650
pop.v.s self.con
b [109]

:[109]
popz.v

:[110]
push.v self.con
push.s "continueChapter"@14652
cmp.s.v EQ
bf [145]

:[111]
push.v self.highestUncompletedChapter
pushi.e 0
cmp.i.v EQ
bt [114]

:[112]
push.v self.highestUncompletedChapter
push.v self.latestAvailableChapter
cmp.v.v GT
bt [114]

:[113]
push.v self.highestCompletedChapter
push.v self.latestAvailableChapter
cmp.v.v GT
b [115]

:[114]
push.e 1

:[115]
bf [117]

:[116]
push.s "highestUncompletedChapter="@14662
push.v self.highestUncompletedChapter
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
push.s "highestCompletedChapter="@14663
push.v self.highestCompletedChapter
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
push.s "nofile"@14642
pop.v.s self.con
exit.i

:[117]
push.v self.fade
pushi.e 0
cmp.i.v NEQ
bf [119]

:[118]
push.d 0.125
conv.d.v
pushi.e 0
conv.i.v
push.v self.fade
call.i lerp(argc=3)
pop.v.v self.fade

:[119]
pushi.e 160
push.v self.scale
mul.v.i
pop.v.v self.xx
pushi.e 110
push.v self.scale
mul.v.i
pop.v.v self.yy
pushi.e 20
push.v self.scale
mul.v.i
pop.v.v self.mspace
push.v self.fade
push.v self.scale
mul.v.v
pop.v.v self.fadescaled
push.v self.fade
push.v self.fademax
div.v.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.drawcolor
push.v self.drawcolor
call.i draw_set_color(argc=1)
popz.v
push.s "Continue from Chapter "@14664
push.v self.highestUncompletedChapter
call.i string(argc=1)
add.v.s
push.s "?"@4913
add.s.v
pop.v.v self.my_stringset
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [121]

:[120]
push.s "Chapter "@14653
push.v self.highestUncompletedChapter
call.i string(argc=1)
add.v.s
push.s "から続けますか？"@14665
add.s.v
pop.v.v self.my_stringset

:[121]
push.v self.text_font
call.i draw_set_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.my_stringset
push.v self.yy
push.v self.fadescaled
sub.v.v
push.v self.mspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
call.i draw_text_transformed(argc=6)
popz.v
push.v self.mpos
pushi.e 0
cmp.i.v EQ
bf [123]

:[122]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [124]

:[123]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[124]
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.yes
push.v self.yy
push.v self.fadescaled
sub.v.v
push.v self.mspace
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
call.i draw_text_transformed(argc=6)
popz.v
push.v self.mpos
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [127]

:[126]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[127]
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.no
push.v self.yy
push.v self.fadescaled
sub.v.v
push.v self.mspace
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
call.i draw_text_transformed(argc=6)
popz.v
push.v self.mpos
pushi.e 0
cmp.i.v EQ
bf [129]

:[128]
push.v self.fademax
push.v self.fade
sub.v.v
push.v self.fademax
div.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
push.v self.fadescaled
sub.v.v
push.v self.mspace
pushi.e 1
mul.i.v
add.v.v
push.v self.mspace
push.v self.mpos
mul.v.v
add.v.v
pushi.e 4
push.v self.scale
mul.v.i
add.v.v
push.v self.xx
push.v self.yes
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
push.v self.scale
mul.v.v
sub.v.v
pushi.e 13
push.v self.scale
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1425
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[129]
push.v self.mpos
pushi.e 1
cmp.i.v EQ
bf [131]

:[130]
push.v self.fademax
push.v self.fade
sub.v.v
push.v self.fademax
div.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
push.v self.fadescaled
sub.v.v
push.v self.mspace
pushi.e 1
mul.i.v
add.v.v
push.v self.mspace
push.v self.mpos
mul.v.v
add.v.v
pushi.e 4
push.v self.scale
mul.v.i
add.v.v
push.v self.xx
push.v self.no
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
push.v self.scale
mul.v.v
sub.v.v
pushi.e 13
push.v self.scale
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1425
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[131]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [133]

:[132]
push.v self.mpos
push.e 1
sub.i.v
pop.v.v self.mpos
pushi.e 1
pop.v.b self.move_noise

:[133]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [135]

:[134]
push.v self.mpos
push.e 1
add.i.v
pop.v.v self.mpos
pushi.e 1
pop.v.b self.move_noise

:[135]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.mpos
call.i clamp(argc=3)
pop.v.v self.mpos
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [137]

:[136]
push.v self.timer
pushi.e 10
cmp.i.v GT
b [138]

:[137]
push.e 0

:[138]
bf [145]

:[139]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.b self.select_noise
push.v self.mpos
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [142]

:[140]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [143]

:[141]
b [144]

:[142]
push.v self.highestUncompletedChapter
pop.v.v self.chaptertoload
push.s "gameload"@14649
pop.v.s self.con
b [144]

:[143]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.mpos
push.s "chapterselect"@14650
pop.v.s self.con
b [144]

:[144]
popz.v

:[145]
push.v self.con
push.s "chapterselect"@14650
cmp.s.v EQ
bf [190]

:[146]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [148]

:[147]
push.s "Quit"@14666
conv.s.v
b [149]

:[148]
push.s "とじる"@14667
conv.s.v

:[149]
pop.v.v self.quit
push.s "Chapter"@14669
pop.v.s self.chapterstring
push.v self.chapterselectinit
pushi.e 0
cmp.i.v EQ
bf [152]

:[150]
push.v self.fademax
pop.v.v self.fade
pushi.e 1
pop.v.i self.chapterselectinit
pushi.e 0
pop.v.i self.timer
push.v self.highestCompletedChapter
pop.v.v self.mpos
push.v self.mpos
push.v self.latestAvailableChapter
pushi.e 1
sub.i.v
cmp.v.v GT
bf [152]

:[151]
push.v self.latestAvailableChapter
pushi.e 1
sub.i.v
pop.v.v self.mpos

:[152]
push.v self.fade
pushi.e 0
cmp.i.v NEQ
bf [154]

:[153]
push.d 0.125
conv.d.v
pushi.e 0
conv.i.v
push.v self.fade
call.i lerp(argc=3)
pop.v.v self.fade

:[154]
push.v self.fade
push.v self.scale
mul.v.v
pop.v.v self.fadescaled
pushi.e 30
push.v self.scale
mul.v.i
pop.v.v self.space
pushi.e 0
pop.v.i local.i

:[155]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [157]

:[156]
pushi.e 1
push.v self.fade
push.v self.fademax
div.v.v
sub.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
pushi.e 36
push.v self.scale
mul.v.i
push.v self.space
pushloc.v local.i
mul.v.v
add.v.v
push.v self.fadescaled
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1484
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [155]

:[157]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [160]

:[158]
pushi.e 1
pop.v.b self.move_noise
push.v self.mpos
push.e 1
sub.i.v
pop.v.v self.mpos
push.v self.mpos
push.v self.latestAvailableChapter
pushi.e 1
sub.i.v
cmp.v.v GT
bf [160]

:[159]
push.v self.latestAvailableChapter
pushi.e 1
sub.i.v
pop.v.v self.mpos

:[160]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [166]

:[161]
pushi.e 1
pop.v.b self.move_noise
push.v self.mpos
push.e 1
add.i.v
pop.v.v self.mpos
push.v self.mpos
push.v self.latestAvailableChapter
pushi.e 1
sub.i.v
cmp.v.v GT
bf [166]

:[162]
pushglb.v global.is_console
conv.v.b
bf [164]

:[163]
pushi.e 1
conv.i.v
b [165]

:[164]
pushi.e 7
conv.i.v

:[165]
pop.v.v self.mpos

:[166]
push.v self.console
conv.v.b
bf [168]

:[167]
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.mpos
call.i clamp(argc=3)
pop.v.v self.mpos
b [169]

:[168]
pushi.e 7
conv.i.v
pushi.e 0
conv.i.v
push.v self.mpos
call.i clamp(argc=3)
pop.v.v self.mpos

:[169]
pushi.e 35
push.v self.scale
mul.v.i
pop.v.v self.xx
pushi.e 10
push.v self.scale
mul.v.i
pop.v.v self.yy
pushi.e 30
push.v self.scale
mul.v.i
pop.v.v self.mspace
pushi.e 7
pop.v.i local.max_options
pushi.e 0
pop.v.i local.i

:[170]
pushloc.v local.i
pushloc.v local.max_options
cmp.v.v LT
bf [176]

:[171]
push.i 8421504
pop.v.i local.mycolor
pushloc.v local.i
push.v self.latestAvailableChapter
cmp.v.v LT
bf [173]

:[172]
push.i 16777215
pop.v.i local.mycolor

:[173]
push.v self.mpos
pushloc.v local.i
cmp.v.v EQ
bf [175]

:[174]
push.i 65535
pop.v.i local.mycolor

:[175]
push.v self.fade
push.v self.fademax
div.v.v
pushi.e 0
conv.i.v
pushloc.v local.mycolor
call.i merge_color(argc=3)
pop.v.v local.mycolor
pushi.e 1
push.v self.fade
push.v self.fademax
div.v.v
sub.v.i
pushloc.v local.mycolor
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.fadescaled
neg.v
push.v self.yy
add.v.v
pushloc.v local.i
pushi.e 30
mul.i.v
push.v self.scale
mul.v.v
add.v.v
push.v self.xx
pushi.e 234
push.v self.scale
mul.v.i
add.v.v
pushloc.v local.i
pushi.e 3264
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushloc.v local.mycolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.chapterstring
push.s " "@353
add.s.v
pushloc.v local.i
pushi.e 1
add.i.v
call.i string(argc=1)
add.v.v
push.v self.fadescaled
neg.v
push.v self.yy
add.v.v
push.v self.mspace
pushloc.v local.i
mul.v.v
add.v.v
pushi.e 3
push.v self.scale
mul.v.i
add.v.v
push.v self.xx
call.i draw_text_transformed(argc=6)
popz.v
push.v self.text_font
call.i draw_set_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
pushi.e -1
pushloc.v local.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.chapname
push.v self.fadescaled
neg.v
push.v self.yy
add.v.v
push.v self.mspace
pushloc.v local.i
mul.v.v
add.v.v
pushi.e 3
push.v self.scale
mul.v.i
add.v.v
pushi.e 176
push.v self.scale
mul.v.i
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [170]

:[176]
push.v self.xx
pushi.e 15
push.v self.scale
mul.v.i
sub.v.v
pop.v.v local.heart_xpos
push.v self.fadescaled
neg.v
push.v self.yy
add.v.v
pushi.e 7
push.v self.scale
mul.v.i
add.v.v
push.v self.mpos
pushi.e 30
push.v self.scale
mul.v.i
mul.v.v
add.v.v
pop.v.v local.heart_ypos
push.v self.mpos
pushi.e 7
cmp.i.v EQ
bf [178]

:[177]
push.v local.heart_ypos
pushi.e 5
push.v self.scale
mul.v.i
sub.v.v
pop.v.v local.heart_ypos
pushi.e 130
push.v self.scale
mul.v.i
pop.v.v local.heart_xpos

:[178]
push.v self.fademax
push.v self.fade
sub.v.v
push.v self.fademax
div.v.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
pushloc.v local.heart_ypos
pushloc.v local.heart_xpos
pushi.e 0
conv.i.v
pushi.e 1425
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.console
conv.v.b
not.b
bf [182]

:[179]
push.i 16777215
pop.v.i local.mycolor
push.v self.mpos
pushi.e 7
cmp.i.v EQ
bf [181]

:[180]
push.i 65535
pop.v.i local.mycolor

:[181]
push.v self.fade
push.v self.fademax
div.v.v
pushi.e 0
conv.i.v
pushloc.v local.mycolor
call.i merge_color(argc=3)
pop.v.v local.mycolor
pushloc.v local.mycolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.quit
push.v self.fadescaled
neg.v
pushi.e 218
push.v self.scale
mul.v.i
add.v.v
pushi.e 160
push.v self.scale
mul.v.i
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[182]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [184]

:[183]
push.v self.timer
pushi.e 12
cmp.i.v GT
b [185]

:[184]
push.e 0

:[185]
bf [189]

:[186]
pushi.e 1
pop.v.b self.select_noise
pushi.e 0
pop.v.i self.timer
push.v self.mpos
pushi.e 7
cmp.i.v EQ
bf [188]

:[187]
call.i game_end(argc=0)
popz.v
b [189]

:[188]
push.s "gameloadConfirm"@14675
pop.v.s self.con
pushi.e 0
pop.v.i self.confirm_choice_index
push.v self.mpos
pushi.e 1
add.i.v
pop.v.v self.chaptertoload

:[189]
b [253]

:[190]
push.v self.con
push.s "gameloadConfirm"@14675
cmp.s.v EQ
bf [253]

:[191]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [193]

:[192]
push.s "Play"@14676
conv.s.v
b [194]

:[193]
push.s "プレイする"@14677
conv.s.v

:[194]
pop.v.v self.stringPlay
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [196]

:[195]
push.s "Do Not"@14679
conv.s.v
b [197]

:[196]
push.s "しない"@14680
conv.s.v

:[197]
pop.v.v self.stringDoNot
pushi.e 30
push.v self.scale
mul.v.i
pop.v.v self.space
pushi.e 0
pop.v.i local.i

:[198]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [200]

:[199]
pushi.e 1
push.v self.fade
push.v self.fademax
div.v.v
sub.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
pushi.e 36
push.v self.scale
mul.v.i
push.v self.space
pushloc.v local.i
mul.v.v
add.v.v
push.v self.fadescaled
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1484
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [198]

:[200]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.console
conv.v.b
bf [202]

:[201]
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.mpos
call.i clamp(argc=3)
pop.v.v self.mpos
b [203]

:[202]
pushi.e 7
conv.i.v
pushi.e 0
conv.i.v
push.v self.mpos
call.i clamp(argc=3)
pop.v.v self.mpos

:[203]
pushi.e 35
push.v self.scale
mul.v.i
pop.v.v self.xx
pushi.e 10
push.v self.scale
mul.v.i
pop.v.v self.yy
pushi.e 30
push.v self.scale
mul.v.i
pop.v.v self.mspace
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [208]

:[204]
pushi.e 1
pop.v.b self.move_noise
push.v self.confirm_choice_index
pushi.e 1
sub.i.v
pushi.e 0
cmp.i.v LT
bf [206]

:[205]
pushi.e 1
conv.i.v
b [207]

:[206]
pushi.e 0
conv.i.v

:[207]
pop.v.v self.confirm_choice_index

:[208]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [213]

:[209]
pushi.e 1
pop.v.b self.move_noise
push.v self.confirm_choice_index
pushi.e 1
add.i.v
pushi.e 1
cmp.i.v GT
bf [211]

:[210]
pushi.e 0
conv.i.v
b [212]

:[211]
pushi.e 1
conv.i.v

:[212]
pop.v.v self.confirm_choice_index

:[213]
pushi.e 116
push.v self.scale
mul.v.i
push.v self.confirm_choice_index
pushi.e 75
mul.i.v
push.v self.scale
mul.v.v
add.v.v
pop.v.v local.heart_xpos
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [215]

:[214]
pushi.e 106
push.v self.scale
mul.v.i
push.v self.confirm_choice_index
pushi.e 95
mul.i.v
push.v self.scale
mul.v.v
add.v.v
pop.v.v local.heart_xpos

:[215]
push.v self.yy
pushi.e 7
push.v self.scale
mul.v.i
add.v.v
push.v self.mpos
pushi.e 30
mul.i.v
push.v self.scale
mul.v.v
add.v.v
pop.v.v local.heart_ypos
push.v self.fademax
push.v self.fade
sub.v.v
push.v self.fademax
div.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
push.v self.scale
pushi.e 2
conv.i.d
div.d.v
pushloc.v local.heart_ypos
pushloc.v local.heart_xpos
pushi.e 0
conv.i.v
pushi.e 1425
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 7
pop.v.i local.max_options
pushi.e 0
pop.v.i local.i

:[216]
pushloc.v local.i
pushloc.v local.max_options
cmp.v.v LT
bf [237]

:[217]
push.i 8421504
pop.v.i local.mycolor
pushloc.v local.i
push.v self.latestAvailableChapter
cmp.v.v LT
bf [219]

:[218]
push.i 16777215
pop.v.i local.mycolor

:[219]
push.v self.mpos
pushloc.v local.i
cmp.v.v EQ
bf [221]

:[220]
push.i 65535
pop.v.i local.mycolor

:[221]
push.v self.fade
push.v self.fademax
div.v.v
pushi.e 0
conv.i.v
pushloc.v local.mycolor
call.i merge_color(argc=3)
pop.v.v local.mycolor
pushi.e 1
push.v self.fade
push.v self.fademax
div.v.v
sub.v.i
pushloc.v local.mycolor
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.fade
neg.v
push.v self.scale
mul.v.v
push.v self.yy
add.v.v
pushloc.v local.i
pushi.e 30
mul.i.v
push.v self.scale
mul.v.v
add.v.v
push.v self.xx
pushi.e 234
push.v self.scale
mul.v.i
add.v.v
pushloc.v local.i
pushi.e 3264
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushloc.v local.mycolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.chapterstring
push.s " "@353
add.s.v
pushloc.v local.i
pushi.e 1
add.i.v
call.i string(argc=1)
add.v.v
push.v self.fade
neg.v
push.v self.yy
add.v.v
push.v self.mspace
pushloc.v local.i
mul.v.v
add.v.v
pushi.e 3
push.v self.scale
mul.v.i
add.v.v
push.v self.xx
call.i draw_text_transformed(argc=6)
popz.v
push.v self.text_font
call.i draw_set_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.mpos
pushloc.v local.i
cmp.v.v EQ
bf [235]

:[222]
push.v self.confirm_choice_index
pushi.e 0
cmp.i.v EQ
bf [224]

:[223]
push.i 65535
conv.i.v
b [225]

:[224]
push.i 16777215
conv.i.v

:[225]
pop.v.v local.play_color
pushloc.v local.play_color
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [227]

:[226]
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.stringPlay
push.v self.fade
neg.v
push.v self.scale
mul.v.v
push.v self.yy
add.v.v
push.v self.mspace
pushloc.v local.i
mul.v.v
add.v.v
pushi.e 3
push.v self.scale
mul.v.i
add.v.v
pushi.e 146
push.v self.scale
mul.v.i
call.i draw_text_transformed(argc=6)
popz.v
b [228]

:[227]
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.stringPlay
push.v self.fade
neg.v
push.v self.scale
mul.v.v
push.v self.yy
add.v.v
push.v self.mspace
pushloc.v local.i
mul.v.v
add.v.v
pushi.e 3
push.v self.scale
mul.v.i
add.v.v
pushi.e 156
push.v self.scale
mul.v.i
call.i draw_text_transformed(argc=6)
popz.v

:[228]
push.v self.confirm_choice_index
pushi.e 1
cmp.i.v EQ
bf [230]

:[229]
push.i 65535
conv.i.v
b [231]

:[230]
push.i 16777215
conv.i.v

:[231]
pop.v.v local.not_color
pushloc.v local.not_color
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [233]

:[232]
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.stringDoNot
push.v self.fade
neg.v
push.v self.scale
mul.v.v
push.v self.yy
add.v.v
push.v self.mspace
pushloc.v local.i
mul.v.v
add.v.v
pushi.e 3
push.v self.scale
mul.v.i
add.v.v
pushi.e 226
push.v self.scale
mul.v.i
call.i draw_text_transformed(argc=6)
popz.v
b [234]

:[233]
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.stringDoNot
push.v self.fade
neg.v
push.v self.scale
mul.v.v
push.v self.yy
add.v.v
push.v self.mspace
pushloc.v local.i
mul.v.v
add.v.v
pushi.e 3
push.v self.scale
mul.v.i
add.v.v
pushi.e 236
push.v self.scale
mul.v.i
call.i draw_text_transformed(argc=6)
popz.v

:[234]
b [236]

:[235]
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
pushi.e -1
pushloc.v local.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.chapname
push.v self.fade
neg.v
push.v self.yy
add.v.v
push.v self.mspace
pushloc.v local.i
mul.v.v
add.v.v
pushi.e 3
push.v self.scale
mul.v.i
add.v.v
pushi.e 176
push.v self.scale
mul.v.i
call.i draw_text_transformed(argc=6)
popz.v

:[236]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [216]

:[237]
push.v self.console
conv.v.b
not.b
bf [241]

:[238]
push.i 16777215
pop.v.i local.mycolor
push.v self.mpos
pushi.e 7
cmp.i.v EQ
bf [240]

:[239]
push.i 65535
pop.v.i local.mycolor

:[240]
push.v self.fade
push.v self.fademax
div.v.v
pushi.e 0
conv.i.v
pushloc.v local.mycolor
call.i merge_color(argc=3)
pop.v.v local.mycolor
pushloc.v local.mycolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.quit
push.v self.fade
neg.v
push.v self.scale
mul.v.v
pushi.e 218
push.v self.scale
mul.v.i
add.v.v
pushi.e 160
push.v self.scale
mul.v.i
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[241]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [243]

:[242]
push.v self.timer
pushi.e 12
cmp.i.v GT
b [244]

:[243]
push.e 0

:[244]
bf [248]

:[245]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.b self.select_noise
push.v self.confirm_choice_index
pushi.e 0
cmp.i.v EQ
bf [247]

:[246]
push.s "gameload"@14649
pop.v.s self.con
b [248]

:[247]
push.s "chapterselect"@14650
pop.v.s self.con

:[248]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [250]

:[249]
push.v self.timer
pushi.e 12
cmp.i.v GT
b [251]

:[250]
push.e 0

:[251]
bf [253]

:[252]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.b self.select_noise
push.s "chapterselect"@14650
pop.v.s self.con

:[253]
push.v self.con
push.s "gameload"@14649
cmp.s.v EQ
bf [264]

:[254]
push.v self.spr_aftereffect
pushi.e 0
cmp.i.v EQ
bf [256]

:[255]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.application_surface
call.i sprite_create_from_surface(argc=9)
pop.v.v self.spr_aftereffect
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.spr_aftereffect
call.i sprite_set_offset(argc=3)
popz.v
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.yy

:[256]
push.v self.chaptertoload
pushi.e 0
cmp.i.v NEQ
bf [263]

:[257]
pushi.e 500
conv.i.v
pushi.e 0
conv.i.v
push.v self.loop
call.i audio_sound_gain(argc=3)
popz.v
push.v self.chaptertoload
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [260]

:[258]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [261]

:[259]
b [262]

:[260]
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e 255
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
b [262]

:[261]
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e 194
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
b [262]

:[262]
popz.v
push.v self.chaptertoload
pop.v.v self.chaptertoload_temp
pushi.e 0
pop.v.i self.chaptertoload
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm

:[263]
push.v self.fadeout
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.yscale
push.v self.xscale
push.v self.yy
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.v self.spr_aftereffect
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.125
conv.d.v
pushi.e 0
conv.i.v
push.v self.fadeout
call.i lerp(argc=3)
pop.v.v self.fadeout
push.v self.xscale
push.d 0.95
mul.d.v
pop.v.v self.xscale
push.v self.yscale
push.d 0.99
mul.d.v
pop.v.v self.yscale
push.v self.yy
push.d 0.99
mul.d.v
pop.v.v self.yy

:[264]
push.v self.move_noise
conv.v.b
bf [266]

:[265]
pushi.e 0
pop.v.b self.move_noise
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e 260
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[266]
push.v self.select_noise
conv.v.b
bf [end]

:[267]
pushi.e 0
pop.v.b self.select_noise
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e 261
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[end]