.localvar 2 arguments
.localvar 762 xxx 19892
.localvar 10449 _sprite 19893

:[0]
pushi.e 0
pop.v.i self.button1
pushi.e 0
pop.v.i self.button2
pushi.e 0
pop.v.i self.button3
call.i gml_Script_button1_p_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.button1

:[2]
call.i gml_Script_button2_h_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.button2

:[4]
pushi.e -5
pushi.e 10
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bt [6]

:[5]
call.i gml_Script_scr_debug_ch1(argc=0)
conv.v.b
b [7]

:[6]
push.e 1

:[7]
bf [14]

:[8]
call.i gml_Script_button3_h_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [14]

:[9]
push.v self.automash_timer
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.automash_timer
b [12]

:[11]
pushi.e 0
pop.v.i self.automash_timer

:[12]
push.v self.automash_timer
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.button1
pushi.e 1
pop.v.i self.button2

:[14]
push.v self.dialoguer
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.formatted
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [22]

:[18]
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
push.v self.originalcharline
pop.v.v self.charline
push.v self.x
pop.v.v self.writingx
b [22]

:[20]
pushi.e 26
pop.v.i self.charline
push.v self.x
pushi.e 58
push.v self.f
mul.v.i
add.v.v
pop.v.v self.writingx
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [22]

:[21]
push.v self.writingx
pushi.e 8
sub.i.v
pop.v.v self.writingx

:[22]
push.v self.formatted
pushi.e 0
cmp.i.v EQ
bf [130]

:[23]
push.v self.mystring
call.i string_length(argc=1)
pop.v.v self.length
pushi.e -1
pop.v.i self.charpos
pushi.e -1
pop.v.i self.remspace
pushi.e -1
pop.v.i self.remchar
pushi.e 0
pop.v.i self.linecount
pushi.e 0
pop.v.i self.stringmax
pushi.e 0
pop.v.i self.aster
push.s ""@157
pop.v.s self.textalignment
pushi.e 0
pop.v.i self.i

:[24]
push.v self.i
push.v self.length
pushi.e 1
add.i.v
cmp.v.v LT
bf [126]

:[25]
pushi.e 0
pop.v.i self.skip
push.v self.i
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.thischar
push.v self.thischar
push.s "/"@4448
cmp.s.v EQ
bt [27]

:[26]
push.v self.thischar
push.s "%"@14906
cmp.s.v EQ
b [28]

:[27]
push.e 1

:[28]
bf [31]

:[29]
push.v self.charpos
pushi.e -1
cmp.i.v GT
bf [31]

:[30]
push.v self.charpos
pushi.e 1
sub.i.v
pop.v.v self.charpos

:[31]
push.v self.thischar
push.s "^"@6154
cmp.s.v EQ
bf [34]

:[32]
push.v self.charpos
pushi.e -1
cmp.i.v GT
bf [34]

:[33]
push.v self.charpos
pushi.e 2
sub.i.v
pop.v.v self.charpos

:[34]
push.v self.thischar
push.s "\\"@6159
cmp.s.v EQ
bf [100]

:[35]
push.v self.charpos
pushi.e -1
cmp.i.v GT
bf [37]

:[36]
push.v self.charpos
pushi.e 3
sub.i.v
pop.v.v self.charpos

:[37]
push.v self.i
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.nextchar
push.v self.i
pushi.e 2
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.nextchar2
push.v self.dialoguer
pushi.e 1
cmp.i.v EQ
bf [98]

:[38]
push.v self.nextchar
push.s "E"@9481
cmp.s.v EQ
bf [69]

:[39]
push.v self.nextchar2
push.s "0"@3491
cmp.s.v EQ
bf [41]

:[40]
pushi.e 0
pop.v.i global.fe

:[41]
push.v self.nextchar2
push.s "1"@9475
cmp.s.v EQ
bf [43]

:[42]
pushi.e 1
pop.v.i global.fe

:[43]
push.v self.nextchar2
push.s "2"@4175
cmp.s.v EQ
bf [45]

:[44]
pushi.e 2
pop.v.i global.fe

:[45]
push.v self.nextchar2
push.s "3"@2741
cmp.s.v EQ
bf [47]

:[46]
pushi.e 3
pop.v.i global.fe

:[47]
push.v self.nextchar2
push.s "4"@608
cmp.s.v EQ
bf [49]

:[48]
pushi.e 4
pop.v.i global.fe

:[49]
push.v self.nextchar2
push.s "5"@5306
cmp.s.v EQ
bf [51]

:[50]
pushi.e 5
pop.v.i global.fe

:[51]
push.v self.nextchar2
push.s "6"@3595
cmp.s.v EQ
bf [53]

:[52]
pushi.e 6
pop.v.i global.fe

:[53]
push.v self.nextchar2
push.s "7"@9476
cmp.s.v EQ
bf [55]

:[54]
pushi.e 7
pop.v.i global.fe

:[55]
push.v self.nextchar2
push.s "8"@9477
cmp.s.v EQ
bf [57]

:[56]
pushi.e 8
pop.v.i global.fe

:[57]
push.v self.nextchar2
push.s "9"@9478
cmp.s.v EQ
bf [59]

:[58]
pushi.e 9
pop.v.i global.fe

