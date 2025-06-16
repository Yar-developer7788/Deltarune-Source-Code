.localvar 2 arguments
.localvar 10449 _sprite 6799
.localvar 14921 y_offset 6800
.localvar 14922 x_offset 6801

:[0]
pushi.e 0
pop.v.i self.button1
pushi.e 0
pop.v.i self.button2
pushi.e 0
pop.v.i self.button3
pushi.e -1
pop.v.i self.miniface_drawn
call.i gml_Script_button1_p(argc=0)
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.prevent_mash_buffer
pushi.e 0
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.button1

:[5]
call.i gml_Script_button2_h(argc=0)
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.prevent_mash_buffer
pushi.e 0
cmp.i.v LTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.button2

:[10]
pushi.e -5
pushi.e 10
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bt [12]

:[11]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
b [13]

:[12]
push.e 1

:[13]
bf [22]

:[14]
call.i gml_Script_button3_h(argc=0)
pushi.e 1
cmp.i.v EQ
bf [22]

:[15]
pushi.e 3
pop.v.i self.prevent_mash_buffer
push.v self.automash_timer
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.i self.automash_timer
b [18]

:[17]
pushi.e 0
pop.v.i self.automash_timer

:[18]
push.v self.automash_timer
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
pop.v.i self.button1

:[20]
push.v self.automash_timer
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i self.button2

:[22]
push.v self.forcebutton1
conv.v.b
bf [24]

:[23]
pushi.e 1
pop.v.i self.button1

:[24]
push.v self.prevent_mash_buffer
push.e 1
sub.i.v
pop.v.v self.prevent_mash_buffer
push.v self.dialoguer
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.v self.formatted
pushi.e 0
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [35]

:[28]
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
push.v self.originalcharline
pop.v.v self.charline
push.v self.x
pop.v.v self.writingx
b [31]

:[30]
pushi.e 26
pop.v.i self.charline
push.v self.x
pushi.e 58
push.v self.f
mul.v.i
add.v.v
pop.v.v self.writingx

:[31]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [35]

:[32]
push.v 63.zurasucon
pushi.e 2
cmp.i.v EQ
bf [35]

:[33]
call.i gml_Script_camerax(argc=0)
push.v 63.remwriterx
add.v.v
pop.v.v self.writingx
pushglb.v global.fc
pushi.e 0
cmp.i.v GT
bf [35]

:[34]
call.i gml_Script_camerax(argc=0)
push.v 63.remwriterx
add.v.v
pushi.e 58
push.v self.f
mul.v.i
add.v.v
pop.v.v self.writingx

:[35]
push.v self.formatted
pushi.e 0
cmp.i.v EQ
bf [146]

:[36]
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
pushi.e 0
pop.v.i self.i

:[37]
push.v self.i
push.v self.length
pushi.e 1
add.i.v
cmp.v.v LT
bf [141]

:[38]
pushi.e 0
pop.v.i self.skip
push.v self.i
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.thischar
push.v self.thischar
push.s "`"@6238
cmp.s.v EQ
bf [40]

:[39]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [125]

:[40]
push.v self.thischar
push.s "/"@4448
cmp.s.v EQ
bt [42]

:[41]
push.v self.thischar
push.s "%"@14906
cmp.s.v EQ
b [43]

:[42]
push.e 1

:[43]
bf [47]

:[44]
push.v self.charpos
pushi.e -1
cmp.i.v GT
bf [46]

:[45]
push.v self.charpos
pushi.e 1
sub.i.v
pop.v.v self.charpos

:[46]
b [125]

:[47]
push.v self.thischar
push.s "^"@6154
cmp.s.v EQ
bf [51]

:[48]
push.v self.charpos
pushi.e -1
cmp.i.v GT
bf [50]

:[49]
push.v self.charpos
pushi.e 2
sub.i.v
pop.v.v self.charpos

:[50]
b [125]

:[51]
push.v self.thischar
push.s "\\"@6159
cmp.s.v EQ
bf [112]

:[52]
push.v self.charpos
pushi.e -1
cmp.i.v GT
bf [54]

:[53]
push.v self.charpos
pushi.e 3
sub.i.v
pop.v.v self.charpos

:[54]
push.v self.dialoguer
pushi.e 1
cmp.i.v EQ
bf [111]

:[55]
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
push.v self.nextchar
push.s "E"@9481
cmp.s.v EQ
bf [71]

:[56]
push.v self.nextchar2
call.i ord(argc=1)
pop.v.v self.__nextface
push.v self.__nextface
pushi.e 48
cmp.i.v GTE
bf [58]

:[57]
push.v self.__nextface
pushi.e 57
cmp.i.v LTE
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
push.v self.nextchar2
call.i real(argc=1)
pop.v.v global.fe
b [71]

:[61]
push.v self.__nextface
pushi.e 65
cmp.i.v GTE
bf [63]

:[62]
push.v self.__nextface
pushi.e 90
cmp.i.v LTE
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
push.v self.__nextface
pushi.e 55
sub.i.v
pop.v.v global.fe
b [71]

:[66]
push.v self.__nextface
pushi.e 97
cmp.i.v GTE
bf [68]

:[67]
push.v self.__nextface
pushi.e 122
cmp.i.v LTE
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
push.v self.__nextface
pushi.e 61
sub.i.v
pop.v.v global.fe

