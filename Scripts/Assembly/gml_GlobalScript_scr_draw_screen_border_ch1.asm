.localvar 2 arguments
.localvar 14036 border_id 4735
.localvar 14037 return_title 4736
.localvar 14045 room_id 4741
.localvar 14046 _border_image 4742
.localvar 5320 game_won 4747

:[0]
b [96]

> gml_Script_scr_draw_screen_border_ch1 (locals=5, argc=1)
:[1]
push.v arg.argument0
pop.v.v local.border_id
pushi.e 0
pop.v.b local.return_title
push.s "chapter_return"@14038
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [4]

:[2]
pushglb.v global.chapter_return
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e 1
pop.v.b local.return_title

:[4]
pushloc.v local.return_title
conv.v.b
not.b
bf [93]

:[5]
pushi.e 0
conv.b.v
call.i gml_Script_draw_enable_alphablend_ch1(argc=1)
popz.v
pushloc.v local.border_id
push.s "Dynamic"@14040
cmp.s.v EQ
bt [7]

:[6]
pushloc.v local.border_id
push.s "ダイナミック"@14041
cmp.s.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [81]

:[9]
push.v self.loaded
conv.v.b
not.b
bf [11]

:[10]
pushi.e 0
pop.v.i 1649.border_alpha
pushi.e 1
pop.v.b self.loaded

:[11]
push.d 0.025
pop.v.d 1649.border_fade_value
pushbltn.v builtin.room
pop.v.v local.room_id
pushglb.v global.darkzone
conv.v.b
bf [13]

:[12]
pushi.e 4426
conv.i.v
b [14]

:[13]
pushi.e 4427
conv.i.v

:[14]
pop.v.v local._border_image
pushloc.v local.room_id
pushi.e 413
cmp.i.v EQ
bt [18]

:[15]
pushloc.v local.room_id
pushi.e 1642
cmp.i.v EQ
bt [18]

:[16]
pushloc.v local.room_id
pushi.e 420
cmp.i.v EQ
bt [18]

:[17]
pushloc.v local.room_id
pushi.e 418
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
pushi.e 4426
pop.v.i local._border_image

:[21]
pushloc.v local.room_id
pushi.e 282
cmp.i.v EQ
bt [29]

:[22]
pushloc.v local.room_id
pushi.e 1638
cmp.i.v EQ
bt [29]

:[23]
pushloc.v local.room_id
pushi.e 420
cmp.i.v EQ
bt [29]

:[24]
pushloc.v local.room_id
pushi.e 426
cmp.i.v EQ
bt [29]

:[25]
pushloc.v local.room_id
pushi.e 416
cmp.i.v EQ
bt [29]

:[26]
pushloc.v local.room_id
pushi.e 412
cmp.i.v EQ
bt [29]

:[27]
pushloc.v local.room_id
pushi.e 316
cmp.i.v EQ
bt [29]

:[28]
pushloc.v local.room_id
pushi.e 321
cmp.i.v EQ
b [30]

:[29]
push.e 1

:[30]
bf [32]

:[31]
pushi.e 0
pop.v.i 1649.border_alpha
b [45]

:[32]
pushloc.v local.room_id
pushi.e 313
cmp.i.v EQ
bt [34]

:[33]
pushloc.v local.room_id
pushi.e 411
cmp.i.v EQ
b [35]

:[34]
push.e 1

:[35]
bf [37]

:[36]
push.v 1649.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b 1649.border_fade_out
b [45]

:[37]
pushloc.v local.room_id
pushi.e 288
cmp.i.v EQ
bt [40]

:[38]
pushloc.v local.room_id
pushi.e 326
cmp.i.v EQ
bt [40]

:[39]
pushloc.v local.room_id
pushi.e 295
cmp.i.v EQ
b [41]

:[40]
push.e 1

:[41]
bf [43]

:[42]
push.v 1649.border_alpha
pushi.e 1
cmp.i.v LT
pop.v.b 1649.border_fade_in
b [45]

:[43]
pushi.e 1404
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [45]

:[44]
pushi.e 1
pop.v.i 1649.border_alpha

:[45]
pushloc.v local.room_id
pushi.e 314
cmp.i.v EQ
bf [50]

:[46]
pushi.e 1342
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [50]