:[59]
push.v self.nextchar2
push.s "A"@1192
cmp.s.v EQ
bf [61]

:[60]
pushi.e 10
pop.v.i global.fe

:[61]
push.v self.nextchar2
push.s "B"@3500
cmp.s.v EQ
bf [63]

:[62]
pushi.e 11
pop.v.i global.fe

:[63]
push.v self.nextchar2
push.s "C"@9479
cmp.s.v EQ
bf [65]

:[64]
pushi.e 12
pop.v.i global.fe

:[65]
push.v self.nextchar2
push.s "D"@9480
cmp.s.v EQ
bf [67]

:[66]
pushi.e 13
pop.v.i global.fe

:[67]
push.v self.nextchar2
push.s "E"@9481
cmp.s.v EQ
bf [69]

:[68]
pushi.e 14
pop.v.i global.fe

:[69]
push.v self.nextchar
push.s "F"@5969
cmp.s.v EQ
bf [98]

:[70]
push.v self.nextchar2
push.s "0"@3491
cmp.s.v EQ
bf [72]

:[71]
pushi.e 0
pop.v.i global.fc

:[72]
push.v self.nextchar2
push.s "S"@9491
cmp.s.v EQ
bf [74]

:[73]
pushi.e 1
pop.v.i global.fc

:[74]
push.v self.nextchar2
push.s "R"@9490
cmp.s.v EQ
bf [76]

:[75]
pushi.e 2
pop.v.i global.fc

:[76]
push.v self.nextchar2
push.s "N"@9487
cmp.s.v EQ
bf [78]

:[77]
pushi.e 3
pop.v.i global.fc

:[78]
push.v self.nextchar2
push.s "T"@9492
cmp.s.v EQ
bf [80]

:[79]
pushi.e 4
pop.v.i global.fc

:[80]
push.v self.nextchar2
push.s "L"@9485
cmp.s.v EQ
bf [82]

:[81]
pushi.e 5
pop.v.i global.fc

:[82]
push.v self.nextchar2
push.s "A"@1192
cmp.s.v EQ
bf [84]

:[83]
pushi.e 10
pop.v.i global.fc

:[84]
push.v self.nextchar2
push.s "a"@7017
cmp.s.v EQ
bf [86]

:[85]
pushi.e 11
pop.v.i global.fc

:[86]
push.v self.nextchar2
push.s "B"@3500
cmp.s.v EQ
bf [88]

:[87]
pushi.e 12
pop.v.i global.fc

:[88]
push.v self.nextchar2
push.s "r"@6696
cmp.s.v EQ
bf [90]

:[89]
pushi.e 15
pop.v.i global.fc

:[90]
push.v self.nextchar2
push.s "u"@6708
cmp.s.v EQ
bf [92]

:[91]
pushi.e 18
pop.v.i global.fc

:[92]
push.v self.nextchar2
push.s "K"@4777
cmp.s.v EQ
bf [94]

:[93]
pushi.e 20
pop.v.i global.fc

:[94]
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [96]

:[95]
push.v self.originalcharline
pop.v.v self.charline
push.v self.x
pop.v.v self.writingx
b [98]

:[96]
pushi.e 26
pop.v.i self.charline
push.v self.x
pushi.e 58
push.v self.f
mul.v.i
add.v.v
pop.v.v self.writingx
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [98]

:[97]
push.v self.writingx
pushi.e 8
sub.i.v
pop.v.v self.writingx

:[98]
push.v self.nextchar
push.s "a"@7017
cmp.s.v EQ
bf [100]

:[99]
push.v self.nextchar2
pop.v.v self.textalignment

:[100]
push.v self.thischar
push.s "&"@6153
cmp.s.v EQ
bf [110]

:[101]
push.v self.charpos
push.v self.stringmax
cmp.v.v GT
bf [103]

:[102]
push.v self.charpos
pop.v.v self.stringmax

:[103]
pushi.e -1
pop.v.i self.remspace
pushi.e 0
pop.v.i self.charpos
push.v self.linecount
pushi.e 1
add.i.v
pop.v.v self.linecount
pushi.e 1
pop.v.i self.skip
push.v self.i
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.nextchar
push.v self.aster
pushi.e 1
cmp.i.v EQ
bf [107]

:[104]
push.v self.autoaster
pushi.e 1
cmp.i.v EQ
bf [107]

:[105]
push.v self.nextchar
push.s "*"@6161
cmp.s.v NEQ
bf [107]

:[106]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
b [108]

:[107]
push.e 0

:[108]
bf [110]

:[109]
pushi.e 2
pop.v.i self.charpos
push.v self.length
pushi.e 2
add.i.v
pop.v.v self.length
push.v self.i
pushi.e 1
add.i.v
push.v self.mystring
push.s "obj_writer_slash_Draw_0_gml_147_0"@38183
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_insert(argc=3)
pop.v.v self.mystring
push.v self.i
pushi.e 2
add.i.v
pop.v.v self.i

:[110]
push.v self.skip
pushi.e 0
cmp.i.v EQ
bf [125]

:[111]
push.v self.thischar
push.s " "@353
cmp.s.v EQ
bf [113]

:[112]
push.v self.i
pop.v.v self.remspace
push.v self.charpos
pop.v.v self.remchar

:[113]
push.v self.thischar
push.s "*"@6161
cmp.s.v EQ
bf [115]