:[71]
push.v self.nextchar
push.s "F"@5969
cmp.s.v EQ
bf [106]

:[72]
push.v self.nextchar2
push.s "0"@3491
cmp.s.v EQ
bf [74]

:[73]
pushi.e 0
pop.v.i global.fc

:[74]
push.v self.nextchar2
push.s "S"@9491
cmp.s.v EQ
bf [76]

:[75]
pushi.e 1
pop.v.i global.fc

:[76]
push.v self.nextchar2
push.s "R"@9490
cmp.s.v EQ
bf [78]

:[77]
pushi.e 2
pop.v.i global.fc

:[78]
push.v self.nextchar2
push.s "N"@9487
cmp.s.v EQ
bf [80]

:[79]
pushi.e 3
pop.v.i global.fc

:[80]
push.v self.nextchar2
push.s "T"@9492
cmp.s.v EQ
bf [82]

:[81]
pushi.e 4
pop.v.i global.fc

:[82]
push.v self.nextchar2
push.s "L"@9485
cmp.s.v EQ
bf [84]

:[83]
pushi.e 5
pop.v.i global.fc

:[84]
push.v self.nextchar2
push.s "s"@6692
cmp.s.v EQ
bf [86]

:[85]
pushi.e 6
pop.v.i global.fc

:[86]
push.v self.nextchar2
push.s "U"@4641
cmp.s.v EQ
bf [88]

:[87]
pushi.e 9
pop.v.i global.fc

:[88]
push.v self.nextchar2
push.s "A"@1192
cmp.s.v EQ
bf [90]

:[89]
pushi.e 10
pop.v.i global.fc

:[90]
push.v self.nextchar2
push.s "a"@7017
cmp.s.v EQ
bf [92]

:[91]
pushi.e 11
pop.v.i global.fc

:[92]
push.v self.nextchar2
push.s "B"@3500
cmp.s.v EQ
bf [94]

:[93]
pushi.e 12
pop.v.i global.fc

:[94]
push.v self.nextchar2
push.s "r"@6696
cmp.s.v EQ
bf [96]

:[95]
pushi.e 15
pop.v.i global.fc

:[96]
push.v self.nextchar2
push.s "u"@6708
cmp.s.v EQ
bf [98]

:[97]
pushi.e 18
pop.v.i global.fc

:[98]
push.v self.nextchar2
push.s "K"@4777
cmp.s.v EQ
bf [100]

:[99]
pushi.e 20
pop.v.i global.fc

:[100]
push.v self.nextchar2
push.s "Q"@9489
cmp.s.v EQ
bf [102]

:[101]
pushi.e 21
pop.v.i global.fc

:[102]
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [104]

:[103]
push.v self.originalcharline
pop.v.v self.charline
push.v self.x
pop.v.v self.writingx
b [106]

:[104]
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
bf [106]

:[105]
push.v self.writingx
pushi.e 8
sub.i.v
pop.v.v self.writingx

:[106]
push.v self.nextchar
push.s "m"@14915
cmp.s.v EQ
bf [108]

:[107]
pushi.e 0
pop.v.i self.drawaster

:[108]
push.v self.nextchar
push.s "s"@6692
cmp.s.v EQ
bf [111]

:[109]
push.v self.nextchar2
push.s "0"@3491
cmp.s.v EQ
bf [111]

:[110]
pushi.e 0
pop.v.i self.skippable

:[111]
b [125]

:[112]
push.v self.thischar
push.s "&"@6153
cmp.s.v EQ
bt [114]

:[113]
push.v self.thischar
push.s "\n"@150
cmp.s.v EQ
b [115]

:[114]
push.e 1

:[115]
bf [125]

:[116]
push.v self.charpos
push.v self.stringmax
cmp.v.v GT
bf [118]

:[117]
push.v self.charpos
pop.v.v self.stringmax

:[118]
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
bf [122]

:[119]
push.v self.autoaster
pushi.e 1
cmp.i.v EQ
bf [122]

:[120]
push.v self.nextchar
push.s "*"@6161
cmp.s.v NEQ
bf [122]

:[121]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
b [123]

:[122]
push.e 0

:[123]
bf [125]

:[124]
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
push.s "||"@757
conv.s.v
call.i string_insert(argc=3)
pop.v.v self.mystring
push.v self.i
pushi.e 2
add.i.v
pop.v.v self.i

:[125]
push.v self.skip
pushi.e 0
cmp.i.v EQ
bf [140]

:[126]
push.v self.thischar
push.s " "@353
cmp.s.v EQ
bf [128]

:[127]
push.v self.i
pop.v.v self.remspace
push.v self.charpos
pop.v.v self.remchar

:[128]
push.v self.thischar
push.s "*"@6161
cmp.s.v EQ
bf [130]

:[129]
pushi.e 1
pop.v.i self.aster

:[130]
push.v self.charpos
push.v self.charline
cmp.v.v GTE
bf [139]

:[131]
push.v self.remspace
pushi.e 2
cmp.i.v GT
bf [135]

:[132]
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
bf [134]

:[133]
push.v self.remchar
pop.v.v self.stringmax