:[47]
push.v 1342.lightsoff
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
push.v 1649.border_alpha
pushi.e 1
cmp.i.v LT
pop.v.b 1649.border_fade_in
b [50]

:[49]
pushi.e 0
pop.v.i 1649.border_alpha

:[50]
pushloc.v local.room_id
pushi.e 283
cmp.i.v EQ
bf [58]

:[51]
pushi.e 1355
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [58]

:[52]
push.v 1355.con
pushi.e 50
cmp.i.v GTE
bf [54]

:[53]
push.v 1649.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b 1649.border_fade_out
b [58]

:[54]
pushglb.v global.plot
pushi.e 10
cmp.i.v LTE
bf [56]

:[55]
pushi.e 0
conv.i.v
b [57]

:[56]
pushi.e 1
conv.i.v

:[57]
pop.v.v 1649.border_alpha

:[58]
pushloc.v local.room_id
pushi.e 419
cmp.i.v EQ
bf [65]

:[59]
pushi.e 1640
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [65]

:[60]
push.v 1640.EVENT
pushi.e 27
cmp.i.v GTE
bf [62]

:[61]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
pushi.e 0
pop.v.i 1649.border_alpha

:[65]
pushi.e 0
pop.v.b local.game_won
push.s "filech1_3"@14051
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [67]

:[66]
pushi.e 1
pop.v.b local.game_won

:[67]
push.s "filech1_4"@14052
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [69]

:[68]
pushi.e 1
pop.v.b local.game_won

:[69]
push.s "filech1_5"@14053
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [71]

:[70]
pushi.e 1
pop.v.b local.game_won

:[71]
pushloc.v local.room_id
pushi.e 413
cmp.i.v EQ
bt [74]

:[72]
pushloc.v local.room_id
pushi.e 1642
cmp.i.v EQ
bt [74]

:[73]
pushloc.v local.room_id
pushi.e 420
cmp.i.v EQ
b [75]

:[74]
push.e 1

:[75]
bf [77]

:[76]
pushloc.v local.game_won
pushi.e 1
cmp.b.v EQ
b [78]

:[77]
push.e 0

:[78]
bf [80]

:[79]
pushi.e 4426
pop.v.i local._border_image
pushi.e 1
pop.v.i 1649.border_alpha

:[80]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._border_image
call.i gml_Script_scr_draw_background_ps4_ch1(argc=3)
popz.v
push.v 1649.border_alpha
pushi.e 1
cmp.i.v NEQ
pop.v.b global.disable_border
b [92]

:[81]
pushloc.v local.border_id
push.s "Simple"@14055
cmp.s.v EQ
bt [83]

:[82]
pushloc.v local.border_id
push.s "シンプル"@14056
cmp.s.v EQ
b [84]

:[83]
push.e 1

:[84]
bf [92]

:[85]
pushglb.v global.currentroom
pop.v.v local.room_id
pushi.e 1404
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [87]

:[86]
pushi.e 1
pop.v.i 1649.border_alpha

:[87]
pushloc.v local.room_id
pushi.e 421
cmp.i.v EQ
bf [91]

:[88]
pushi.e 1646
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [91]

:[89]
push.v 1646.timer
pushi.e 1560
cmp.i.v GTE
bf [91]

:[90]
push.d 0.01
pop.v.d 1649.border_fade_value
push.v 1649.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b 1649.border_fade_out

:[91]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4425
conv.i.v
call.i gml_Script_scr_draw_background_ps4_ch1(argc=3)
popz.v
push.v 1649.border_alpha
pushi.e 1
cmp.i.v NEQ
pop.v.b global.disable_border

:[92]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
conv.b.v
call.i gml_Script_draw_enable_alphablend_ch1(argc=1)
popz.v

:[93]
pushloc.v local.return_title
conv.v.b
bf [95]

:[94]
pushi.e 0
pop.v.b 1649.border_fade_in
push.d 0.05
pop.v.d 1649.border_fade_value
push.v 1649.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b 1649.border_fade_out
push.v 1649.border_alpha
pushi.e 1
cmp.i.v NEQ
pop.v.b global.disable_border

:[95]
exit.i

:[96]
push.i [function]gml_Script_scr_draw_screen_border_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_draw_screen_border_ch1
popz.v

:[end]