:[114]
pushi.e 1
pop.v.i self.aster

:[115]
push.v self.charpos
push.v self.charline
cmp.v.v GTE
bf [124]

:[116]
push.v self.remspace
pushi.e 2
cmp.i.v GT
bf [120]

:[117]
pushi.e 1
conv.i.v
push.v self.remspace
push.v self.mystring
call.i string_delete(argc=3)
pop.v.v self.mystring
push.v self.remspace
push.v self.mystring
push.s "&"@6153
conv.s.v
call.i string_insert(argc=3)
pop.v.v self.mystring
push.v self.remspace
pushi.e 1
add.i.v
pop.v.v self.i
push.v self.remchar
push.v self.stringmax
cmp.v.v GT
bf [119]

:[118]
push.v self.remchar
pop.v.v self.stringmax

:[119]
pushi.e -1
pop.v.i self.remspace
pushi.e 1
pop.v.i self.charpos
push.v self.linecount
pushi.e 1
add.i.v
pop.v.v self.linecount
call.i gml_Script_scr_asterskip_ch1(argc=0)
popz.v
b [123]

:[120]
push.v self.charpos
push.v self.stringmax
cmp.v.v GT
bf [122]

:[121]
push.v self.charpos
pop.v.v self.stringmax

:[122]
push.v self.i
push.v self.mystring
push.s "&"@6153
conv.s.v
call.i string_insert(argc=3)
pop.v.v self.mystring
push.v self.length
pushi.e 1
add.i.v
pop.v.v self.length
pushi.e 1
pop.v.i self.charpos
pushi.e -1
pop.v.i self.remspace
push.v self.linecount
pushi.e 1
add.i.v
pop.v.v self.linecount
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
call.i gml_Script_scr_asterskip_ch1(argc=0)
popz.v

:[123]
b [125]

:[124]
push.v self.charpos
pushi.e 1
add.i.v
pop.v.v self.charpos

:[125]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [24]

:[126]
push.v self.charpos
push.v self.stringmax
cmp.v.v GT
bf [128]

:[127]
push.v self.charpos
pop.v.v self.stringmax

:[128]
pushi.e 1
pop.v.i self.formatted
push.v self.textalignment
push.s "c"@6801
cmp.s.v EQ
bf [130]

:[129]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v local.xxx
pushloc.v local.xxx
pushi.e 320
add.i.v
push.v self.stringmax
push.v self.hspace
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.writingx

:[130]
pushi.e 0
pop.v.i self.accept
push.v self.writingx
pop.v.v self.wx
push.v self.writingy
pop.v.v self.wy
pushi.e 0
pop.v.i self.colorchange
push.v self.myfont
call.i draw_set_font(argc=1)
popz.v
push.v self.mycolor
call.i draw_set_color(argc=1)
popz.v
push.v self.halt
pushi.e 0
cmp.i.v EQ
bf [134]

:[131]
push.v self.button2
pushi.e 1
cmp.i.v EQ
bf [134]

:[132]
push.v self.pos
push.v self.length
cmp.v.v LT
bf [134]

:[133]
push.v self.skippable
pushi.e 1
cmp.i.v EQ
b [135]

:[134]
push.e 0

:[135]
bf [137]

:[136]
pushi.e 1
pop.v.i self.skipme

:[137]
push.v self.skipme
pushi.e 1
cmp.i.v EQ
bf [139]

:[138]
push.v self.mystring
call.i string_length(argc=1)
pushi.e 1
add.i.v
pop.v.v self.pos
push.i 68097
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[139]
pushi.e 1
pop.v.i self.n

:[140]
push.v self.n
push.v self.pos
cmp.v.v LT
bf [398]

:[141]
pushi.e 1
pop.v.i self.accept
push.v self.n
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.mychar
push.v self.mychar
push.s "&"@6153
cmp.s.v EQ
bf [145]

:[142]
pushi.e 0
pop.v.i self.accept
push.v self.writingx
pop.v.v self.wx
push.v self.wxskip
pushi.e 1
cmp.i.v EQ
bf [144]

:[143]
push.v self.writingx
pushi.e 58
add.i.v
pop.v.v self.wx

:[144]
push.v self.wy
push.v self.vspace
add.v.v
pop.v.v self.wy

:[145]
push.v self.mychar
push.s "|"@6160
cmp.s.v EQ
bf [147]

:[146]
pushi.e 0
pop.v.i self.accept
push.v self.wx
push.v self.hspace
add.v.v
pop.v.v self.wx

:[147]
push.v self.mychar
push.s "^"@6154
cmp.s.v EQ
bf [149]

:[148]
pushi.e 0
pop.v.i self.accept
push.v self.n
pushi.e 1
add.i.v
pop.v.v self.n

:[149]
push.v self.mychar
push.s "/"@4448
cmp.s.v EQ
bf [153]

:[150]
pushi.e 1
pop.v.i self.halt
push.v self.n
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
push.s "%"@14906
cmp.s.v EQ
bf [152]

:[151]
pushi.e 2
pop.v.i self.halt

:[152]
pushi.e 0
pop.v.i self.accept

:[153]
push.v self.mychar
push.s "%"@14906
cmp.s.v EQ
bf [160]