:[134]
pushi.e -1
pop.v.i self.remspace
pushi.e 1
pop.v.i self.charpos
push.v self.linecount
pushi.e 1
add.i.v
pop.v.v self.linecount
call.i gml_Script_scr_asterskip(argc=0)
popz.v
b [138]

:[135]
push.v self.charpos
push.v self.stringmax
cmp.v.v GT
bf [137]

:[136]
push.v self.charpos
pop.v.v self.stringmax

:[137]
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
call.i gml_Script_scr_asterskip(argc=0)
popz.v

:[138]
b [140]

:[139]
push.v self.charpos
pushi.e 1
add.i.v
pop.v.v self.charpos

:[140]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [37]

:[141]
push.v self.autocenter
pushi.e 1
cmp.i.v EQ
bf [143]

:[142]
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.stringmax
push.v self.hspace
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 5
add.i.v
pop.v.v self.x
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.writingy
push.v self.linecount
pushi.e 1
add.i.v
push.v self.vspace
mul.v.v
add.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
sub.i.v
pop.v.v self.y

:[143]
push.v self.charpos
push.v self.stringmax
cmp.v.v GT
bf [145]

:[144]
push.v self.charpos
pop.v.v self.stringmax

:[145]
pushi.e 1
pop.v.i self.formatted

:[146]
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
bf [150]

:[147]
push.v self.button2
pushi.e 1
cmp.i.v EQ
bf [150]

:[148]
push.v self.pos
push.v self.length
cmp.v.v LT
bf [150]

:[149]
push.v self.skippable
pushi.e 1
cmp.i.v EQ
b [151]

:[150]
push.e 0

:[151]
bf [153]

:[152]
pushi.e 1
pop.v.i self.skipme

:[153]
push.v self.skipme
pushi.e 1
cmp.i.v EQ
bf [155]

:[154]
push.v self.mystring
call.i string_length(argc=1)
pushi.e 1
add.i.v
pop.v.v self.pos
pushi.e 1
pop.v.i self.reachedend
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

:[155]
pushi.e 1
pop.v.i self.n

:[156]
push.v self.n
push.v self.pos
cmp.v.v LT
bf [479]

:[157]
pushi.e 1
pop.v.i self.accept
push.v self.n
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.mychar
push.v self.mychar
push.s "`"@6238
cmp.s.v EQ
bf [159]

:[158]
push.v self.n
push.e 1
add.i.v
pop.v.v self.n
push.v self.n
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.mychar
b [417]

:[159]
push.v self.mychar
push.s "&"@6153
cmp.s.v EQ
bt [161]

:[160]
push.v self.mychar
push.s "\n"@150
cmp.s.v EQ
b [162]

:[161]
push.e 1

:[162]
bf [166]

:[163]
pushi.e 0
pop.v.i self.accept
push.v self.writingx
pop.v.v self.wx
push.v self.wxskip
pushi.e 1
cmp.i.v EQ
bf [165]

:[164]
push.v self.writingx
pushi.e 58
add.i.v
pop.v.v self.wx

:[165]
push.v self.wy
push.v self.vspace
add.v.v
pop.v.v self.wy
b [417]

:[166]
push.v self.mychar
push.s "|"@6160
cmp.s.v EQ
bf [168]

:[167]
pushi.e 0
pop.v.i self.accept
push.v self.wx
push.v self.hspace
add.v.v
pop.v.v self.wx
b [417]

:[168]
push.v self.mychar
push.s "^"@6154
cmp.s.v EQ
bf [170]

:[169]
pushi.e 0
pop.v.i self.accept
push.v self.n
pushi.e 1
add.i.v
pop.v.v self.n
b [417]

:[170]
push.v self.mychar
push.s "/"@4448
cmp.s.v EQ
bf [174]

:[171]
pushi.e 1
pop.v.i self.halt
push.v self.n
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
push.s "%"@14906
cmp.s.v EQ
bf [173]

:[172]
pushi.e 2
pop.v.i self.halt

:[173]
pushi.e 0
pop.v.i self.accept
b [417]

:[174]
push.v self.mychar
push.s "%"@14906
cmp.s.v EQ
bf [182]

:[175]
pushi.e 0
pop.v.i self.accept
push.v self.n
pushi.e 1
sub.i.v
push.v self.mystring
call.i string_char_at(argc=2)
push.s "/"@4448
cmp.s.v EQ
bf [177]

:[176]
pushi.e 2
pop.v.i self.halt

:[177]
push.v self.n
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
push.s "%"@14906
cmp.s.v EQ
bf [179]

:[178]
call.i instance_destroy(argc=0)
popz.v
b [181]

:[179]
push.v self.halt
pushi.e 2
cmp.i.v NEQ
bf [181]

:[180]
call.i gml_Script_scr_nextmsg(argc=0)
popz.v

:[181]
b [417]

:[182]
push.v self.mychar
push.s "\\"@6159
cmp.s.v EQ
bf [417]

:[183]
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
bf [199]

:[184]
push.v self.nextchar2
call.i ord(argc=1)
pop.v.v self.__nextface
push.v self.__nextface
pushi.e 48
cmp.i.v GTE
bf [186]

:[185]
push.v self.__nextface
pushi.e 57
cmp.i.v LTE
b [187]

:[186]
push.e 0

