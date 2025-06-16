.localvar 2 arguments
.localvar 28949 OSUR 15251
.localvar 28950 OSUL 15252
.localvar 28951 OSUD 15253
.localvar 28952 OSUU 15254
.localvar 22861 dx 15255
.localvar 28953 dy 15256
.localvar 26677 found 15257
.localvar 28954 ccc 15258
.localvar 18109 move 15259
.localvar 723 str 15261
.localvar 28959 cmd 15262
.localvar 28960 new_type 15263

:[0]
push.v self.fadebuffer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.ONEBUFFER

:[2]
push.v self.TYPE
pushi.e 0
cmp.i.v GT
bf [77]

:[3]
pushi.e 0
pop.v.i local.OSUR
pushi.e 0
pop.v.i local.OSUL
pushi.e 0
pop.v.i local.OSUD
pushi.e 0
pop.v.i local.OSUU
push.v self.fadebuffer
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
push.v self.FINISH
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [76]

:[7]
pushi.e 0
pop.v.i local.dx
pushi.e 0
pop.v.i local.dy
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [9]

:[8]
pushi.e 1
pop.v.i local.OSUR

:[9]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [11]

:[10]
pushi.e 1
pop.v.i local.OSUL

:[11]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [13]

:[12]
pushi.e 1
pop.v.i local.OSUD

:[13]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [15]

:[14]
pushi.e 1
pop.v.i local.OSUU

:[15]
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [17]

:[16]
push.v self.PANASHIR
push.e 1
add.i.v
pop.v.v self.PANASHIR
b [18]

:[17]
pushi.e 0
pop.v.i self.PANASHIR

:[18]
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [20]

:[19]
push.v self.PANASHIL
push.e 1
add.i.v
pop.v.v self.PANASHIL
b [21]

:[20]
pushi.e 0
pop.v.i self.PANASHIL

:[21]
call.i gml_Script_up_h(argc=0)
conv.v.b
bf [23]

:[22]
push.v self.PANASHIU
push.e 1
add.i.v
pop.v.v self.PANASHIU
b [24]

:[23]
pushi.e 0
pop.v.i self.PANASHIU

:[24]
call.i gml_Script_down_h(argc=0)
conv.v.b
bf [26]

:[25]
push.v self.PANASHID
push.e 1
add.i.v
pop.v.v self.PANASHID
b [27]

:[26]
pushi.e 0
pop.v.i self.PANASHID

:[27]
push.v self.PANASHIR
pushi.e 6
cmp.i.v GTE
bf [29]

:[28]
pushi.e 3
pop.v.i self.PANASHIR
pushi.e 1
pop.v.i local.OSUR

:[29]
push.v self.PANASHIL
pushi.e 6
cmp.i.v GTE
bf [31]

:[30]
pushi.e 3
pop.v.i self.PANASHIL
pushi.e 1
pop.v.i local.OSUL

:[31]
push.v self.PANASHIU
pushi.e 6
cmp.i.v GTE
bf [33]

:[32]
pushi.e 3
pop.v.i self.PANASHIU
pushi.e 1
pop.v.i local.OSUU

:[33]
push.v self.PANASHID
pushi.e 6
cmp.i.v GTE
bf [35]

:[34]
pushi.e 3
pop.v.i self.PANASHID
pushi.e 1
pop.v.i local.OSUD

:[35]
pushloc.v local.OSUR
conv.v.b
bf [37]

:[36]
pushi.e 1
pop.v.i local.dx

:[37]
pushloc.v local.OSUL
conv.v.b
bf [39]

:[38]
pushi.e -1
pop.v.i local.dx

:[39]
pushloc.v local.OSUD
conv.v.b
bf [41]

:[40]
pushi.e 1
pop.v.i local.dy

:[41]
pushloc.v local.OSUU
conv.v.b
bf [43]

:[42]
pushi.e -1
pop.v.i local.dy

:[43]
pushloc.v local.dx
pushi.e 0
cmp.i.v NEQ
bf [45]

:[44]
push.v self.XMAX
pushi.e 0
cmp.i.v GT
b [46]

:[45]
push.e 0

:[46]
bf [57]

:[47]
pushi.e 0
pop.v.b local.found