:[154]
pushi.e 0
pop.v.i self.accept
push.v self.n
pushi.e 1
sub.i.v
push.v self.mystring
call.i string_char_at(argc=2)
push.s "/"@4448
cmp.s.v EQ
bf [156]

:[155]
pushi.e 2
pop.v.i self.halt

:[156]
push.v self.n
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
push.s "%"@14906
cmp.s.v EQ
bf [158]

:[157]
call.i instance_destroy(argc=0)
popz.v
b [160]

:[158]
push.v self.halt
pushi.e 2
cmp.i.v NEQ
bf [160]

:[159]
call.i gml_Script_scr_nextmsg_ch1(argc=0)
popz.v

:[160]
push.v self.mychar
push.s "\\"@6159
cmp.s.v EQ
bf [351]

:[161]
push.v self.n
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.nextchar
push.v self.n
pushi.e 2
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.nextchar2
push.v self.nextchar
push.s "E"@9481
cmp.s.v EQ
bf [192]

:[162]
push.v self.nextchar2
push.s "0"@3491
cmp.s.v EQ
bf [164]

:[163]
pushi.e 0
pop.v.i global.fe

:[164]
push.v self.nextchar2
push.s "1"@9475
cmp.s.v EQ
bf [166]

:[165]
pushi.e 1
pop.v.i global.fe

:[166]
push.v self.nextchar2
push.s "2"@4175
cmp.s.v EQ
bf [168]

:[167]
pushi.e 2
pop.v.i global.fe

:[168]
push.v self.nextchar2
push.s "3"@2741
cmp.s.v EQ
bf [170]

:[169]
pushi.e 3
pop.v.i global.fe

:[170]
push.v self.nextchar2
push.s "4"@608
cmp.s.v EQ
bf [172]

:[171]
pushi.e 4
pop.v.i global.fe

:[172]
push.v self.nextchar2
push.s "5"@5306
cmp.s.v EQ
bf [174]

:[173]
pushi.e 5
pop.v.i global.fe

:[174]
push.v self.nextchar2
push.s "6"@3595
cmp.s.v EQ
bf [176]

:[175]
pushi.e 6
pop.v.i global.fe

:[176]
push.v self.nextchar2
push.s "7"@9476
cmp.s.v EQ
bf [178]

:[177]
pushi.e 7
pop.v.i global.fe

:[178]
push.v self.nextchar2
push.s "8"@9477
cmp.s.v EQ
bf [180]

:[179]
pushi.e 8
pop.v.i global.fe

:[180]
push.v self.nextchar2
push.s "9"@9478
cmp.s.v EQ
bf [182]

:[181]
pushi.e 9
pop.v.i global.fe

:[182]
push.v self.nextchar2
push.s "A"@1192
cmp.s.v EQ
bf [184]

:[183]
pushi.e 10
pop.v.i global.fe

:[184]
push.v self.nextchar2
push.s "B"@3500
cmp.s.v EQ
bf [186]

:[185]
pushi.e 11
pop.v.i global.fe

:[186]
push.v self.nextchar2
push.s "C"@9479
cmp.s.v EQ
bf [188]

:[187]
pushi.e 12
pop.v.i global.fe

:[188]
push.v self.nextchar2
push.s "D"@9480
cmp.s.v EQ
bf [190]

:[189]
pushi.e 13
pop.v.i global.fe

:[190]
push.v self.nextchar2
push.s "E"@9481
cmp.s.v EQ
bf [192]

:[191]
pushi.e 14
pop.v.i global.fe

:[192]
push.v self.nextchar
push.s "F"@5969
cmp.s.v EQ
bf [221]

:[193]
push.v self.nextchar2
push.s "0"@3491
cmp.s.v EQ
bf [195]

:[194]
pushi.e 0
pop.v.i global.fc

:[195]
push.v self.nextchar2
push.s "S"@9491
cmp.s.v EQ
bf [197]

:[196]
pushi.e 1
pop.v.i global.fc

:[197]
push.v self.nextchar2
push.s "R"@9490
cmp.s.v EQ
bf [199]

:[198]
pushi.e 2
pop.v.i global.fc

:[199]
push.v self.nextchar2
push.s "N"@9487
cmp.s.v EQ
bf [201]

:[200]
pushi.e 3
pop.v.i global.fc

:[201]
push.v self.nextchar2
push.s "T"@9492
cmp.s.v EQ
bf [203]

:[202]
pushi.e 4
pop.v.i global.fc

:[203]
push.v self.nextchar2
push.s "L"@9485
cmp.s.v EQ
bf [205]

:[204]
pushi.e 5
pop.v.i global.fc

:[205]
push.v self.nextchar2
push.s "A"@1192
cmp.s.v EQ
bf [207]

:[206]
pushi.e 10
pop.v.i global.fc

:[207]
push.v self.nextchar2
push.s "a"@7017
cmp.s.v EQ
bf [209]

:[208]
pushi.e 11
pop.v.i global.fc

:[209]
push.v self.nextchar2
push.s "B"@3500
cmp.s.v EQ
bf [211]

:[210]
pushi.e 12
pop.v.i global.fc

:[211]
push.v self.nextchar2
push.s "r"@6696
cmp.s.v EQ
bf [213]

:[212]
pushi.e 15
pop.v.i global.fc