:[187]
bf [189]

:[188]
push.v self.nextchar2
call.i real(argc=1)
pop.v.v global.fe
b [199]

:[189]
push.v self.__nextface
pushi.e 65
cmp.i.v GTE
bf [191]

:[190]
push.v self.__nextface
pushi.e 90
cmp.i.v LTE
b [192]

:[191]
push.e 0

:[192]
bf [194]

:[193]
push.v self.__nextface
pushi.e 55
sub.i.v
pop.v.v global.fe
b [199]

:[194]
push.v self.__nextface
pushi.e 97
cmp.i.v GTE
bf [196]

:[195]
push.v self.__nextface
pushi.e 122
cmp.i.v LTE
b [197]

:[196]
push.e 0

:[197]
bf [199]

:[198]
push.v self.__nextface
pushi.e 61
sub.i.v
pop.v.v global.fe

:[199]
push.v self.nextchar
push.s "F"@5969
cmp.s.v EQ
bf [236]

:[200]
push.v self.nextchar2
push.s "0"@3491
cmp.s.v EQ
bf [202]

:[201]
pushi.e 0
pop.v.i global.fc

:[202]
push.v self.nextchar2
push.s "S"@9491
cmp.s.v EQ
bf [204]

:[203]
pushi.e 1
pop.v.i global.fc

:[204]
push.v self.nextchar2
push.s "R"@9490
cmp.s.v EQ
bf [206]

:[205]
pushi.e 2
pop.v.i global.fc

:[206]
push.v self.nextchar2
push.s "N"@9487
cmp.s.v EQ
bf [208]

:[207]
pushi.e 3
pop.v.i global.fc

:[208]
push.v self.nextchar2
push.s "T"@9492
cmp.s.v EQ
bf [210]

:[209]
pushi.e 4
pop.v.i global.fc

:[210]
push.v self.nextchar2
push.s "L"@9485
cmp.s.v EQ
bf [212]

:[211]
pushi.e 5
pop.v.i global.fc

:[212]
push.v self.nextchar2
push.s "s"@6692
cmp.s.v EQ
bf [214]

:[213]
pushi.e 6
pop.v.i global.fc

:[214]
push.v self.nextchar2
push.s "A"@1192
cmp.s.v EQ
bf [216]

:[215]
pushi.e 10
pop.v.i global.fc

:[216]
push.v self.nextchar2
push.s "a"@7017
cmp.s.v EQ
bf [218]

:[217]
pushi.e 11
pop.v.i global.fc

:[218]
push.v self.nextchar2
push.s "B"@3500
cmp.s.v EQ
bf [220]

:[219]
pushi.e 12
pop.v.i global.fc

:[220]
push.v self.nextchar2
push.s "b"@10271
cmp.s.v EQ
bf [222]

:[221]
pushi.e 19
pop.v.i global.fc

:[222]
push.v self.nextchar2
push.s "r"@6696
cmp.s.v EQ
bf [224]

:[223]
pushi.e 15
pop.v.i global.fc

:[224]
push.v self.nextchar2
push.s "u"@6708
cmp.s.v EQ
bf [226]

:[225]
pushi.e 18
pop.v.i global.fc

:[226]
push.v self.nextchar2
push.s "U"@4641
cmp.s.v EQ
bf [228]

:[227]
pushi.e 9
pop.v.i global.fc

:[228]
push.v self.nextchar2
push.s "K"@4777
cmp.s.v EQ
bf [230]

:[229]
pushi.e 20
pop.v.i global.fc

:[230]
push.v self.nextchar2
push.s "Q"@9489
cmp.s.v EQ
bf [232]

:[231]
pushi.e 21
pop.v.i global.fc

:[232]
push.v self.dialoguer
pushi.e 1
cmp.i.v EQ
bf [236]

:[233]
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [235]

:[234]
push.v self.originalcharline
pop.v.v self.charline
push.v self.x
pop.v.v self.wx
b [236]

:[235]
pushi.e 26
pop.v.i self.charline
push.v self.x
pushi.e 58
push.v self.f
mul.v.i
add.v.v
pop.v.v self.wx

:[236]
push.v self.nextchar
push.s "f"@767
cmp.s.v EQ
bf [238]

:[237]
push.v self.faced
pushi.e 0
cmp.i.v EQ
b [239]

:[238]
push.e 0

:[239]
bf [243]

:[240]
pushi.e 0
pop.v.i self.fam
push.v self.nextchar2
call.i real(argc=1)
pop.v.v self.fam
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]self.sminstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [243]

:[241]
push.i 232545
setowner.e
pushi.e 62
conv.i.v
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]self.smyy
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]self.smxx
call.i gml_Script_instance_create(argc=3)
pushi.e -5
push.v self.fam
conv.v.i
pop.v.v [array]self.sminstance
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]self.sminstance
pop.v.v self.smallface
push.v self.smallface
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [243]

:[242]
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
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]self.smimagespeed
push.v self.smallface
pushi.e -9
pop.v.v [stacktop]self.image_speed
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]self.smimage
push.v self.smallface
pushi.e -9
pop.v.v [stacktop]self.image_index
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

:[243]
push.v self.nextchar
push.s "*"@6161
cmp.s.v EQ
bf [260]