:[48]
push.v self.CURX
push.v self.XMAX
pushi.e 1
add.i.v
add.v.v
pushloc.v local.dx
add.v.v
push.v self.XMAX
pushi.e 1
add.i.v
mod.v.v
pop.v.v self.CURX
pushi.e -1
push.v self.CURX
conv.v.i
push.v [arraypushaf]self.NAME
push.v self.CURY
conv.v.i
pushaf.e
pop.v.v local.ccc
pushloc.v local.ccc
push.s " "@353
cmp.s.v NEQ
bf [52]

:[49]
pushloc.v local.ccc
push.s "　"@28955
cmp.s.v NEQ
bf [52]

:[50]
pushloc.v local.ccc
push.s ">"@28956
cmp.s.v NEQ
bf [52]

:[51]
pushloc.v local.ccc
push.s "<"@28957
cmp.s.v NEQ
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushi.e 1
pop.v.b local.found

:[55]
pushloc.v local.found
conv.v.b
bf [48]

:[56]
b [76]

:[57]
pushloc.v local.dy
pushi.e 0
cmp.i.v NEQ
bf [59]

:[58]
push.v self.YMAX
pushi.e 0
cmp.i.v GT
b [60]

:[59]
push.e 0

:[60]
bf [76]

:[61]
pushi.e 0
pop.v.b local.found

:[62]
push.v self.CURY
push.v self.YMAX
pushi.e 1
add.i.v
add.v.v
pushloc.v local.dy
add.v.v
push.v self.YMAX
pushi.e 1
add.i.v
mod.v.v
pop.v.v self.CURY
pushi.e 1
pop.v.b local.move
push.s ""@157
pop.v.s local.ccc

:[63]
pushloc.v local.move
conv.v.b
bf [70]

:[64]
pushi.e -1
push.v self.CURX
conv.v.i
push.v [arraypushaf]self.NAME
push.v self.CURY
conv.v.i
pushaf.e
pop.v.v local.ccc
pushloc.v local.ccc
push.s ">"@28956
cmp.s.v EQ
bf [66]

:[65]
push.v self.CURX
pushi.e 1
add.i.v
pop.v.v self.CURX
b [69]

:[66]
pushloc.v local.ccc
push.s "<"@28957
cmp.s.v EQ
bf [68]

:[67]
push.v self.CURX
pushi.e 1
sub.i.v
pop.v.v self.CURX
b [69]

:[68]
pushi.e 0
pop.v.b local.move

:[69]
b [63]

:[70]
pushloc.v local.ccc
push.s " "@353
cmp.s.v NEQ
bf [72]

:[71]
pushloc.v local.ccc
push.s "　"@28955
cmp.s.v NEQ
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
pushi.e 1
pop.v.b local.found

:[75]
pushloc.v local.found
conv.v.b
bf [62]

:[76]
b [85]

:[77]
push.v self.fadebuffer
pushi.e 0
cmp.i.v LT
bf [79]

:[78]
push.v self.FINISH
pushi.e 0
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [85]

:[81]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [83]

:[82]
pushi.e 1
pop.v.i self.CURX

:[83]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [85]

:[84]
pushi.e 0
pop.v.i self.CURX

:[85]
push.v self.TYPE
pushi.e 0
cmp.i.v GTE
bf [87]

:[86]
push.v self.TYPE
pushi.e 2
cmp.i.v LTE
b [88]

:[87]
push.e 0

:[88]
bf [111]

:[89]
pushi.e 1
pop.v.i self.DRAWHEART
push.v self.CURX
pushi.e 0
cmp.i.v GTE
bf [93]

:[90]
pushi.e -1
push.v self.CURX
conv.v.i
push.v [arraypushaf]self.NAMEX
push.v self.CURY
conv.v.i
pushaf.e
pop.v.v self.IDEALX
pushi.e -1
push.v self.CURX
conv.v.i
push.v [arraypushaf]self.NAMEY
push.v self.CURY
conv.v.i
pushaf.e
pop.v.v self.IDEALY
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [92]

:[91]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.IDEALX
pushi.e -1
push.v self.CURX
conv.v.i
push.v [arraypushaf]self.NAME
push.v self.CURY
conv.v.i
pushaf.e
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
sub.i.v
add.v.v
pop.v.v self.IDEALX

:[92]
b [94]

:[93]
pushi.e 150
pop.v.i self.IDEALX
pushi.e 180
pop.v.i self.IDEALY

:[94]
push.v self.HEARTX
push.v self.IDEALX
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [96]

:[95]
push.v self.IDEALX
pop.v.v self.HEARTX

:[96]
push.v self.HEARTY
push.v self.IDEALY
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [98]