:[213]
push.v self.nextchar2
push.s "u"@6708
cmp.s.v EQ
bf [215]

:[214]
pushi.e 18
pop.v.i global.fc

:[215]
push.v self.nextchar2
push.s "K"@4777
cmp.s.v EQ
bf [217]

:[216]
pushi.e 20
pop.v.i global.fc

:[217]
push.v self.dialoguer
pushi.e 1
cmp.i.v EQ
bf [221]

:[218]
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [220]

:[219]
push.v self.originalcharline
pop.v.v self.charline
push.v self.x
pop.v.v self.wx
b [221]

:[220]
pushi.e 26
pop.v.i self.charline
push.v self.x
pushi.e 58
push.v self.f
mul.v.i
add.v.v
pop.v.v self.wx

:[221]
push.v self.nextchar
push.s "f"@767
cmp.s.v EQ
bf [223]

:[222]
push.v self.faced
pushi.e 0
cmp.i.v EQ
b [224]

:[223]
push.e 0

:[224]
bf [227]

:[225]
pushi.e 0
pop.v.i self.fam
push.v self.nextchar2
call.i real(argc=1)
pop.v.v self.fam
pushi.e 1
pop.v.i self.faced
pushi.e 1329
conv.i.v
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]self.smyy
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]self.smxx
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.smallface
push.v self.smallface
call.i instance_exists(argc=1)
conv.v.b
bf [227]

:[226]
push.v self.smallface
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.x
add.v.v
pop.i.v [stacktop]self.x
push.v self.smallface
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.y
add.v.v
pop.i.v [stacktop]self.y
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]self.smspeed
push.v self.smallface
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]self.smdir
push.v self.smallface
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]self.smtype
push.v self.smallface
pushi.e -9
pop.v.v [stacktop]self.type
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]self.smsprite
push.v self.smallface
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.i 133633
setowner.e
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]self.smalarm
push.v self.smallface
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]self.smstring
push.v self.smallface
pushi.e -9
pop.v.v [stacktop]self.mystring
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]self.smcolor
push.v self.smallface
pushi.e -9
pop.v.v [stacktop]self.mycolor
push.v self.id
push.v self.smallface
pushi.e -9
pop.v.v [stacktop]self.writergod

:[227]
push.v self.nextchar
push.s "*"@6161
cmp.s.v EQ
bf [229]

:[228]
push.v self.wx
call.i round(argc=1)
pop.v.v self.wx
pushi.e 1
conv.b.v
push.v self.nextchar2
call.i gml_Script_scr_getbuttonsprite_ch1(argc=2)
pop.v.v local._sprite
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.wy
pushi.e 2
add.i.v
push.v self.wx
pushi.e 2
add.i.v
pushi.e 0
conv.i.v
pushloc.v local._sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[229]
push.v self.nextchar
push.s "T"@9492
cmp.s.v EQ
bf [280]

:[230]
push.v self.nextchar2
push.s "0"@3491
cmp.s.v EQ
bf [235]

:[231]
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [234]

:[232]
pushi.e 6
pop.v.i global.typer
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [234]

:[233]
pushi.e 4
pop.v.i global.typer

:[234]
call.i gml_Script_scr_texttype_ch1(argc=0)
popz.v

:[235]
push.v self.nextchar2
push.s "1"@9475
cmp.s.v EQ
bf [237]

:[236]
pushi.e 2
pop.v.i global.typer
call.i gml_Script_scr_texttype_ch1(argc=0)
popz.v

:[237]
push.v self.nextchar2
push.s "A"@1192
cmp.s.v EQ
bf [239]

:[238]
pushi.e 18
pop.v.i global.typer
call.i gml_Script_scr_texttype_ch1(argc=0)
popz.v

:[239]
push.v self.nextchar2
push.s "a"@7017
cmp.s.v EQ
bf [241]

:[240]
pushi.e 20
pop.v.i global.typer
call.i gml_Script_scr_texttype_ch1(argc=0)
popz.v

:[241]
push.v self.nextchar2
push.s "N"@9487
cmp.s.v EQ
bf [243]

:[242]
pushi.e 12
pop.v.i global.typer
call.i gml_Script_scr_texttype_ch1(argc=0)
popz.v

:[243]
push.v self.nextchar2
push.s "n"@9912
cmp.s.v EQ
bf [245]

:[244]
pushi.e 23
pop.v.i global.typer
call.i gml_Script_scr_texttype_ch1(argc=0)
popz.v

:[245]
push.v self.nextchar2
push.s "B"@3500
cmp.s.v EQ
bf [247]

:[246]
pushi.e 13
pop.v.i global.typer
call.i gml_Script_scr_texttype_ch1(argc=0)
popz.v

:[247]
push.v self.nextchar2
push.s "S"@9491
cmp.s.v EQ
bf [252]

:[248]
pushi.e 10
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [251]

:[249]
pushi.e 30
pop.v.i global.typer
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [251]

:[250]
pushi.e 47
pop.v.i global.typer

:[251]
call.i gml_Script_scr_texttype_ch1(argc=0)
popz.v

:[252]
push.v self.nextchar2
push.s "R"@9490
cmp.s.v EQ
bf [258]

:[253]
pushi.e 31
pop.v.i global.typer
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [255]