:[244]
push.v self.wx
call.i round(argc=1)
pop.v.v self.wx
pushi.e 1
conv.b.v
push.v self.nextchar2
call.i gml_Script_scr_getbuttonsprite(argc=2)
pop.v.v local._sprite
pushi.e 0
pop.v.i local.y_offset
pushi.e 0
pop.v.i local.x_offset
pushglb.v global.typer
pushi.e 50
cmp.i.v EQ
bt [247]

:[245]
pushglb.v global.typer
pushi.e 70
cmp.i.v EQ
bt [247]

:[246]
pushglb.v global.typer
pushi.e 71
cmp.i.v EQ
b [248]

:[247]
push.e 1

:[248]
bf [250]

:[249]
pushi.e -3
pop.v.i local.x_offset
pushi.e -9
pop.v.i local.y_offset

:[250]
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
pushloc.v local.y_offset
add.v.v
push.v self.wx
pushloc.v local.x_offset
add.v.v
pushi.e 0
conv.i.v
pushloc.v local._sprite
call.i draw_sprite_ext(argc=9)
popz.v
pushloc.v local._sprite
pushi.e 2520
cmp.i.v EQ
bf [252]

:[251]
push.v self.wx
pushi.e 8
add.i.v
pop.v.v self.wx

:[252]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [260]

:[253]
pushloc.v local._sprite
pushi.e 2611
cmp.i.v EQ
bt [257]

:[254]
pushloc.v local._sprite
pushi.e 2612
cmp.i.v EQ
bt [257]

:[255]
pushloc.v local._sprite
pushi.e 2609
cmp.i.v EQ
bt [257]

:[256]
pushloc.v local._sprite
pushi.e 2610
cmp.i.v EQ
b [258]

:[257]
push.e 1

:[258]
bf [260]

:[259]
push.v self.wx
pushi.e 2
add.i.v
pop.v.v self.wx

:[260]
push.v self.nextchar
push.s "T"@9492
cmp.s.v EQ
bf [329]

:[261]
push.v self.nextchar2
push.s "0"@3491
cmp.s.v EQ
bf [265]

:[262]
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [264]

:[263]
pushi.e 6
pop.v.i global.typer

:[264]
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[265]
push.v self.nextchar2
push.s "1"@9475
cmp.s.v EQ
bf [267]

:[266]
pushi.e 2
pop.v.i global.typer
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[267]
push.v self.nextchar2
push.s "A"@1192
cmp.s.v EQ
bf [269]

:[268]
pushi.e 18
pop.v.i global.typer
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[269]
push.v self.nextchar2
push.s "a"@7017
cmp.s.v EQ
bf [271]

:[270]
pushi.e 20
pop.v.i global.typer
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[271]
push.v self.nextchar2
push.s "N"@9487
cmp.s.v EQ
bf [277]

:[272]
pushi.e 12
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [274]

:[273]
pushi.e 56
pop.v.i global.typer

:[274]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [276]

:[275]
pushi.e 59
pop.v.i global.typer

:[276]
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[277]
push.v self.nextchar2
push.s "n"@9912
cmp.s.v EQ
bf [279]

:[278]
pushi.e 23
pop.v.i global.typer
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[279]
push.v self.nextchar2
push.s "B"@3500
cmp.s.v EQ
bf [285]

:[280]
pushi.e 13
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [282]

:[281]
pushi.e 57
pop.v.i global.typer

:[282]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [284]

:[283]
pushi.e 77
pop.v.i global.typer

:[284]
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[285]
push.v self.nextchar2
push.s "S"@9491
cmp.s.v EQ
bf [290]

:[286]
pushi.e 10
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [289]

:[287]
pushi.e 30
pop.v.i global.typer
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [289]

:[288]
pushi.e 47
pop.v.i global.typer

:[289]
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[290]
push.v self.nextchar2
push.s "R"@9490
cmp.s.v EQ
bf [296]

:[291]
pushi.e 31
pop.v.i global.typer
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [293]

:[292]
pushi.e 45
pop.v.i global.typer

:[293]
pushi.e -5
pushi.e 30
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [295]

:[294]
pushi.e 6
pop.v.i global.typer

:[295]
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[296]
push.v self.nextchar2
push.s "L"@9485
cmp.s.v EQ
bf [300]

:[297]
pushi.e 32
pop.v.i global.typer
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [299]

:[298]
pushi.e 46
pop.v.i global.typer

:[299]
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[300]
push.v self.nextchar2
push.s "X"@5605
cmp.s.v EQ
bf [302]

:[301]
pushi.e 40
pop.v.i global.typer
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[302]
push.v self.nextchar2
push.s "r"@6696
cmp.s.v EQ
bf [304]

:[303]
pushi.e 55
pop.v.i global.typer
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[304]
push.v self.nextchar2
push.s "T"@9492
cmp.s.v EQ
bf [306]

:[305]
pushi.e 7
pop.v.i global.typer
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[306]
push.v self.nextchar2
push.s "J"@9484
cmp.s.v EQ
bf [308]

:[307]
pushi.e 35
pop.v.i global.typer
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[308]
push.v self.nextchar2
push.s "K"@4777
cmp.s.v EQ
bf [315]

:[309]
pushi.e 33
pop.v.i global.typer
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [312]

