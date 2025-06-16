.localvar 2 arguments
.localvar 14036 border_id 18159
.localvar 14037 return_title 18160
.localvar 14045 room_id 18161

:[0]
pushglb.v global.screen_border_id
pop.v.v local.border_id
pushi.e 0
pop.v.b local.return_title
push.s "chapter_return"@14038
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [3]

:[1]
pushglb.v global.chapter_return
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e 1
pop.v.b local.return_title

:[3]
pushloc.v local.return_title
conv.v.b
not.b
bf [213]

:[4]
pushloc.v local.border_id
push.s "Dynamic"@14040
cmp.s.v EQ
bt [6]

:[5]
pushloc.v local.border_id
push.s "ダイナミック"@14041
cmp.s.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [202]

:[8]
push.v self.loaded
conv.v.b
not.b
bf [10]

:[9]
pushi.e 0
pop.v.i self.border_alpha
pushi.e 1
pop.v.b self.loaded

:[10]
push.d 0.025
pop.v.d self.border_fade_value
push.s "currentroom"@266
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [12]

:[11]
pushbltn.v builtin.room
pop.v.v global.currentroom

:[12]
pushbltn.v builtin.room
pop.v.v local.room_id
pushglb.v global.darkzone
conv.v.b
bf [14]

:[13]
pushi.e 3225
conv.i.v
b [15]

:[14]
pushi.e 3224
conv.i.v

:[15]
pop.v.v self._border_image
pushloc.v local.room_id
pushi.e 234
cmp.i.v EQ
bt [19]

:[16]
pushloc.v local.room_id
pushi.e 886
cmp.i.v EQ
bt [19]

:[17]
pushloc.v local.room_id
pushi.e 244
cmp.i.v EQ
bt [19]

:[18]
pushloc.v local.room_id
pushi.e 241
cmp.i.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
pushi.e 3225
pop.v.i self._border_image

:[22]
pushloc.v local.room_id
pushi.e 84
cmp.i.v GTE
bf [24]

:[23]
pushloc.v local.room_id
pushi.e 118
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 3226
pop.v.i self._border_image

:[27]
pushloc.v local.room_id
pushi.e 118
cmp.i.v GTE
bf [29]

:[28]
pushloc.v local.room_id
pushi.e 160
cmp.i.v LT
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 3228
pop.v.i self._border_image

:[32]
pushloc.v local.room_id
pushi.e 160
cmp.i.v GTE
bf [34]

:[33]
pushloc.v local.room_id
pushi.e 218
cmp.i.v LTE
b [35]

:[34]
push.e 0

:[35]
bt [38]

:[36]
pushloc.v local.room_id
pushi.e 4
cmp.i.v EQ
bt [38]

:[37]
pushloc.v local.room_id
pushi.e 3
cmp.i.v EQ
b [39]

:[38]
push.e 1

:[39]
bf [41]

:[40]
pushi.e 3227
pop.v.i self._border_image

:[41]
pushloc.v local.room_id
pushi.e 237
cmp.i.v EQ
bf [44]

:[42]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [44]

:[43]
pushi.e 3226
pop.v.i self._border_image

:[44]
pushloc.v local.room_id
pushi.e 238
cmp.i.v EQ
bf [46]

:[45]
pushi.e 3227
pop.v.i self._border_image

:[46]
pushloc.v local.room_id
pushi.e 239
cmp.i.v EQ
bf [48]

:[47]
pushi.e 3228
pop.v.i self._border_image

:[48]
pushloc.v local.room_id
pushi.e 27
cmp.i.v EQ
bt [55]

:[49]
pushloc.v local.room_id
pushi.e 881
cmp.i.v EQ
bt [55]

:[50]
pushloc.v local.room_id
pushi.e 244
cmp.i.v EQ
bt [55]

:[51]
pushloc.v local.room_id
pushi.e 240
cmp.i.v EQ
bt [55]

:[52]
pushloc.v local.room_id
pushi.e 233
cmp.i.v EQ
bt [55]

:[53]
pushloc.v local.room_id
pushi.e 12
cmp.i.v EQ
bt [55]

:[54]
pushloc.v local.room_id
pushi.e 2
cmp.i.v EQ
b [56]

:[55]
push.e 1

:[56]
bf [58]

:[57]
pushi.e 0
pop.v.i self.border_alpha
b [84]

