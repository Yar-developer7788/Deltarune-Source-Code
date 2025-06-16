.localvar 2 arguments

:[0]
b [298]

> gml_Script_scr_shopmenu_ch1 (locals=0, argc=1)
:[1]
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bf [58]

:[2]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [4]

:[3]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [58]

:[6]
pushi.e 255
conv.i.v
pushi.e 640
conv.i.v
push.v self.minimenuy
pushi.e 400
conv.i.v
call.i gml_Script_scr_darkbox_black_ch1(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font_ch1(argc=1)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e -1
pushi.e 0
push.v [array]self.shopdesc
call.i string_hash_to_newline(argc=1)
push.v self.minimenuy
pushi.e 28
add.i.v
pushi.e 440
conv.i.v
call.i draw_text(argc=3)
popz.v

:[8]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e -1
pushi.e 1
push.v [array]self.shopdesc
call.i string_hash_to_newline(argc=1)
push.v self.minimenuy
pushi.e 28
add.i.v
pushi.e 440
conv.i.v
call.i draw_text(argc=3)
popz.v

:[10]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushi.e -1
pushi.e 2
push.v [array]self.shopdesc
call.i string_hash_to_newline(argc=1)
push.v self.minimenuy
pushi.e 28
add.i.v
pushi.e 440
conv.i.v
call.i draw_text(argc=3)
popz.v

:[12]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
pushi.e -1
pushi.e 3
push.v [array]self.shopdesc
call.i string_hash_to_newline(argc=1)
push.v self.minimenuy
pushi.e 28
add.i.v
pushi.e 440
conv.i.v
call.i draw_text(argc=3)
popz.v

:[14]
push.s "dotumche"@6178
conv.s.v
call.i gml_Script_scr_84_set_draw_font_ch1(argc=1)
popz.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@231
cmp.s.v EQ
bt [16]

:[15]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "armor"@232
cmp.s.v EQ
b [17]

:[16]
push.e 1

:[17]
bf [58]

:[18]
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [58]

:[20]
pushi.e 0
pop.v.i self.can_index
pushi.e 4044
pop.v.i self.facetype
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pop.v.v self.which
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 4044
pop.v.i self.facetype

:[22]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
pushi.e 4046
pop.v.i self.facetype

:[24]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [26]

:[25]
pushi.e 4045
pop.v.i self.facetype

:[26]
push.v self.which
pushi.e 0
cmp.i.v NEQ
bf [57]

:[27]
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
pushi.e 0
pop.v.i self.locx
pushi.e 0
pop.v.i self.locy

:[29]
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 100
pop.v.i self.locx
pushi.e 0
pop.v.i self.locy

:[31]
push.v self.i
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
pushi.e 0
pop.v.i self.locx
pushi.e 45
pop.v.i self.locy

:[33]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [arraypushaf]self.canequip
push.v self.which
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
pushi.e 8
pop.v.i self.can_index

:[35]
push.v self.minimenuy
pushi.e 140
add.i.v
push.v self.locy
add.v.v
pushi.e 426
push.v self.locx
add.v.i
push.v self.can_index
push.v self.facetype
call.i draw_sprite(argc=4)
popz.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@231
cmp.s.v EQ
bf [37]

:[36]
push.v self.can_index
pushi.e 8
cmp.i.v NEQ
b [38]

:[37]
push.e 0

:[38]
bf [46]

:[39]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.i 62491337
setowner.e
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itematk
pushi.e -5
push.v self.which
conv.v.i
push.v [arraypushaf]self.itemat
pushi.e 0
pushaf.e
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.sum
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemmagic
pushi.e -5
push.v self.which
conv.v.i
push.v [arraypushaf]self.itemmag
pushi.e 0
pushaf.e
sub.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.sum
pushi.e 0
pop.v.i self.j

:[40]
push.v self.j
pushi.e 2
cmp.i.v LT
bf [46]

:[41]
push.i 16777215
pop.v.i self.dcolor
push.s ""@157
pop.v.s self.addt
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.sum
pushi.e 0
cmp.i.v GT
bf [43]

:[42]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "+"@9721
pop.v.s self.addt

:[43]
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.sum
pushi.e 0
cmp.i.v LT
bf [45]

:[44]
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[45]
pushi.e 1
conv.i.v
push.v self.dcolor
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.minimenuy
push.v self.locy
add.v.v
pushi.e 135
add.i.v
pushi.e 20
push.v self.j
mul.v.i
add.v.v
pushi.e 470
push.v self.locx
add.v.i
push.v self.j
pushi.e 3741
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.addt
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.sum
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.minimenuy
push.v self.locy
add.v.v
pushi.e 135
add.i.v
pushi.e 20
push.v self.j
mul.v.i
add.v.v
pushi.e 490
push.v self.locx
add.v.i
call.i draw_text(argc=3)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [40]

:[46]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "armor"@232
cmp.s.v EQ
bf [48]

:[47]
push.v self.can_index
pushi.e 8
cmp.i.v NEQ
b [49]

:[48]
push.e 0

:[49]
bf [57]

:[50]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemdef
pushi.e -5
push.v self.which
conv.v.i
push.v [arraypushaf]self.itemdf
pushi.e 1
pushaf.e
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.sum
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemdef
pushi.e -5
push.v self.which
conv.v.i
push.v [arraypushaf]self.itemdf
pushi.e 2
pushaf.e
sub.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.sum
pushi.e 0
pop.v.i self.j

:[51]
push.v self.j
pushi.e 2
cmp.i.v LT
bf [57]

:[52]
push.i 16777215
pop.v.i self.dcolor
push.s ""@157
pop.v.s self.addt
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.sum
pushi.e 0
cmp.i.v GT
bf [54]

:[53]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "+"@9721
pop.v.s self.addt

:[54]
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.sum
pushi.e 0
cmp.i.v LT
bf [56]

:[55]
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[56]
pushi.e 1
conv.i.v
push.v self.dcolor
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.minimenuy
push.v self.locy
add.v.v
pushi.e 135
add.i.v
pushi.e 20
push.v self.j
mul.v.i
add.v.v
pushi.e 470
push.v self.locx
add.v.i
pushi.e 2
push.v self.j
add.v.i
pushi.e 3741
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.addt
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.sum
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.minimenuy
pushi.e 135
add.i.v
pushi.e 20
push.v self.j
mul.v.i
add.v.v
push.v self.locy
add.v.v
pushi.e 490
push.v self.locx
add.v.i
call.i draw_text(argc=3)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [51]

:[57]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [19]

:[58]
push.v arg.argument0
pushi.e 4
cmp.i.v EQ
bf [242]

:[59]
push.v self.menu
pushi.e 11
cmp.i.v EQ
bt [61]

:[60]
push.v self.menu
pushi.e 15
cmp.i.v EQ
b [62]

:[61]
push.e 1

:[62]
bf [120]

:[63]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font_ch1(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck_ch1(argc=1)
popz.v
pushi.e 11
push.v self.itemcount
sub.v.i
pop.v.v self.menumax
push.v self.menumax
pushi.e 0
cmp.i.v LT
bf [65]

:[64]
pushi.e 0
pop.v.i self.menumax

:[65]
push.v self.menu
pushi.e 11
cmp.i.v EQ
bf [88]

:[66]
pushi.e 0
pop.v.i self._up_pressed
pushi.e 0
pop.v.i self._down_pressed
call.i gml_Script_down_h_ch1(argc=0)
conv.v.b
bf [76]

:[67]
pushi.e 0
pop.v.i self.hold_up
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [69]

:[68]
pushi.e 1
pop.v.i self._down_pressed

:[69]
push.v self.hold_down
pushi.e 1
add.i.v
pop.v.v self.hold_down
push.v self.hold_down
pushi.e 8
cmp.i.v GTE
bf [71]

:[70]
pushi.e 1
pop.v.i self._down_pressed
pushi.e 6
pop.v.i self.hold_down

:[71]
push.v self._down_pressed
pushi.e 1
cmp.i.v EQ
bf [75]

:[72]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [75]

:[73]
push.i 62491329
setowner.e
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
add.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.pagemax
pushi.e 4
add.i.v
cmp.v.v GT
bf [75]

:[74]
push.v self.pagemax
pushi.e 1
add.i.v
pop.v.v self.pagemax

:[75]
b [77]

:[76]
pushi.e 0
pop.v.i self.hold_down

:[77]
call.i gml_Script_up_h_ch1(argc=0)
conv.v.b
bf [87]

:[78]
pushi.e 0
pop.v.i self.hold_down
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [80]

:[79]
pushi.e 1
pop.v.i self._up_pressed

:[80]
push.v self.hold_up
pushi.e 1
add.i.v
pop.v.v self.hold_up
push.v self.hold_up
pushi.e 8
cmp.i.v GTE
bf [82]

:[81]
pushi.e 1
pop.v.i self._up_pressed
pushi.e 6
pop.v.i self.hold_up

:[82]
push.v self._up_pressed
pushi.e 1
cmp.i.v EQ
bf [86]

:[83]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
pushi.e 0
cmp.i.v GT
bf [86]

:[84]
push.i 62491329
setowner.e
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
sub.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.pagemax
cmp.v.v LT
bf [86]

:[85]
push.v self.pagemax
pushi.e 1
sub.i.v
pop.v.v self.pagemax

:[86]
b [88]

:[87]
pushi.e 0
pop.v.i self.hold_up

:[88]
pushi.e 0
pop.v.i self.j
push.v self.pagemax
pop.v.v self.i

:[89]
push.v self.i
pushi.e 5
push.v self.pagemax
add.v.i
cmp.v.v LT
bf [95]

:[90]
pushi.e 270
pushi.e -1
pushi.e 11
push.v [array]self.menuc
push.v self.pagemax
sub.v.v
pushi.e 40
mul.i.v
add.v.i
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.g
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.itemnameb
pop.v.v self._itempname
push.v self._itempname
push.s " "@353
cmp.s.v EQ
bf [92]

:[91]
push.s "--------"@9732
pop.v.s self._itempname
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[92]
push.v self._itempname
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.j
pushi.e 40
mul.i.v
add.v.i
pushi.e 60
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.itemvalue
pushi.e 1
cmp.i.v GT
bf [94]

:[93]
push.s "$"@13512
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.itemvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i string(argc=1)
add.v.s
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.j
pushi.e 40
mul.i.v
add.v.i
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v

:[94]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [89]

:[95]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.menu
pushi.e 11
cmp.i.v EQ
bf [114]

:[96]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [98]

:[97]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [99]

:[98]
push.e 0

:[99]
bf [106]

:[100]
pushi.e -5
pushi.e -1
pushi.e 11
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemvalue
pushi.e 1
cmp.i.v GT
bf [102]

:[101]
pushi.e 15
pop.v.i self.menu
b [103]

:[102]
pushi.e 3
pop.v.i self.sidemessage2

:[103]
pushi.e -5
pushi.e -1
pushi.e 11
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.sellvalue
pushi.e 11
pop.v.i self.tempmenu
pushi.e 2
pop.v.i self.onebuffer
pushi.e 1331
pushenv [105]

:[104]
call.i instance_destroy(argc=0)
popz.v

:[105]
popenv [104]

:[106]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [109]

:[107]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [109]

:[108]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [110]

:[109]
push.e 0

:[110]
bf [114]

:[111]
pushi.e 0
pop.v.i self.sidemessage
pushi.e 10
pop.v.i self.menu
pushi.e 2
pop.v.i self.twobuffer
pushi.e 1331
pushenv [113]

:[112]
call.i instance_destroy(argc=0)
popz.v

:[113]
popenv [112]

:[114]
call.i gml_Script_scr_shopmorearrow_ch1(argc=0)
popz.v
push.v self.menumax
pushi.e 4
cmp.i.v GT
bf [120]

:[115]
pushi.e 0
pop.v.i self.i

:[116]
push.v self.i
push.v self.menumax
cmp.v.v LTE
bf [120]

:[117]
pushi.e 0
pop.v.i self.buff
pushi.e -1
pushi.e 11
push.v [array]self.menuc
push.v self.i
cmp.v.v EQ
bf [119]

:[118]
pushi.e 3
pop.v.i self.buff

:[119]
pushi.e 0
conv.b.v
pushi.e 297
push.v self.i
pushi.e 130
conv.i.d
push.v self.menumax
div.v.d
mul.v.v
add.v.i
push.v self.buff
add.v.v
pushi.e 377
push.v self.buff
add.v.i
pushi.e 295
push.v self.i
pushi.e 130
conv.i.d
push.v self.menumax
div.v.d
mul.v.v
add.v.i
push.v self.buff
sub.v.v
pushi.e 375
push.v self.buff
sub.v.i
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [116]

:[120]
push.v self.menu
pushi.e 12
cmp.i.v EQ
bt [122]

:[121]
push.v self.menu
pushi.e 16
cmp.i.v EQ
b [123]

:[122]
push.e 1

:[123]
bf [181]

:[124]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font_ch1(argc=1)
popz.v
pushi.e 11
pop.v.i self.menumax
push.v self.menu
pushi.e 12
cmp.i.v EQ
bf [147]

:[125]
pushi.e 0
pop.v.i self._up_pressed
pushi.e 0
pop.v.i self._down_pressed
call.i gml_Script_down_h_ch1(argc=0)
conv.v.b
bf [135]

:[126]
pushi.e 0
pop.v.i self.hold_up
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [128]

:[127]
pushi.e 1
pop.v.i self._down_pressed

:[128]
push.v self.hold_down
pushi.e 1
add.i.v
pop.v.v self.hold_down
push.v self.hold_down
pushi.e 8
cmp.i.v GTE
bf [130]

:[129]
pushi.e 1
pop.v.i self._down_pressed
pushi.e 6
pop.v.i self.hold_down

:[130]
push.v self._down_pressed
pushi.e 1
cmp.i.v EQ
bf [134]

:[131]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [134]

:[132]
push.i 62491329
setowner.e
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
add.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.pagemax
pushi.e 4
add.i.v
cmp.v.v GT
bf [134]

:[133]
push.v self.pagemax
pushi.e 1
add.i.v
pop.v.v self.pagemax

:[134]
b [136]

:[135]
pushi.e 0
pop.v.i self.hold_down

:[136]
call.i gml_Script_up_h_ch1(argc=0)
conv.v.b
bf [146]

:[137]
pushi.e 0
pop.v.i self.hold_down
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [139]

:[138]
pushi.e 1
pop.v.i self._up_pressed

:[139]
push.v self.hold_up
pushi.e 1
add.i.v
pop.v.v self.hold_up
push.v self.hold_up
pushi.e 8
cmp.i.v GTE
bf [141]

:[140]
pushi.e 1
pop.v.i self._up_pressed
pushi.e 6
pop.v.i self.hold_up

:[141]
push.v self._up_pressed
pushi.e 1
cmp.i.v EQ
bf [145]

:[142]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
pushi.e 0
cmp.i.v GT
bf [145]

:[143]
push.i 62491329
setowner.e
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
sub.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.pagemax
cmp.v.v LT
bf [145]

:[144]
push.v self.pagemax
pushi.e 1
sub.i.v
pop.v.v self.pagemax

:[145]
b [147]

:[146]
pushi.e 0
pop.v.i self.hold_up

:[147]
pushi.e 0
pop.v.i self.j
push.v self.pagemax
pop.v.v self.i

:[148]
push.v self.i
pushi.e 5
push.v self.pagemax
add.v.i
cmp.v.v LT
bf [154]

:[149]
pushi.e 270
pushi.e -1
pushi.e 12
push.v [array]self.menuc
push.v self.pagemax
sub.v.v
pushi.e 40
mul.i.v
add.v.i
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.g
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponname
pop.v.v self._itempname
push.v self._itempname
push.s " "@353
cmp.s.v EQ
bf [151]

:[150]
push.s "--------"@9732
pop.v.s self._itempname
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[151]
push.v self._itempname
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.j
pushi.e 40
mul.i.v
add.v.i
pushi.e 60
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponvalue
pushi.e 1
cmp.i.v GT
bf [153]

:[152]
push.s "$"@13512
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i string(argc=1)
add.v.s
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.j
pushi.e 40
mul.i.v
add.v.i
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v

:[153]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [148]

:[154]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.menu
pushi.e 12
cmp.i.v EQ
bf [173]

:[155]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [157]

:[156]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [158]

:[157]
push.e 0

:[158]
bf [165]

:[159]
pushi.e -1
pushi.e -1
pushi.e 12
push.v [array]self.menuc
conv.v.i
push.v [array]self.weaponvalue
pushi.e 1
cmp.i.v GT
bf [161]

:[160]
pushi.e 16
pop.v.i self.menu
b [162]

:[161]
pushi.e 4
pop.v.i self.sidemessage2

:[162]
pushi.e -1
pushi.e -1
pushi.e 12
push.v [array]self.menuc
conv.v.i
push.v [array]self.weaponvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.sellvalue
pushi.e 12
pop.v.i self.tempmenu
pushi.e 2
pop.v.i self.onebuffer
pushi.e 1331
pushenv [164]

:[163]
call.i instance_destroy(argc=0)
popz.v

:[164]
popenv [163]

:[165]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [168]

:[166]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [168]

:[167]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [169]

:[168]
push.e 0

:[169]
bf [173]

:[170]
pushi.e 0
pop.v.i self.sidemessage
pushi.e 10
pop.v.i self.menu
pushi.e 2
pop.v.i self.twobuffer
pushi.e 1331
pushenv [172]

:[171]
call.i instance_destroy(argc=0)
popz.v

:[172]
popenv [171]

:[173]
call.i gml_Script_scr_shopmorearrow_ch1(argc=0)
popz.v
push.v self.menumax
pushi.e 1
cmp.i.v GT
bf [181]

:[174]
pushi.e 0
pop.v.i self.i

:[175]
push.v self.i
push.v self.menumax
cmp.v.v LTE
bf [181]

:[176]
pushi.e 0
pop.v.i self.buff
pushi.e -1
pushi.e 12
push.v [array]self.menuc
push.v self.i
cmp.v.v EQ
bf [178]

:[177]
push.v self.buff
pushi.e 3
add.i.v
pop.v.v self.buff

:[178]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.weapon
pushi.e 0
cmp.i.v EQ
bf [180]

:[179]
push.v self.buff
pushi.e 1
sub.i.v
pop.v.v self.buff

:[180]
pushi.e 0
conv.b.v
pushi.e 297
push.v self.i
pushi.e 130
conv.i.d
push.v self.menumax
div.v.d
mul.v.v
add.v.i
push.v self.buff
add.v.v
pushi.e 377
push.v self.buff
add.v.i
pushi.e 295
push.v self.i
pushi.e 130
conv.i.d
push.v self.menumax
div.v.d
mul.v.v
add.v.i
push.v self.buff
sub.v.v
pushi.e 375
push.v self.buff
sub.v.i
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [175]

:[181]
push.v self.menu
pushi.e 13
cmp.i.v EQ
bt [183]

:[182]
push.v self.menu
pushi.e 17
cmp.i.v EQ
b [184]

:[183]
push.e 1

:[184]
bf [242]

:[185]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font_ch1(argc=1)
popz.v
pushi.e 11
pop.v.i self.menumax
push.v self.menu
pushi.e 13
cmp.i.v EQ
bf [208]

:[186]
pushi.e 0
pop.v.i self._up_pressed
pushi.e 0
pop.v.i self._down_pressed
call.i gml_Script_down_h_ch1(argc=0)
conv.v.b
bf [196]

:[187]
pushi.e 0
pop.v.i self.hold_up
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [189]

:[188]
pushi.e 1
pop.v.i self._down_pressed

:[189]
push.v self.hold_down
pushi.e 1
add.i.v
pop.v.v self.hold_down
push.v self.hold_down
pushi.e 8
cmp.i.v GTE
bf [191]

:[190]
pushi.e 1
pop.v.i self._down_pressed
pushi.e 6
pop.v.i self.hold_down

:[191]
push.v self._down_pressed
pushi.e 1
cmp.i.v EQ
bf [195]

:[192]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [195]

:[193]
push.i 62491329
setowner.e
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
add.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.pagemax
pushi.e 4
add.i.v
cmp.v.v GT
bf [195]

:[194]
push.v self.pagemax
pushi.e 1
add.i.v
pop.v.v self.pagemax

:[195]
b [197]

:[196]
pushi.e 0
pop.v.i self.hold_down

:[197]
call.i gml_Script_up_h_ch1(argc=0)
conv.v.b
bf [207]

:[198]
pushi.e 0
pop.v.i self.hold_down
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [200]

:[199]
pushi.e 1
pop.v.i self._up_pressed

:[200]
push.v self.hold_up
pushi.e 1
add.i.v
pop.v.v self.hold_up
push.v self.hold_up
pushi.e 8
cmp.i.v GTE
bf [202]

:[201]
pushi.e 1
pop.v.i self._up_pressed
pushi.e 6
pop.v.i self.hold_up

:[202]
push.v self._up_pressed
pushi.e 1
cmp.i.v EQ
bf [206]

:[203]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
pushi.e 0
cmp.i.v GT
bf [206]

:[204]
push.i 62491329
setowner.e
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
sub.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.pagemax
cmp.v.v LT
bf [206]

:[205]
push.v self.pagemax
pushi.e 1
sub.i.v
pop.v.v self.pagemax

:[206]
b [208]

:[207]
pushi.e 0
pop.v.i self.hold_up

:[208]
pushi.e 0
pop.v.i self.j
push.v self.pagemax
pop.v.v self.i

:[209]
push.v self.i
pushi.e 5
push.v self.pagemax
add.v.i
cmp.v.v LT
bf [215]

:[210]
pushi.e 270
pushi.e -1
pushi.e 13
push.v [array]self.menuc
push.v self.pagemax
sub.v.v
pushi.e 40
mul.i.v
add.v.i
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.g
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armorname
pop.v.v self._itempname
push.v self._itempname
push.s " "@353
cmp.s.v EQ
bf [212]

:[211]
push.s "--------"@9732
pop.v.s self._itempname
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[212]
push.v self._itempname
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.j
pushi.e 40
mul.i.v
add.v.i
pushi.e 60
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armorvalue
pushi.e 1
cmp.i.v GT
bf [214]

:[213]
push.s "$"@13512
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armorvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i string(argc=1)
add.v.s
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.j
pushi.e 40
mul.i.v
add.v.i
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v

:[214]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [209]

:[215]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.menu
pushi.e 13
cmp.i.v EQ
bf [234]

:[216]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [218]

:[217]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [219]

:[218]
push.e 0

:[219]
bf [226]

:[220]
pushi.e -1
pushi.e -1
pushi.e 13
push.v [array]self.menuc
conv.v.i
push.v [array]self.armorvalue
pushi.e 1
cmp.i.v GT
bf [222]

:[221]
pushi.e 17
pop.v.i self.menu
b [223]

:[222]
pushi.e 4
pop.v.i self.sidemessage2

:[223]
pushi.e -1
pushi.e -1
pushi.e 13
push.v [array]self.menuc
conv.v.i
push.v [array]self.armorvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.sellvalue
pushi.e 13
pop.v.i self.tempmenu
pushi.e 2
pop.v.i self.onebuffer
pushi.e 1331
pushenv [225]

:[224]
call.i instance_destroy(argc=0)
popz.v

:[225]
popenv [224]

:[226]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [229]

:[227]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [229]

:[228]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [230]

:[229]
push.e 0

:[230]
bf [234]

:[231]
pushi.e 0
pop.v.i self.sidemessage
pushi.e 10
pop.v.i self.menu
pushi.e 2
pop.v.i self.twobuffer
pushi.e 1331
pushenv [233]

:[232]
call.i instance_destroy(argc=0)
popz.v

:[233]
popenv [232]

:[234]
call.i gml_Script_scr_shopmorearrow_ch1(argc=0)
popz.v
push.v self.menumax
pushi.e 1
cmp.i.v GT
bf [242]

:[235]
pushi.e 0
pop.v.i self.i

:[236]
push.v self.i
push.v self.menumax
cmp.v.v LTE
bf [242]

:[237]
pushi.e 0
pop.v.i self.buff
pushi.e -1
pushi.e 13
push.v [array]self.menuc
push.v self.i
cmp.v.v EQ
bf [239]

:[238]
push.v self.buff
pushi.e 3
add.i.v
pop.v.v self.buff

:[239]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.armor
pushi.e 0
cmp.i.v EQ
bf [241]

:[240]
push.v self.buff
pushi.e 1
sub.i.v
pop.v.v self.buff

:[241]
pushi.e 0
conv.b.v
pushi.e 297
push.v self.i
pushi.e 130
conv.i.d
push.v self.menumax
div.v.d
mul.v.v
add.v.i
push.v self.buff
add.v.v
pushi.e 377
push.v self.buff
add.v.i
pushi.e 295
push.v self.i
pushi.e 130
conv.i.d
push.v self.menumax
div.v.d
mul.v.v
add.v.i
push.v self.buff
sub.v.v
pushi.e 375
push.v self.buff
sub.v.i
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [236]

:[242]
push.v arg.argument0
pushi.e 5
cmp.i.v EQ
bf [297]

:[243]
push.v self.menu
pushi.e 15
cmp.i.v EQ
bf [263]

:[244]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [246]

:[245]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [247]

:[246]
push.e 0

:[247]
bf [249]

:[248]
push.v self.tempmenu
pop.v.v self.menu
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[249]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [252]

:[250]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [252]

:[251]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [253]

:[252]
push.e 0

:[253]
bf [263]

:[254]
pushi.e -1
pushi.e 15
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [261]

:[255]
pushi.e 377
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v global.gold
push.v self.sellvalue
add.v.v
pop.v.v global.gold
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 11
push.v [array]self.menuc
call.i gml_Script_scr_itemshift_ch1(argc=2)
popz.v
call.i gml_Script_scr_iteminfo_all_ch1(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck_ch1(argc=1)
popz.v
pushi.e -5
pushi.e -1
pushi.e 11
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
pushi.e 0
cmp.i.v EQ
bf [258]

:[256]
push.i 62491329
setowner.e
pushi.e -1
pushi.e 11
dup.i 1
push.v [array]self.menuc
pushi.e 1
sub.i.v
pop.i.v [array]self.menuc
push.v self.pagemax
pushi.e 0
cmp.i.v GT
bf [258]

:[257]
push.v self.pagemax
pushi.e 1
sub.i.v
pop.v.v self.pagemax

:[258]
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [260]

:[259]
pushi.e 10
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage
b [261]

:[260]
pushi.e 11
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage2

:[261]
pushi.e -1
pushi.e 15
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [263]

:[262]
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 11
pop.v.i self.menu

:[263]
push.v self.menu
pushi.e 16
cmp.i.v EQ
bf [280]

:[264]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [266]

:[265]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [267]

:[266]
push.e 0

:[267]
bf [269]

:[268]
push.v self.tempmenu
pop.v.v self.menu
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[269]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [272]

:[270]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [272]

:[271]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [273]

:[272]
push.e 0

:[273]
bf [280]

:[274]
pushi.e -1
pushi.e 16
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [278]

:[275]
pushi.e 377
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v global.gold
push.v self.sellvalue
add.v.v
pop.v.v global.gold
push.i 124880645
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e -1
pushi.e 12
push.v [array]self.menuc
conv.v.i
pop.v.v [array]self.weapon
call.i gml_Script_scr_weaponinfo_all_ch1(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_weaponcheck_inventory_ch1(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [277]

:[276]
pushi.e 10
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage
b [278]

:[277]
pushi.e 12
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage2

:[278]
pushi.e -1
pushi.e 16
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [280]

:[279]
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 12
pop.v.i self.menu

:[280]
push.v self.menu
pushi.e 17
cmp.i.v EQ
bf [297]

:[281]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [283]

:[282]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [284]

:[283]
push.e 0

:[284]
bf [286]

:[285]
push.v self.tempmenu
pop.v.v self.menu
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[286]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [289]

:[287]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [289]

:[288]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [290]

:[289]
push.e 0

:[290]
bf [297]

:[291]
pushi.e -1
pushi.e 17
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [295]

:[292]
pushi.e 377
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v global.gold
push.v self.sellvalue
add.v.v
pop.v.v global.gold
push.i 124880646
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e -1
pushi.e 13
push.v [array]self.menuc
conv.v.i
pop.v.v [array]self.armor
call.i gml_Script_scr_armorinfo_all_ch1(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_armorcheck_inventory_ch1(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [294]

:[293]
pushi.e 10
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage
b [295]

:[294]
pushi.e 13
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage2

:[295]
pushi.e -1
pushi.e 17
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [297]

:[296]
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 13
pop.v.i self.menu

:[297]
exit.i

:[298]
push.i [function]gml_Script_scr_shopmenu_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_shopmenu_ch1
popz.v

:[end]