:[310]
pushglb.v global.plot
pushi.e 235
cmp.i.v LT
bf [312]

:[311]
pushi.e 36
pop.v.i global.typer

:[312]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [314]

:[313]
pushi.e 48
pop.v.i global.typer

:[314]
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[315]
push.v self.nextchar2
push.s "q"@199
cmp.s.v EQ
bf [317]

:[316]
pushi.e 62
pop.v.i global.typer
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[317]
push.v self.nextchar2
push.s "Q"@9489
cmp.s.v EQ
bf [319]

:[318]
pushi.e 58
pop.v.i global.typer
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[319]
push.v self.nextchar2
push.s "s"@6692
cmp.s.v EQ
bf [321]

:[320]
pushi.e 14
pop.v.i global.typer
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[321]
push.v self.nextchar2
push.s "U"@4641
cmp.s.v EQ
bf [323]

:[322]
pushi.e 17
pop.v.i global.typer
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[323]
push.v self.nextchar2
push.s "p"@6998
cmp.s.v EQ
bf [325]

:[324]
pushi.e 67
pop.v.i global.typer
call.i gml_Script_scr_texttype(argc=0)
popz.v

:[325]
push.v self.dialoguer
pushi.e 1
cmp.i.v EQ
bf [329]

:[326]
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [328]

:[327]
push.v self.originalcharline
pop.v.v self.charline
push.v self.x
pop.v.v self.wx
b [329]

:[328]
pushi.e 1
pop.v.i self.wxskip

:[329]
push.v self.nextchar
push.s "s"@6692
cmp.s.v EQ
bf [334]

:[330]
push.v self.nextchar2
push.s "0"@3491
cmp.s.v EQ
bf [332]

:[331]
pushi.e 0
pop.v.i self.skippable

:[332]
push.v self.nextchar2
push.s "1"@9475
cmp.s.v EQ
bf [334]

:[333]
pushi.e 1
pop.v.i self.skippable

:[334]
push.v self.nextchar
push.s "c"@6801
cmp.s.v EQ
bf [357]

:[335]
pushi.e 1
pop.v.i self.colorchange
push.v self.nextchar2
push.s "R"@9490
cmp.s.v EQ
bf [337]

:[336]
pushi.e 255
pop.v.i self.xcolor

:[337]
push.v self.nextchar2
push.s "B"@3500
cmp.s.v EQ
bf [339]

:[338]
push.i 16711680
pop.v.i self.xcolor

:[339]
push.v self.nextchar2
push.s "Y"@5384
cmp.s.v EQ
bf [341]

:[340]
push.i 65535
pop.v.i self.xcolor

:[341]
push.v self.nextchar2
push.s "G"@9482
cmp.s.v EQ
bf [343]

:[342]
push.i 65280
pop.v.i self.xcolor

:[343]
push.v self.nextchar2
push.s "W"@9494
cmp.s.v EQ
bf [345]

:[344]
push.i 16777215
pop.v.i self.xcolor

:[345]
push.v self.nextchar2
push.s "X"@5605
cmp.s.v EQ
bf [347]

:[346]
pushi.e 0
pop.v.i self.xcolor

:[347]
push.v self.nextchar2
push.s "P"@4770
cmp.s.v EQ
bf [349]

:[348]
push.i 8388736
pop.v.i self.xcolor

:[349]
push.v self.nextchar2
push.s "M"@9486
cmp.s.v EQ
bf [351]

:[350]
pushi.e 128
pop.v.i self.xcolor

:[351]
push.v self.nextchar2
push.s "S"@9491
cmp.s.v EQ
bf [353]

:[352]
push.i 16744703
conv.i.v
call.i gml_Script_hexcolor(argc=1)
pop.v.v self.xcolor

:[353]
push.v self.nextchar2
push.s "V"@9493
cmp.s.v EQ
bf [355]

:[354]
push.i 8454016
conv.i.v
call.i gml_Script_hexcolor(argc=1)
pop.v.v self.xcolor

:[355]
push.v self.nextchar2
push.s "0"@3491
cmp.s.v EQ
bf [357]

:[356]
push.v self.mycolor
pop.v.v self.xcolor

:[357]
push.v self.nextchar
push.s "C"@9479
cmp.s.v EQ
bf [370]

:[358]
push.v self.nextchar2
push.s "1"@9475
cmp.s.v EQ
bf [362]

:[359]
pushi.e 58
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [361]

:[360]
pushi.e 58
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.choicer

:[361]
pushi.e 5
pop.v.i self.halt

:[362]
push.v self.nextchar2
push.s "2"@4175
cmp.s.v EQ
bt [365]

:[363]
push.v self.nextchar2
push.s "3"@2741
cmp.s.v EQ
bt [365]

:[364]
push.v self.nextchar2
push.s "4"@608
cmp.s.v EQ
b [366]

:[365]
push.e 1

:[366]
bf [370]

:[367]
pushi.e 59
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [369]

:[368]
pushi.e 59
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.choicer
push.v self.nextchar2
call.i real(argc=1)
pushi.e 1
sub.i.v
push.v self.choicer
pushi.e -9
pop.v.v [stacktop]self.choicetotal

:[369]
pushi.e 5
pop.v.i self.halt