:[58]
pushloc.v local.room_id
pushi.e 63
cmp.i.v EQ
bt [60]

:[59]
pushloc.v local.room_id
pushi.e 271
cmp.i.v EQ
b [61]

:[60]
push.e 1

:[61]
bf [63]

:[62]
push.v self.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b self.border_fade_out
b [84]

:[63]
pushloc.v local.room_id
pushi.e 33
cmp.i.v EQ
bt [66]

:[64]
pushloc.v local.room_id
pushi.e 65
cmp.i.v EQ
bt [66]

:[65]
pushloc.v local.room_id
pushi.e 40
cmp.i.v EQ
b [67]

:[66]
push.e 1

:[67]
bf [69]

:[68]
push.v self.border_alpha
pushi.e 1
cmp.i.v LT
pop.v.b self.border_fade_in
b [84]

:[69]
pushi.e 127
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [84]

:[70]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [83]

:[71]
pushloc.v local.room_id
pushi.e 162
cmp.i.v EQ
bf [73]

:[72]
pushglb.v global.plot
pushi.e 101
cmp.i.v GTE
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
pushi.e 1
pop.v.i self.border_alpha

:[76]
pushloc.v local.room_id
pushi.e 167
cmp.i.v EQ
bf [78]

:[77]
pushi.e 1
pop.v.i self.border_alpha

:[78]
pushloc.v local.room_id
pushi.e 203
cmp.i.v EQ
bf [80]

:[79]
pushi.e 1
pop.v.i self.border_alpha

:[80]
pushloc.v local.room_id
pushi.e 71
cmp.i.v EQ
bf [82]

:[81]
pushi.e 1
pop.v.i self.border_alpha

:[82]
b [84]

:[83]
pushi.e 1
pop.v.i self.border_alpha

:[84]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [98]

:[85]
pushloc.v local.room_id
pushi.e 64
cmp.i.v EQ
bf [90]

:[86]
pushi.e 72
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [90]

:[87]
push.v 72.lightsoff
pushi.e 0
cmp.i.v EQ
bf [89]

:[88]
push.v self.border_alpha
pushi.e 1
cmp.i.v LT
pop.v.b self.border_fade_in
b [90]

:[89]
pushi.e 0
pop.v.i self.border_alpha

:[90]
pushloc.v local.room_id
pushi.e 28
cmp.i.v EQ
bf [98]

:[91]
pushi.e 85
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [98]

:[92]
push.v 85.con
pushi.e 50
cmp.i.v GTE
bf [94]

:[93]
push.v self.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b self.border_fade_out
b [98]

:[94]
pushglb.v global.plot
pushi.e 10
cmp.i.v LTE
bf [96]

:[95]
pushi.e 0
conv.i.v
b [97]

:[96]
pushi.e 1
conv.i.v

:[97]
pop.v.v self.border_alpha

:[98]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [185]

:[99]
pushloc.v local.room_id
pushi.e 28
cmp.i.v EQ
bf [103]

:[100]
pushi.e 85
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [103]

:[101]
push.v 85.show_border
conv.v.b
bf [103]

:[102]
pushi.e 1
pop.v.i self.border_alpha

:[103]
pushloc.v local.room_id
pushi.e 62
cmp.i.v EQ
bf [107]

:[104]
pushi.e 944
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [106]

:[105]
pushi.e 0
pop.v.b self.border_fade_in
push.v self.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b self.border_fade_out
b [107]

:[106]
pushi.e 0
pop.v.b self.border_fade_out
push.v self.border_alpha
pushi.e 1
cmp.i.v LT
pop.v.b self.border_fade_in

:[107]
pushloc.v local.room_id
pushi.e 70
cmp.i.v EQ
bf [114]

:[108]
pushi.e 943
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [111]

:[109]
push.v 943.con
pushi.e 10
cmp.i.v GTE
bf [111]

:[110]
pushi.e 0
pop.v.b self.border_fade_in
push.v self.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b self.border_fade_out

:[111]
pushi.e 944
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [114]

:[112]
push.v 944.timer
pushi.e 30
cmp.i.v GTE
bf [114]

:[113]
pushi.e 0
pop.v.b self.border_fade_out
push.v self.border_alpha
pushi.e 1
cmp.i.v LT
pop.v.b self.border_fade_in

:[114]
pushloc.v local.room_id
pushi.e 84
cmp.i.v GTE
bf [117]