:[254]
pushi.e 45
pop.v.i global.typer

:[255]
pushi.e -5
pushi.e 30
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [257]

:[256]
pushi.e 6
pop.v.i global.typer

:[257]
call.i gml_Script_scr_texttype_ch1(argc=0)
popz.v

:[258]
push.v self.nextchar2
push.s "L"@9485
cmp.s.v EQ
bf [262]

:[259]
pushi.e 32
pop.v.i global.typer
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [261]

:[260]
pushi.e 46
pop.v.i global.typer

:[261]
call.i gml_Script_scr_texttype_ch1(argc=0)
popz.v

:[262]
push.v self.nextchar2
push.s "X"@5605
cmp.s.v EQ
bf [264]

:[263]
pushi.e 40
pop.v.i global.typer
call.i gml_Script_scr_texttype_ch1(argc=0)
popz.v

:[264]
push.v self.nextchar2
push.s "r"@6696
cmp.s.v EQ
bf [266]

:[265]
pushi.e 55
pop.v.i global.typer
call.i gml_Script_scr_texttype_ch1(argc=0)
popz.v

:[266]
push.v self.nextchar2
push.s "T"@9492
cmp.s.v EQ
bf [268]

:[267]
pushi.e 7
pop.v.i global.typer
call.i gml_Script_scr_texttype_ch1(argc=0)
popz.v

:[268]
push.v self.nextchar2
push.s "J"@9484
cmp.s.v EQ
bf [270]

:[269]
pushi.e 35
pop.v.i global.typer
call.i gml_Script_scr_texttype_ch1(argc=0)
popz.v

:[270]
push.v self.nextchar2
push.s "K"@4777
cmp.s.v EQ
bf [276]

:[271]
pushi.e 33
pop.v.i global.typer
pushglb.v global.plot
pushi.e 235
cmp.i.v LT
bf [273]

:[272]
pushi.e 36
pop.v.i global.typer

:[273]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [275]

:[274]
pushi.e 48
pop.v.i global.typer

:[275]
call.i gml_Script_scr_texttype_ch1(argc=0)
popz.v

:[276]
push.v self.dialoguer
pushi.e 1
cmp.i.v EQ
bf [280]

:[277]
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [279]

:[278]
push.v self.originalcharline
pop.v.v self.charline
push.v self.x
pop.v.v self.wx
b [280]

:[279]
pushi.e 1
pop.v.i self.wxskip

:[280]
push.v self.nextchar
push.s "s"@6692
cmp.s.v EQ
bf [285]

:[281]
push.v self.nextchar2
push.s "0"@3491
cmp.s.v EQ
bf [283]

:[282]
pushi.e 0
pop.v.i self.skippable

:[283]
push.v self.nextchar2
push.s "1"@9475
cmp.s.v EQ
bf [285]

:[284]
pushi.e 1
pop.v.i self.skippable

:[285]
push.v self.nextchar
push.s "c"@6801
cmp.s.v EQ
bf [300]

:[286]
pushi.e 1
pop.v.i self.colorchange
push.v self.nextchar2
push.s "R"@9490
cmp.s.v EQ
bf [288]

:[287]
pushi.e 255
pop.v.i self.xcolor

:[288]
push.v self.nextchar2
push.s "B"@3500
cmp.s.v EQ
bf [290]

:[289]
push.i 16711680
pop.v.i self.xcolor

:[290]
push.v self.nextchar2
push.s "Y"@5384
cmp.s.v EQ
bf [292]

:[291]
push.i 65535
pop.v.i self.xcolor

:[292]
push.v self.nextchar2
push.s "G"@9482
cmp.s.v EQ
bf [294]

:[293]
push.i 65280
pop.v.i self.xcolor

:[294]
push.v self.nextchar2
push.s "W"@9494
cmp.s.v EQ
bf [296]

:[295]
push.i 16777215
pop.v.i self.xcolor

:[296]
push.v self.nextchar2
push.s "X"@5605
cmp.s.v EQ
bf [298]

:[297]
pushi.e 0
pop.v.i self.xcolor

:[298]
push.v self.nextchar2
push.s "0"@3491
cmp.s.v EQ
bf [300]

:[299]
push.v self.mycolor
pop.v.v self.xcolor

:[300]
push.v self.nextchar
push.s "C"@9479
cmp.s.v EQ
bf [313]

:[301]
push.v self.nextchar2
push.s "1"@9475
cmp.s.v EQ
bf [305]

:[302]
pushi.e 1325
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [304]

:[303]
pushi.e 1325
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.choicer

:[304]
pushi.e 5
pop.v.i self.halt

:[305]
push.v self.nextchar2
push.s "2"@4175
cmp.s.v EQ
bt [308]

:[306]
push.v self.nextchar2
push.s "3"@2741
cmp.s.v EQ
bt [308]

:[307]
push.v self.nextchar2
push.s "4"@608
cmp.s.v EQ
b [309]

:[308]
push.e 1

:[309]
bf [313]

:[310]
pushi.e 1326
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [312]

:[311]
pushi.e 1326
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.choicer
push.v self.nextchar2
call.i real(argc=1)
pushi.e 1
sub.i.v
push.v self.choicer
pushi.e -9
pop.v.v [stacktop]self.choicetotal

:[312]
pushi.e 5
pop.v.i self.halt