:[97]
push.v self.IDEALY
pop.v.v self.HEARTY

:[98]
push.v self.IDEALX
push.v self.HEARTX
sub.v.v
push.d 0.3
mul.d.v
pop.v.v self.HEARTDIFF
push.v self.HEARTX
push.v self.HEARTDIFF
add.v.v
pop.v.v self.HEARTX
push.v self.DRAWHEART
pushi.e 0
cmp.i.v EQ
bf [100]

:[99]
push.v self.IDEALX
pop.v.v self.HEARTX
pushi.e 1
pop.v.i self.DRAWHEART

:[100]
push.v self.IDEALY
push.v self.HEARTY
sub.v.v
push.d 0.3
mul.d.v
pop.v.v self.HEARTDIFF
push.v self.HEARTY
push.v self.HEARTDIFF
add.v.v
pop.v.v self.HEARTY
push.v self.DRAWHEART
pushi.e 0
cmp.i.v EQ
bf [102]

:[101]
push.v self.IDEALY
pop.v.v self.HEARTY
pushi.e 1
pop.v.i self.DRAWHEART

:[102]
push.v self.FINISH
pushi.e 0
cmp.i.v EQ
bf [111]

:[103]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [106]

:[104]
push.v self.CURX
pushi.e 0
cmp.i.v GTE
bf [106]

:[105]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
b [107]

:[106]
push.e 0

:[107]
bf [111]

:[108]
push.v self.CURX
pop.v.v global.choice
push.v self.TYPE
pushi.e 2
cmp.i.v EQ
bf [110]

:[109]
push.v self.CURY
pop.v.v global.choice

:[110]
pushi.e 1
pop.v.i self.FINISH
pushi.e 99
pop.v.i self.ONEBUFFER

:[111]
push.v self.TYPE
pushi.e 3
cmp.i.v EQ
bf [162]

:[112]
pushi.e 1
pop.v.i self.DRAWHEART
pushi.e -1
push.v self.CURX
conv.v.i
push.v [arraypushaf]self.NAME
push.v self.CURY
conv.v.i
pushaf.e
pop.v.v local.str
push.s ""@157
pop.v.s local.cmd
pushloc.v local.str
call.i string_length(argc=1)
pushi.e 1
cmp.i.v GT
bf [114]

:[113]
pushi.e 2
conv.i.v
pushloc.v local.str
call.i string_char_at(argc=2)
pop.v.v local.cmd
pushloc.v local.str
call.i string_length(argc=1)
pushi.e 3
sub.i.v
pushi.e 4
conv.i.v
pushloc.v local.str
call.i string_copy(argc=3)
pop.v.v local.str

:[114]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e -1
push.v self.CURX
conv.v.i
push.v [arraypushaf]self.NAMEX
push.v self.CURY
conv.v.i
pushaf.e
pushloc.v local.str
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 10
sub.i.v
pop.v.v self.IDEALX
pushi.e -1
push.v self.CURX
conv.v.i
push.v [arraypushaf]self.NAMEY
push.v self.CURY
conv.v.i
pushaf.e
pushi.e 2
sub.i.v
pop.v.v self.IDEALY
push.v self.HEARTX
push.v self.IDEALX
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [116]

:[115]
push.v self.IDEALX
pop.v.v self.HEARTX

:[116]
push.v self.HEARTY
push.v self.IDEALY
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [118]

:[117]
push.v self.IDEALY
pop.v.v self.HEARTY

:[118]
push.v self.IDEALX
push.v self.HEARTX
sub.v.v
push.d 0.5
mul.d.v
pop.v.v self.HEARTDIFF
push.v self.HEARTDIFF
call.i abs(argc=1)
pushi.e 60
cmp.i.v GT
bf [120]

:[119]
pushi.e 0
pop.v.i self.DRAWHEART

:[120]
push.v self.HEARTX
push.v self.HEARTDIFF
add.v.v
pop.v.v self.HEARTX
push.v self.DRAWHEART
pushi.e 0
cmp.i.v EQ
bf [122]

:[121]
push.v self.IDEALX
pop.v.v self.HEARTX
pushi.e 1
pop.v.i self.DRAWHEART

:[122]
push.v self.IDEALY
push.v self.HEARTY
sub.v.v
push.d 0.5
mul.d.v
pop.v.v self.HEARTDIFF
push.v self.HEARTDIFF
call.i abs(argc=1)
pushi.e 60
cmp.i.v GT
bf [124]