:[115]
pushloc.v local.room_id
pushi.e 107
cmp.i.v LTE
bf [117]

:[116]
pushloc.v local.room_id
pushi.e 101
cmp.i.v NEQ
b [118]

:[117]
push.e 0

:[118]
bf [120]

:[119]
push.v self.border_alpha
pushi.e 1
cmp.i.v LT
pop.v.b self.border_fade_in

:[120]
pushloc.v local.room_id
pushi.e 72
cmp.i.v EQ
bf [127]

:[121]
pushglb.v global.plot
pushi.e 10
cmp.i.v LTE
bf [126]

:[122]
pushi.e 931
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [125]

:[123]
push.v 931.con
pushi.e 50
cmp.i.v GTE
bf [125]

:[124]
push.v self.border_alpha
pushi.e 1
cmp.i.v LT
pop.v.b self.border_fade_in

:[125]
b [127]

:[126]
pushi.e 1
pop.v.i self.border_alpha

:[127]
pushloc.v local.room_id
pushi.e 52
cmp.i.v EQ
bf [130]

:[128]
pushi.e 944
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [130]

:[129]
push.v self.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b self.border_fade_out

:[130]
pushloc.v local.room_id
pushi.e 101
cmp.i.v EQ
bf [134]

:[131]
pushi.e 952
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [134]

:[132]
push.v 952.hide_border
pushi.e 1
cmp.b.v EQ
bf [134]

:[133]
push.v self.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b self.border_fade_out

:[134]
pushloc.v local.room_id
pushi.e 122
cmp.i.v EQ
bf [136]

:[135]
push.v self.border_alpha
pushi.e 1
cmp.i.v LT
pop.v.b self.border_fade_in

:[136]
pushloc.v local.room_id
pushi.e 120
cmp.i.v EQ
bf [140]

:[137]
pushglb.v global.plot
pushi.e 67
cmp.i.v GTE
bf [139]

:[138]
push.v self.border_alpha
pushi.e 1
cmp.i.v LT
pop.v.b self.border_fade_in
b [140]

:[139]
pushi.e 0
pop.v.i self.alpha_border

:[140]
pushloc.v local.room_id
pushi.e 123
cmp.i.v GTE
bf [143]

:[141]
pushloc.v local.room_id
pushi.e 152
cmp.i.v LTE
bf [143]

:[142]
pushloc.v local.room_id
pushi.e 146
cmp.i.v NEQ
b [144]

:[143]
push.e 0

:[144]
bf [146]

:[145]
pushi.e 1
pop.v.i self.border_alpha

:[146]
pushloc.v local.room_id
pushi.e 146
cmp.i.v EQ
bf [150]

:[147]
pushi.e 1012
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [150]

:[148]
push.v 1012.circle_zoom_timer
pushi.e 50
cmp.i.v GTE
bf [150]

:[149]
pushi.e 0
pop.v.b self.border_fade_in
push.v self.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b self.border_fade_out

:[150]
pushloc.v local.room_id
pushi.e 160
cmp.i.v EQ
bf [152]

:[151]
pushi.e 0
pop.v.i self.border_alpha
pushi.e 0
pop.v.b self.border_fade_out
pushi.e 0
pop.v.b self.border_fade_in

:[152]
pushloc.v local.room_id
pushi.e 162
cmp.i.v EQ
bf [154]

:[153]
pushi.e 0
pop.v.b self.border_fade_out
push.v self.border_alpha
pushi.e 1
cmp.i.v LT
pop.v.b self.border_fade_in

:[154]
pushloc.v local.room_id
pushi.e 179
cmp.i.v EQ
bf [156]

:[155]
push.d 0.01
pop.v.d self.border_fade_value
push.v self.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b self.border_fade_out

:[156]
pushloc.v local.room_id
pushi.e 174
cmp.i.v EQ
bf [158]

:[157]
push.v self.border_alpha
pushi.e 1
cmp.i.v LT
pop.v.b self.border_fade_in

:[158]
pushloc.v local.room_id
pushi.e 180
cmp.i.v GTE
bf [160]

:[159]
pushloc.v local.room_id
pushi.e 189
cmp.i.v LTE
b [161]

:[160]
push.e 0

:[161]
bf [163]

:[162]
pushi.e 0
pop.v.i self.border_alpha

:[163]
pushloc.v local.room_id
pushi.e 197
cmp.i.v EQ
bf [165]

:[164]
pushi.e 1
pop.v.i self.border_alpha