:[370]
push.v self.nextchar
push.s "M"@9486
cmp.s.v EQ
bf [391]

:[371]
push.v self.nextchar2
push.s "0"@3491
cmp.s.v EQ
bf [373]

:[372]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[373]
push.v self.nextchar2
push.s "1"@9475
cmp.s.v EQ
bf [375]

:[374]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[375]
push.v self.nextchar2
push.s "2"@4175
cmp.s.v EQ
bf [377]

:[376]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[377]
push.v self.nextchar2
push.s "3"@2741
cmp.s.v EQ
bf [379]

:[378]
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[379]
push.v self.nextchar2
push.s "4"@608
cmp.s.v EQ
bf [381]

:[380]
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[381]
push.v self.nextchar2
push.s "5"@5306
cmp.s.v EQ
bf [383]

:[382]
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[383]
push.v self.nextchar2
push.s "6"@3595
cmp.s.v EQ
bf [385]

:[384]
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[385]
push.v self.nextchar2
push.s "7"@9476
cmp.s.v EQ
bf [387]

:[386]
pushi.e 7
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[387]
push.v self.nextchar2
push.s "8"@9477
cmp.s.v EQ
bf [389]

:[388]
pushi.e 8
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[389]
push.v self.nextchar2
push.s "9"@9478
cmp.s.v EQ
bf [391]

:[390]
pushi.e 9
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag

:[391]
push.v self.nextchar
push.s "S"@9491
cmp.s.v EQ
bf [401]

:[392]
push.v self.sound_played
pushi.e 0
cmp.i.v EQ
bf [401]

:[393]
pushi.e 0
pop.v.i self.i

:[394]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [401]

:[395]
push.v self.nextchar2
push.v self.i
call.i string(argc=1)
cmp.v.v EQ
bf [397]

:[396]
push.v self.sound_played
pushi.e 0
cmp.i.v EQ
b [398]

:[397]
push.e 0

:[398]
bf [400]

:[399]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.writersnd
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.sound_played

:[400]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [394]

:[401]
push.v self.nextchar
push.s "I"@9483
cmp.s.v EQ
bf [407]

:[402]
pushi.e 0
pop.v.i self.i

:[403]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [407]

:[404]
push.v self.nextchar2
push.v self.i
call.i string(argc=1)
cmp.v.v EQ
bf [406]

:[405]
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

:[406]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [403]

:[407]
push.v self.nextchar
push.s "m"@14915
cmp.s.v EQ
bf [416]

:[408]
pushi.e 0
pop.v.i self.drawaster
pushi.e 0
pop.v.i self.i

:[409]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [416]

:[410]
push.v self.nextchar2
push.v self.i
call.i string(argc=1)
cmp.v.v EQ
bf [415]

:[411]
push.v self.n
push.v self.miniface_current_pos
cmp.v.v GTE
bf [413]

:[412]
push.v self.miniface_pos
pushi.e 4
conv.i.d
div.d.v
pop.v.v self.miniface_image
push.v self.n
pop.v.v self.miniface_current_pos
b [414]

:[413]
pushi.e 0
pop.v.i self.miniface_image

:[414]
pushi.e 1
conv.i.v
push.v self.mycolor
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.wy
pushi.e 4
sub.i.v
push.v self.writingx
pushi.e 8
sub.i.v
push.v self.miniface_image
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.writerimg
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pop.v.v self.miniface_drawn

:[415]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [409]

:[416]
pushi.e 0
pop.v.i self.accept
push.v self.n
pushi.e 2
add.i.v
pop.v.v self.n

:[417]
push.v self.accept
pushi.e 1
cmp.i.v EQ
bf [478]

:[418]
push.v self.drawaster
pushi.e 0
cmp.i.v EQ
bf [420]

:[419]
push.v self.mychar
push.s "*"@6161
cmp.s.v EQ
b [421]

:[420]
push.e 0

:[421]
bf [423]

:[422]
push.s " "@353
pop.v.s self.mychar

:[423]
push.v self.colorchange
pushi.e 1
cmp.i.v EQ
bf [425]

:[424]
push.v self.xcolor
call.i draw_set_color(argc=1)
popz.v

:[425]
push.v self.mychar
push.s "#"@6243
cmp.s.v EQ
bf [428]

:[426]
push.v self.n
pushi.e 1
sub.i.v
push.v self.mystring
call.i string_char_at(argc=2)
push.s "`"@6238
cmp.s.v NEQ
bf [428]

:[427]
push.v self.mychar
call.i string_hash_to_newline(argc=1)
pop.v.v self.mychar

:[428]
push.v self.jpspecial
pushi.e 1
cmp.i.v EQ
bf [433]

:[429]
push.v self.mychar
call.i gml_Script_scr_kana_check(argc=1)
conv.v.b
bf [431]

:[430]
pushi.e 8
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 1
pop.v.i self.jpused

:[431]
push.v self.mychar
call.i gml_Script_scr_kana_check(argc=1)
conv.v.b
not.b
bf [433]

:[432]
push.v self.myfont
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.jpused

:[433]
push.v self.special
pushi.e 0
cmp.i.v EQ
bf [435]

:[434]
pushi.e 0
conv.i.v
push.v self.textscale
push.v self.textscale
push.v self.mychar
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

