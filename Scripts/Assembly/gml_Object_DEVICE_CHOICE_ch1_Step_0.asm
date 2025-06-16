.localvar 2 arguments
.localvar 22861 dx 21823
.localvar 28953 dy 21824
.localvar 26677 found 21825
.localvar 28954 ccc 21826
.localvar 18109 move 21827
.localvar 723 str 21828
.localvar 28959 cmd 21829
.localvar 28960 new_type 21830

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
bf [49]

:[3]
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
bf [48]

:[7]
pushi.e 0
pop.v.i local.dx
pushi.e 0
pop.v.i local.dy
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
bf [9]

:[8]
pushi.e 1
pop.v.i local.dx

:[9]
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bf [11]

:[10]
pushi.e -1
pop.v.i local.dx

:[11]
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [13]

:[12]
pushi.e 1
pop.v.i local.dy

:[13]
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [15]

:[14]
pushi.e -1
pop.v.i local.dy

:[15]
pushloc.v local.dx
pushi.e 0
cmp.i.v NEQ
bf [17]

:[16]
push.v self.XMAX
pushi.e 0
cmp.i.v GT
b [18]

:[17]
push.e 0

:[18]
bf [29]

:[19]
pushi.e 0
pop.v.b local.found

:[20]
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
bf [24]

:[21]
pushloc.v local.ccc
push.s "　"@28955
cmp.s.v NEQ
bf [24]

:[22]
pushloc.v local.ccc
push.s ">"@28956
cmp.s.v NEQ
bf [24]

:[23]
pushloc.v local.ccc
push.s "<"@28957
cmp.s.v NEQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 1
pop.v.b local.found

:[27]
pushloc.v local.found
conv.v.b
bf [20]

:[28]
b [48]

:[29]
pushloc.v local.dy
pushi.e 0
cmp.i.v NEQ
bf [31]

:[30]
push.v self.YMAX
pushi.e 0
cmp.i.v GT
b [32]

:[31]
push.e 0

:[32]
bf [48]

:[33]
pushi.e 0
pop.v.b local.found

:[34]
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

:[35]
pushloc.v local.move
conv.v.b
bf [42]

:[36]
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
bf [38]

:[37]
push.v self.CURX
pushi.e 1
add.i.v
pop.v.v self.CURX
b [41]

:[38]
pushloc.v local.ccc
push.s "<"@28957
cmp.s.v EQ
bf [40]

:[39]
push.v self.CURX
pushi.e 1
sub.i.v
pop.v.v self.CURX
b [41]

:[40]
pushi.e 0
pop.v.b local.move

:[41]
b [35]

:[42]
pushloc.v local.ccc
push.s " "@353
cmp.s.v NEQ
bf [44]

:[43]
pushloc.v local.ccc
push.s "　"@28955
cmp.s.v NEQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 1
pop.v.b local.found

:[47]
pushloc.v local.found
conv.v.b
bf [34]

:[48]
b [57]

:[49]
push.v self.fadebuffer
pushi.e 0
cmp.i.v LT
bf [51]

:[50]
push.v self.FINISH
pushi.e 0
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [57]

:[53]
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
bf [55]

:[54]
pushi.e 1
pop.v.i self.CURX

:[55]
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bf [57]

:[56]
pushi.e 0
pop.v.i self.CURX

:[57]
push.v self.TYPE
pushi.e 0
cmp.i.v GTE
bf [59]

:[58]
push.v self.TYPE
pushi.e 2
cmp.i.v LTE
b [60]

:[59]
push.e 0

:[60]
bf [83]

:[61]
pushi.e 1
pop.v.i self.DRAWHEART
push.v self.CURX
pushi.e 0
cmp.i.v GTE
bf [65]

:[62]
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
bf [64]

:[63]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font_ch1(argc=1)
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

:[64]
b [66]

:[65]
pushi.e 150
pop.v.i self.IDEALX
pushi.e 180
pop.v.i self.IDEALY

:[66]
push.v self.HEARTX
push.v self.IDEALX
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [68]

:[67]
push.v self.IDEALX
pop.v.v self.HEARTX

:[68]
push.v self.HEARTY
push.v self.IDEALY
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [70]

:[69]
push.v self.IDEALY
pop.v.v self.HEARTY

:[70]
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
bf [72]

:[71]
push.v self.IDEALX
pop.v.v self.HEARTX
pushi.e 1
pop.v.i self.DRAWHEART

:[72]
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
bf [74]

:[73]
push.v self.IDEALY
pop.v.v self.HEARTY
pushi.e 1
pop.v.i self.DRAWHEART

:[74]
push.v self.FINISH
pushi.e 0
cmp.i.v EQ
bf [83]

:[75]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [78]

:[76]
push.v self.CURX
pushi.e 0
cmp.i.v GTE
bf [78]

:[77]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
b [79]

:[78]
push.e 0

:[79]
bf [83]