:[165]
pushloc.v local.room_id
pushi.e 206
cmp.i.v EQ
bf [167]

:[166]
pushi.e 1
pop.v.i self.border_alpha

:[167]
pushloc.v local.room_id
pushi.e 4
cmp.i.v EQ
bf [169]

:[168]
pushi.e 1
pop.v.i self.border_alpha

:[169]
pushloc.v local.room_id
pushi.e 3
cmp.i.v EQ
bf [171]

:[170]
push.v self.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b self.border_fade_out

:[171]
pushloc.v local.room_id
pushi.e 208
cmp.i.v EQ
bf [177]

:[172]
pushi.e 989
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [177]

:[173]
push.v 989.hide_border
conv.v.b
bf [175]

:[174]
pushi.e 0
pop.v.b self.border_fade_in
push.v self.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b self.border_fade_out
b [177]

:[175]
push.v 989.show_border
conv.v.b
bf [177]

:[176]
pushi.e 0
pop.v.b self.border_fade_out
push.v self.border_alpha
pushi.e 1
cmp.i.v LT
pop.v.b self.border_fade_in

:[177]
pushloc.v local.room_id
pushi.e 54
cmp.i.v EQ
bf [181]

:[178]
pushi.e 992
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [181]

:[179]
push.v 992.show_border
conv.v.b
bf [181]

:[180]
push.v self.border_alpha
pushi.e 1
cmp.i.v LT
pop.v.b self.border_fade_in

:[181]
pushloc.v local.room_id
pushi.e 31
cmp.i.v EQ
bf [185]

:[182]
pushi.e 997
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [185]

:[183]
push.v 997.hide_border
conv.v.b
bf [185]

:[184]
pushi.e 0
pop.v.b self.border_fade_in
push.v self.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b self.border_fade_out

:[185]
pushloc.v local.room_id
pushi.e 242
cmp.i.v EQ
bf [192]

:[186]
pushi.e 884
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [192]

:[187]
push.v 884.EVENT
pushi.e 27
cmp.i.v GTE
bf [189]

:[188]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [190]

:[189]
push.e 0

:[190]
bf [192]

:[191]
pushi.e 0
pop.v.i self.border_alpha

:[192]
pushloc.v local.room_id
pushi.e 234
cmp.i.v EQ
bt [195]

:[193]
pushloc.v local.room_id
pushi.e 886
cmp.i.v EQ
bt [195]

:[194]
pushloc.v local.room_id
pushi.e 244
cmp.i.v EQ
b [196]

:[195]
push.e 1

:[196]
bf [198]

:[197]
pushglb.v global.game_won
pushi.e 1
cmp.i.v EQ
b [199]

:[198]
push.e 0

:[199]
bf [201]

:[200]
pushi.e 3225
pop.v.i self._border_image
pushi.e 1
pop.v.i self.border_alpha

:[201]
push.v self.border_alpha
pushi.e 1
cmp.i.v NEQ
pop.v.b global.disable_border
b [213]

:[202]
pushloc.v local.border_id
push.s "Simple"@14055
cmp.s.v EQ
bt [204]

:[203]
pushloc.v local.border_id
push.s "シンプル"@14056
cmp.s.v EQ
b [205]

:[204]
push.e 1

:[205]
bf [213]

:[206]
pushglb.v global.currentroom
pop.v.v local.room_id
pushi.e 127
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [208]

:[207]
pushi.e 1
pop.v.i self.border_alpha

:[208]
pushloc.v local.room_id
pushi.e 245
cmp.i.v EQ
bf [212]

:[209]
pushi.e 890
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [212]

:[210]
push.v 890.timer
pushi.e 1560
cmp.i.v GTE
bf [212]

:[211]
push.d 0.01
pop.v.d self.border_fade_value
push.v self.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b self.border_fade_out

:[212]
push.v self.border_alpha
pushi.e 1
cmp.i.v NEQ
pop.v.b global.disable_border

:[213]
pushloc.v local.return_title
conv.v.b
bf [end]

:[214]
pushi.e 0
pop.v.b self.border_fade_in
push.d 0.05
pop.v.d self.border_fade_value
push.v self.border_alpha
pushi.e 0
cmp.i.v GT
pop.v.b self.border_fade_out
push.v self.border_alpha
pushi.e 1
cmp.i.v NEQ
pop.v.b global.disable_border

:[end]