:[123]
pushi.e 0
pop.v.i self.DRAWHEART

:[124]
push.v self.HEARTY
push.v self.HEARTDIFF
add.v.v
pop.v.v self.HEARTY
push.v self.DRAWHEART
pushi.e 0
cmp.i.v EQ
bf [126]

:[125]
push.v self.IDEALY
pop.v.v self.HEARTY
pushi.e 1
pop.v.i self.DRAWHEART

:[126]
pushi.e 0
pop.v.i self.ERASE
push.v self.FINISH
pushi.e 0
cmp.i.v EQ
bf [151]

:[127]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [129]

:[128]
pushi.e 1
pop.v.i self.ERASE

:[129]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [131]

:[130]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
b [132]

:[131]
push.e 0

:[132]
bf [151]

:[133]
pushloc.v local.cmd
push.s ""@157
cmp.s.v EQ
bf [136]

:[134]
push.v self.NAMESTRING
call.i string_length(argc=1)
push.v self.STRINGMAX
cmp.v.v LT
bf [136]

:[135]
push.v self.NAMESTRING
pushi.e -1
push.v self.CURX
conv.v.i
push.v [arraypushaf]self.NAME
push.v self.CURY
conv.v.i
pushaf.e
add.v.v
pop.v.v self.NAMESTRING

:[136]
pushloc.v local.cmd
push.s "B"@3500
cmp.s.v EQ
bf [138]

:[137]
pushi.e 1
pop.v.i self.ERASE

:[138]
pushloc.v local.cmd
push.s "1"@9475
cmp.s.v EQ
bt [141]

:[139]
pushloc.v local.cmd
push.s "2"@4175
cmp.s.v EQ
bt [141]

:[140]
pushloc.v local.cmd
push.s "3"@2741
cmp.s.v EQ
b [142]

:[141]
push.e 1

:[142]
bf [145]

:[143]
pushloc.v local.cmd
call.i real(argc=1)
pop.v.v local.new_type
push.v self.LANGSUBTYPE
pushloc.v local.new_type
cmp.v.v NEQ
bf [145]

:[144]
pushloc.v local.new_type
pop.v.v self.LANGSUBTYPE
call.i gml_Script_scr_84_name_input_setup(argc=0)
popz.v

:[145]
pushloc.v local.cmd
push.s "E"@9481
cmp.s.v EQ
bf [148]

:[146]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
bf [148]

:[147]
push.v self.NAMESTRING
call.i string_length(argc=1)
pushi.e 1
cmp.i.v GTE
b [149]

:[148]
push.e 0

:[149]
bf [151]

:[150]
pushi.e 99
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.FINISH
pushi.e 1
pop.v.i global.choice

:[151]
push.v self.ERASE
pushi.e 1
cmp.i.v EQ
bf [153]

:[152]
push.v self.NAMESTRING
call.i string_length(argc=1)
pushi.e 0
cmp.i.v EQ
b [154]

:[153]
push.e 0

:[154]
bf [156]

:[155]
pushi.e 1
pop.v.i self.backout

:[156]
push.v self.ERASE
pushi.e 1
cmp.i.v EQ
bf [158]

:[157]
push.v self.FINISH
pushi.e 0
cmp.i.v EQ
b [159]

:[158]
push.e 0

:[159]
bf [162]

:[160]
push.v self.NAMESTRING
call.i string_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [162]

:[161]
pushi.e 1
conv.i.v
push.v self.NAMESTRING
call.i string_length(argc=1)
push.v self.NAMESTRING
call.i string_delete(argc=3)
pop.v.v self.NAMESTRING

:[162]
push.v self.ONEBUFFER
pushi.e 1
sub.i.v
pop.v.v self.ONEBUFFER
push.v self.FINISH
pushi.e 0
cmp.i.v EQ
bf [164]

:[163]
push.v self.fadebuffer
pushi.e 1
sub.i.v
pop.v.v self.fadebuffer

:[164]
push.v self.FINISH
pushi.e 1
cmp.i.v EQ
bf [end]

:[165]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag
push.v self.fadebuffer
pushi.e 0
cmp.i.v LT
bf [167]

:[166]
pushi.e 0
pop.v.i self.fadebuffer

:[167]
push.v self.fadebuffer
pushi.e 1
add.i.v
pop.v.v self.fadebuffer
push.v self.fadebuffer
pushi.e 10
cmp.i.v GTE
bf [end]

:[168]
call.i instance_destroy(argc=0)
popz.v

:[end]