:[80]
push.v self.CURX
pop.v.v global.choice
push.v self.TYPE
pushi.e 2
cmp.i.v EQ
bf [82]

:[81]
push.v self.CURY
pop.v.v global.choice

:[82]
pushi.e 1
pop.v.i self.FINISH
pushi.e 99
pop.v.i self.ONEBUFFER

:[83]
push.v self.TYPE
pushi.e 3
cmp.i.v EQ
bf [129]

:[84]
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
bf [86]

:[85]
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

:[86]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font_ch1(argc=1)
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
bf [88]

:[87]
push.v self.IDEALX
pop.v.v self.HEARTX

:[88]
push.v self.HEARTY
push.v self.IDEALY
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [90]

:[89]
push.v self.IDEALY
pop.v.v self.HEARTY

:[90]
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
bf [92]

:[91]
pushi.e 0
pop.v.i self.DRAWHEART

:[92]
push.v self.HEARTX
push.v self.HEARTDIFF
add.v.v
pop.v.v self.HEARTX
push.v self.DRAWHEART
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
push.v self.IDEALX
pop.v.v self.HEARTX
pushi.e 1
pop.v.i self.DRAWHEART

:[94]
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
bf [96]

:[95]
pushi.e 0
pop.v.i self.DRAWHEART

:[96]
push.v self.HEARTY
push.v self.HEARTDIFF
add.v.v
pop.v.v self.HEARTY
push.v self.DRAWHEART
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
push.v self.IDEALY
pop.v.v self.HEARTY
pushi.e 1
pop.v.i self.DRAWHEART

:[98]
pushi.e 0
pop.v.i self.ERASE
push.v self.FINISH
pushi.e 0
cmp.i.v EQ
bf [123]

:[99]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [101]

:[100]
pushi.e 1
pop.v.i self.ERASE

:[101]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [103]

:[102]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
b [104]

:[103]
push.e 0

:[104]
bf [123]

:[105]
pushloc.v local.cmd
push.s ""@157
cmp.s.v EQ
bf [108]

:[106]
push.v self.NAMESTRING
call.i string_length(argc=1)
push.v self.STRINGMAX
cmp.v.v LT
bf [108]

:[107]
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

:[108]
pushloc.v local.cmd
push.s "B"@3500
cmp.s.v EQ
bf [110]

:[109]
pushi.e 1
pop.v.i self.ERASE

:[110]
pushloc.v local.cmd
push.s "1"@9475
cmp.s.v EQ
bt [113]

:[111]
pushloc.v local.cmd
push.s "2"@4175
cmp.s.v EQ
bt [113]

:[112]
pushloc.v local.cmd
push.s "3"@2741
cmp.s.v EQ
b [114]

:[113]
push.e 1

:[114]
bf [117]

:[115]
pushloc.v local.cmd
call.i real(argc=1)
pop.v.v local.new_type
push.v self.LANGSUBTYPE
pushloc.v local.new_type
cmp.v.v NEQ
bf [117]

:[116]
pushloc.v local.new_type
pop.v.v self.LANGSUBTYPE
call.i gml_Script_scr_84_name_input_setup_ch1(argc=0)
popz.v

:[117]
pushloc.v local.cmd
push.s "E"@9481
cmp.s.v EQ
bf [120]

:[118]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
bf [120]

:[119]
push.v self.NAMESTRING
call.i string_length(argc=1)
pushi.e 1
cmp.i.v GTE
b [121]

:[120]
push.e 0

:[121]
bf [123]

:[122]
pushi.e 99
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.FINISH
pushi.e 1
pop.v.i global.choice

:[123]
push.v self.ERASE
pushi.e 1
cmp.i.v EQ
bf [125]

:[124]
push.v self.FINISH
pushi.e 0
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [129]

:[127]
push.v self.NAMESTRING
call.i string_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [129]

:[128]
pushi.e 1
conv.i.v
push.v self.NAMESTRING
call.i string_length(argc=1)
push.v self.NAMESTRING
call.i string_delete(argc=3)
pop.v.v self.NAMESTRING

:[129]
push.v self.ONEBUFFER
pushi.e 1
sub.i.v
pop.v.v self.ONEBUFFER
push.v self.FINISH
pushi.e 0
cmp.i.v EQ
bf [131]

:[130]
push.v self.fadebuffer
pushi.e 1
sub.i.v
pop.v.v self.fadebuffer

:[131]
push.v self.FINISH
pushi.e 1
cmp.i.v EQ
bf [end]

:[132]
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
bf [134]

:[133]
pushi.e 0
pop.v.i self.fadebuffer

:[134]
push.v self.fadebuffer
pushi.e 1
add.i.v
pop.v.v self.fadebuffer
push.v self.fadebuffer
pushi.e 10
cmp.i.v GTE
bf [end]

:[135]
call.i instance_destroy(argc=0)
popz.v

:[end]