:[313]
push.v self.nextchar
push.s "M"@9486
cmp.s.v EQ
bf [334]

:[314]
push.v self.nextchar2
push.s "0"@3491
cmp.s.v EQ
bf [316]

:[315]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[316]
push.v self.nextchar2
push.s "1"@9475
cmp.s.v EQ
bf [318]

:[317]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[318]
push.v self.nextchar2
push.s "2"@4175
cmp.s.v EQ
bf [320]

:[319]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[320]
push.v self.nextchar2
push.s "3"@2741
cmp.s.v EQ
bf [322]

:[321]
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[322]
push.v self.nextchar2
push.s "4"@608
cmp.s.v EQ
bf [324]

:[323]
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[324]
push.v self.nextchar2
push.s "5"@5306
cmp.s.v EQ
bf [326]

:[325]
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[326]
push.v self.nextchar2
push.s "6"@3595
cmp.s.v EQ
bf [328]

:[327]
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[328]
push.v self.nextchar2
push.s "7"@9476
cmp.s.v EQ
bf [330]

:[329]
pushi.e 7
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[330]
push.v self.nextchar2
push.s "8"@9477
cmp.s.v EQ
bf [332]

:[331]
pushi.e 8
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[332]
push.v self.nextchar2
push.s "9"@9478
cmp.s.v EQ
bf [334]

:[333]
pushi.e 9
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[334]
push.v self.nextchar
push.s "S"@9491
cmp.s.v EQ
bf [344]

:[335]
push.v self.sound_played
pushi.e 0
cmp.i.v EQ
bf [344]

:[336]
pushi.e 0
pop.v.i self.i

:[337]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [344]

:[338]
push.v self.nextchar2
push.v self.i
call.i string(argc=1)
cmp.v.v EQ
bf [340]

:[339]
push.v self.sound_played
pushi.e 0
cmp.i.v EQ
b [341]

:[340]
push.e 0

:[341]
bf [343]

:[342]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.writersnd
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i self.sound_played

:[343]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [337]

:[344]
push.v self.nextchar
push.s "I"@9483
cmp.s.v EQ
bf [350]

:[345]
pushi.e 0
pop.v.i self.i

:[346]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [350]

:[347]
push.v self.nextchar2
push.v self.i
call.i string(argc=1)
cmp.v.v EQ
bf [349]

:[348]
push.v self.wy
pushi.e 4
add.i.v
push.v self.wx
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.writerimg
call.i draw_sprite(argc=4)
popz.v

:[349]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [346]

:[350]
pushi.e 0
pop.v.i self.accept
push.v self.n
pushi.e 2
add.i.v
pop.v.v self.n

:[351]
push.v self.accept
pushi.e 1
cmp.i.v EQ
bf [397]

:[352]
push.v self.colorchange
pushi.e 1
cmp.i.v EQ
bf [354]

:[353]
push.v self.xcolor
call.i draw_set_color(argc=1)
popz.v

:[354]
push.v self.special
pushi.e 0
cmp.i.v EQ
bf [356]

:[355]
pushi.e 0
conv.i.v
push.v self.textscale
push.v self.textscale
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.wx
push.v self.shake
call.i random(argc=1)
add.v.v
call.i draw_text_transformed(argc=6)
popz.v

:[356]
push.v self.special
pushi.e 1
cmp.i.v GTE
bf [374]

:[357]
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [364]

:[358]
call.i draw_get_color(argc=0)
push.i 16777215
cmp.i.v NEQ
bf [360]

:[359]
call.i draw_get_color(argc=0)
pushi.e 0
cmp.i.v NEQ
b [361]

:[360]
push.e 0

:[361]
bf [363]

:[362]
push.d 0.3
conv.d.v
push.v self.xcolor
push.v self.xcolor
push.v self.xcolor
push.v self.xcolor
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.shake
call.i random(argc=1)
add.v.v
pushi.e 1
add.i.v
push.v self.wx
push.v self.shake
call.i random(argc=1)
add.v.v
pushi.e 1
add.i.v
call.i draw_text_color(argc=8)
popz.v
pushi.e 1
conv.i.v
push.v self.xcolor
push.v self.xcolor
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.wx
push.v self.shake
call.i random(argc=1)
add.v.v
call.i draw_text_color(argc=8)
popz.v
b [364]

:[363]
pushi.e 1
conv.i.v
push.i 8388608
conv.i.v
push.i 8388608
conv.i.v
push.i 4210752
conv.i.v
push.i 4210752
conv.i.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.shake
call.i random(argc=1)
add.v.v
pushi.e 1
add.i.v
push.v self.wx
push.v self.shake
call.i random(argc=1)
add.v.v
pushi.e 1
add.i.v
call.i draw_text_color(argc=8)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.wx
push.v self.shake
call.i random(argc=1)
add.v.v
call.i draw_text(argc=3)
popz.v

:[364]
push.v self.special
pushi.e 2
cmp.i.v EQ
bf [366]