:[435]
push.v self.special
pushi.e 1
cmp.i.v GTE
bf [453]

:[436]
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [443]

:[437]
call.i draw_get_color(argc=0)
push.i 16777215
cmp.i.v NEQ
bf [439]

:[438]
call.i draw_get_color(argc=0)
pushi.e 0
cmp.i.v NEQ
b [440]

:[439]
push.e 0

:[440]
bf [442]

:[441]
push.d 0.3
conv.d.v
push.v self.xcolor
push.v self.xcolor
push.v self.xcolor
push.v self.xcolor
push.v self.mychar
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
b [443]

:[442]
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

:[443]
push.v self.special
pushi.e 2
cmp.i.v EQ
bf [445]

:[444]
pushi.e 1
push.v self.specfade
mul.v.i
call.i draw_set_alpha(argc=1)
popz.v
push.v self.mychar
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
push.v self.wy
push.v self.wx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
push.v self.wy
push.v self.wx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
push.v self.wy
pushi.e 1
add.i.v
push.v self.wx
call.i draw_text(argc=3)
popz.v
push.v self.mychar
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
push.v self.wy
pushi.e 1
add.i.v
push.v self.wx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
push.v self.wy
pushi.e 1
sub.i.v
push.v self.wx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
push.v self.wy
pushi.e 1
add.i.v
push.v self.wx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
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

:[445]
push.v self.special
pushi.e 3
cmp.i.v EQ
bf [453]

:[446]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.mychar
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

:[447]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [452]

:[448]
pushi.e 315
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.ddir
push.v self.n
pushi.e 1
cmp.i.v EQ
bf [451]

:[449]
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
bf [451]

:[450]
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

:[451]
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
b [447]

:[452]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[453]
push.v self.wx
push.v self.hspace
add.v.v
pop.v.v self.wx
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [462]

:[454]
push.v self.mychar
call.i ord(argc=1)
pushi.e 256
cmp.i.v LT
bt [459]

:[455]
push.v self.mychar
call.i ord(argc=1)
push.i 65377
cmp.i.v GTE
bf [457]

:[456]
push.v self.mychar
call.i ord(argc=1)
push.i 65439
cmp.i.v LTE
b [458]

:[457]
push.e 0

:[458]
b [460]

:[459]
push.e 1

:[460]
bf [462]

:[461]
push.v self.wx
push.v self.hspace
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.wx

:[462]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [478]

:[463]
push.v self.myfont
pushi.e 4
cmp.i.v EQ
bf [476]

:[464]
push.v self.mychar
push.s "w"@6852
cmp.s.v EQ
bf [466]

:[465]
push.v self.wx
pushi.e 2
add.i.v
pop.v.v self.wx

:[466]
push.v self.mychar
push.s "m"@14915
cmp.s.v EQ
bf [468]

:[467]
push.v self.wx
pushi.e 3
add.i.v
pop.v.v self.wx

:[468]
push.v self.mychar
push.s "i"@107
cmp.s.v EQ
bf [470]

:[469]
push.v self.wx
pushi.e 2
sub.i.v
pop.v.v self.wx

:[470]
push.v self.mychar
push.s "l"@6707
cmp.s.v EQ
bf [472]

:[471]
push.v self.wx
pushi.e 2
sub.i.v
pop.v.v self.wx

:[472]
push.v self.mychar
push.s "s"@6692
cmp.s.v EQ
bf [474]

:[473]
push.v self.wx
pushi.e 1
sub.i.v
pop.v.v self.wx

:[474]
push.v self.mychar
push.s "j"@220
cmp.s.v EQ
bf [476]

:[475]
push.v self.wx
pushi.e 1
sub.i.v
pop.v.v self.wx

:[476]
push.v self.jpused
pushi.e 1
cmp.i.v EQ
bf [478]

:[477]
push.v self.wx
pushi.e 16
add.i.v
pop.v.v self.wx

:[478]
push.v self.n
pushi.e 1
add.i.v
pop.v.v self.n
b [156]

:[479]
push.v self.halt
pushi.e 0
cmp.i.v NEQ
bf [482]

:[480]
push.v self.button1
pushi.e 1
cmp.i.v EQ
bf [482]

:[481]
push.v self.siner
pushi.e 0
cmp.i.v GT
b [483]

:[482]
push.e 0

:[483]
bf [496]

:[484]
push.v self.halt
pushi.e 1
cmp.i.v EQ
bf [488]

:[485]
call.i gml_Script_scr_nextmsg(argc=0)
popz.v
pushi.e 62
pushenv [487]

:[486]
call.i instance_destroy(argc=0)
popz.v

:[487]
popenv [486]

:[488]
push.v self.halt
pushi.e 2
cmp.i.v EQ
bf [496]

:[489]
pushi.e 62
pushenv [491]

:[490]
call.i instance_destroy(argc=0)
popz.v

:[491]
popenv [490]
push.v self.facer
pushi.e 1
cmp.i.v EQ
bf [495]

:[492]
pushi.e 61
pushenv [494]

:[493]
call.i instance_destroy(argc=0)
popz.v

:[494]
popenv [493]

:[495]
call.i instance_destroy(argc=0)
popz.v

:[496]
pushi.e 0
pop.v.i self.skipme
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[end]