:[365]
pushi.e 1
push.v self.specfade
mul.v.i
call.i draw_set_alpha(argc=1)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.wx
call.i draw_text(argc=3)
popz.v
push.d 0.3
push.v self.siner
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.v self.specfade
mul.v.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.wx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.wx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
pushi.e 1
add.i.v
push.v self.wx
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
pushi.e 1
sub.i.v
push.v self.wx
call.i draw_text(argc=3)
popz.v
push.d 0.08
push.v self.siner
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.04
mul.d.v
add.v.d
push.v self.specfade
mul.v.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
pushi.e 1
add.i.v
push.v self.wx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
pushi.e 1
sub.i.v
push.v self.wx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
pushi.e 1
add.i.v
push.v self.wx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
pushi.e 1
sub.i.v
push.v self.wx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[366]
push.v self.special
pushi.e 3
cmp.i.v EQ
bf [374]

:[367]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.wx
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
call.i draw_text(argc=3)
popz.v
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.wx
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.wx
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.wx
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[368]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [373]

:[369]
pushi.e 315
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.ddir
push.v self.n
pushi.e 1
cmp.i.v EQ
bf [372]

:[370]
push.i 168109
setowner.e
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.specx
push.v self.ddir
pushi.e 2
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.i.v [array]self.specx
push.i 168110
setowner.e
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.specy
push.v self.ddir
pushi.e 2
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.i.v [array]self.specy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.specx
pushi.e 40
cmp.i.v GTE
bf [372]

:[371]
push.i 168109
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.specx
push.i 168110
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.specy

:[372]
pushi.e 40
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.specx
sub.v.i
pushi.e 40
conv.i.d
div.d.v
push.d 0.7
mul.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.specy
add.v.v
push.v self.wx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.specx
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [368]

:[373]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[374]
push.v self.wx
push.v self.hspace
add.v.v
pop.v.v self.wx
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [383]

:[375]
push.v self.mychar
call.i ord(argc=1)
pushi.e 256
cmp.i.v LT
bt [380]

:[376]
push.v self.mychar
call.i ord(argc=1)
push.i 65377
cmp.i.v GTE
bf [378]

:[377]
push.v self.mychar
call.i ord(argc=1)
push.i 65439
cmp.i.v LTE
b [379]

:[378]
push.e 0

:[379]
b [381]

:[380]
push.e 1

:[381]
bf [383]

:[382]
push.v self.wx
push.v self.hspace
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.wx

:[383]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [397]

:[384]
push.v self.myfont
pushi.e 4
cmp.i.v EQ
bf [397]

:[385]
push.v self.mychar
push.s "w"@6852
cmp.s.v EQ
bf [387]

:[386]
push.v self.wx
pushi.e 2
add.i.v
pop.v.v self.wx

:[387]
push.v self.mychar
push.s "m"@14915
cmp.s.v EQ
bf [389]

:[388]
push.v self.wx
pushi.e 3
add.i.v
pop.v.v self.wx

:[389]
push.v self.mychar
push.s "i"@107
cmp.s.v EQ
bf [391]

:[390]
push.v self.wx
pushi.e 2
sub.i.v
pop.v.v self.wx

:[391]
push.v self.mychar
push.s "l"@6707
cmp.s.v EQ
bf [393]

:[392]
push.v self.wx
pushi.e 2
sub.i.v
pop.v.v self.wx

:[393]
push.v self.mychar
push.s "s"@6692
cmp.s.v EQ
bf [395]

:[394]
push.v self.wx
pushi.e 1
sub.i.v
pop.v.v self.wx

:[395]
push.v self.mychar
push.s "j"@220
cmp.s.v EQ
bf [397]

:[396]
push.v self.wx
pushi.e 1
sub.i.v
pop.v.v self.wx

:[397]
push.v self.n
pushi.e 1
add.i.v
pop.v.v self.n
b [140]

:[398]
push.v self.halt
pushi.e 0
cmp.i.v NEQ
bf [401]

:[399]
push.v self.button1
pushi.e 1
cmp.i.v EQ
bf [401]

:[400]
push.v self.siner
pushi.e 0
cmp.i.v GT
b [402]

:[401]
push.e 0

:[402]
bf [419]

:[403]
push.v self.halt
pushi.e 1
cmp.i.v EQ
bf [409]

:[404]
call.i gml_Script_scr_nextmsg_ch1(argc=0)
popz.v
push.v self.faced
pushi.e 1
cmp.i.v EQ
bf [409]

:[405]
push.v self.smallface
pushi.e -9
pushenv [408]

:[406]
push.v self.getrid
pushi.e 0
cmp.i.v EQ
bf [408]

:[407]
pushi.e 1
pop.v.i self.getrid

:[408]
popenv [406]
pushi.e 0
pop.v.i self.faced

:[409]
push.v self.halt
pushi.e 2
cmp.i.v EQ
bf [419]

:[410]
push.v self.faced
pushi.e 1
cmp.i.v EQ
bf [414]

:[411]
push.v self.smallface
pushi.e -9
pushenv [413]

:[412]
call.i instance_destroy(argc=0)
popz.v

:[413]
popenv [412]
pushi.e 0
pop.v.i self.faced

:[414]
push.v self.facer
pushi.e 1
cmp.i.v EQ
bf [418]

:[415]
pushi.e 1328
pushenv [417]

:[416]
call.i instance_destroy(argc=0)
popz.v

:[417]
popenv [416]

:[418]
call.i instance_destroy(argc=0)
popz.v

:[419]
pushi.e 0
pop.v.i self.skipme
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[end]