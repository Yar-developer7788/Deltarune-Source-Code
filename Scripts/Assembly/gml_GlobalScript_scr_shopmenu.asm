.localvar 2 arguments
.localvar 9745 noneleft 1935

:[0]
b [304]

> gml_Script_scr_shopmenu (locals=1, argc=1)
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
call.i gml_Script_scr_darkbox_black(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
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
call.i gml_Script_scr_84_set_draw_font(argc=1)
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
pushi.e 2251
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
pushi.e 2251
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
pushi.e 2253
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
pushi.e 2252
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
push.i 21203657
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
pushi.e 1317
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
pushi.e 1317
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
bf [236]

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
bf [124]

:[63]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck(argc=1)
popz.v
push.v self.selltotal
push.v self.nothingcount
sub.v.v
pushi.e 1
sub.i.v
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
call.i gml_Script_down_h(argc=0)
conv.v.b
bf [76]

:[67]
pushi.e 0
pop.v.i self.hold_up
call.i gml_Script_down_p(argc=0)
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
push.i 21203649
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
call.i gml_Script_up_h(argc=0)
conv.v.b
bf [87]

:[78]
pushi.e 0
pop.v.i self.hold_down
call.i gml_Script_up_p(argc=0)
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
push.i 21203649
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
pushi.e 2531
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
push.v [array]self.itemsellname
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
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.itemsellvalue
pushi.e 1
cmp.i.v GT
bf [94]

:[93]
push.s "scr_shopmenu_slash_scr_shopmenu_gml_158_0"@9734
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.itemsellvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i string(argc=1)
push.s "$~1"@9735
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
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
bf [116]

:[96]
call.i gml_Script_button1_p(argc=0)
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
bf [108]

:[100]
pushi.e -1
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemsellvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.sellvalue
pushi.e -1
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemsellvalue
pushi.e 1
cmp.i.v GT
bf [102]

:[101]
pushi.e 15
pop.v.i self.menu
b [105]

:[102]
pushi.e -1
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemsellname
push.s " "@353
cmp.s.v EQ
bf [104]

:[103]
pushi.e 4
pop.v.i self.sidemessage2
b [105]

:[104]
pushi.e 3
pop.v.i self.sidemessage2

:[105]
pushi.e 11
pop.v.i self.tempmenu
pushi.e 2
pop.v.i self.onebuffer
pushi.e 64
pushenv [107]

:[106]
call.i instance_destroy(argc=0)
popz.v

:[107]
popenv [106]

:[108]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [111]

:[109]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [111]

:[110]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [112]

:[111]
push.e 0

:[112]
bf [116]

:[113]
pushi.e 0
pop.v.i self.sidemessage
pushi.e 10
pop.v.i self.menu
pushi.e 2
pop.v.i self.twobuffer
pushi.e 64
pushenv [115]

:[114]
call.i instance_destroy(argc=0)
popz.v

:[115]
popenv [114]

:[116]
push.v self.menu
pushi.e 15
cmp.i.v NEQ
bf [118]

:[117]
push.v self.menumax
call.i gml_Script_scr_shopmorearrow(argc=1)
popz.v

:[118]
push.v self.menumax
pushi.e 4
cmp.i.v GT
bf [124]

:[119]
pushi.e 0
pop.v.i self.i

:[120]
push.v self.i
push.v self.menumax
cmp.v.v LTE
bf [124]

:[121]
pushi.e 0
pop.v.i self.buff
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.i
cmp.v.v EQ
bf [123]

:[122]
pushi.e 3
pop.v.i self.buff

:[123]
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
b [120]

:[124]
push.v self.menu
pushi.e 12
cmp.i.v EQ
bt [126]

:[125]
push.v self.menu
pushi.e 16
cmp.i.v EQ
b [127]

:[126]
push.e 1

:[127]
bf [180]

:[128]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 47
pop.v.i self.menumax
push.v self.menu
pushi.e 12
cmp.i.v EQ
bf [151]

:[129]
pushi.e 0
pop.v.i self._up_pressed
pushi.e 0
pop.v.i self._down_pressed
call.i gml_Script_down_h(argc=0)
conv.v.b
bf [139]

:[130]
pushi.e 0
pop.v.i self.hold_up
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [132]

:[131]
pushi.e 1
pop.v.i self._down_pressed

:[132]
push.v self.hold_down
pushi.e 1
add.i.v
pop.v.v self.hold_down
push.v self.hold_down
pushi.e 8
cmp.i.v GTE
bf [134]

:[133]
pushi.e 1
pop.v.i self._down_pressed
pushi.e 6
pop.v.i self.hold_down

:[134]
push.v self._down_pressed
pushi.e 1
cmp.i.v EQ
bf [138]

:[135]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [138]

:[136]
push.i 21203649
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
bf [138]

:[137]
push.v self.pagemax
pushi.e 1
add.i.v
pop.v.v self.pagemax

:[138]
b [140]

:[139]
pushi.e 0
pop.v.i self.hold_down

:[140]
call.i gml_Script_up_h(argc=0)
conv.v.b
bf [150]

:[141]
pushi.e 0
pop.v.i self.hold_down
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [143]

:[142]
pushi.e 1
pop.v.i self._up_pressed

:[143]
push.v self.hold_up
pushi.e 1
add.i.v
pop.v.v self.hold_up
push.v self.hold_up
pushi.e 8
cmp.i.v GTE
bf [145]

:[144]
pushi.e 1
pop.v.i self._up_pressed
pushi.e 6
pop.v.i self.hold_up

:[145]
push.v self._up_pressed
pushi.e 1
cmp.i.v EQ
bf [149]

:[146]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
pushi.e 0
cmp.i.v GT
bf [149]

:[147]
push.i 21203649
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
bf [149]

:[148]
push.v self.pagemax
pushi.e 1
sub.i.v
pop.v.v self.pagemax

:[149]
b [151]

:[150]
pushi.e 0
pop.v.i self.hold_up

:[151]
pushi.e 0
pop.v.i self.j
push.v self.pagemax
pop.v.v self.i

:[152]
push.v self.i
pushi.e 5
push.v self.pagemax
add.v.i
cmp.v.v LT
bf [158]

:[153]
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
pushi.e 2531
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
bf [155]

:[154]
push.s "--------"@9732
pop.v.s self._itempname
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[155]
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
bf [157]

:[156]
push.s "scr_shopmenu_slash_scr_shopmenu_gml_270_0"@9743
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i string(argc=1)
push.s "$~1"@9735
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
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

:[157]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [152]

:[158]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.menu
pushi.e 12
cmp.i.v EQ
bf [179]

:[159]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [161]

:[160]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [162]

:[161]
push.e 0

:[162]
bf [171]

:[163]
pushi.e -1
pushi.e -1
pushi.e 12
push.v [array]self.menuc
conv.v.i
push.v [array]self.weaponvalue
pushi.e 1
cmp.i.v GT
bf [165]

:[164]
pushi.e 16
pop.v.i self.menu
b [168]

:[165]
pushi.e -1
pushi.e -1
pushi.e 12
push.v [array]self.menuc
conv.v.i
push.v [array]self.weaponname
push.s " "@353
cmp.s.v NEQ
bf [167]

:[166]
pushi.e 3
pop.v.i self.sidemessage2
b [168]

:[167]
pushi.e 4
pop.v.i self.sidemessage2

:[168]
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
pushi.e 64
pushenv [170]

:[169]
call.i instance_destroy(argc=0)
popz.v

:[170]
popenv [169]

:[171]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [174]

:[172]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [174]

:[173]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [175]

:[174]
push.e 0

:[175]
bf [179]

:[176]
pushi.e 0
pop.v.i self.sidemessage
pushi.e 10
pop.v.i self.menu
pushi.e 2
pop.v.i self.twobuffer
pushi.e 64
pushenv [178]

:[177]
call.i instance_destroy(argc=0)
popz.v

:[178]
popenv [177]

:[179]
push.v self.menumax
call.i gml_Script_scr_shopmorearrow(argc=1)
popz.v
pushi.e 3
pop.v.i self.buff
pushi.e 0
conv.b.v
pushi.e 297
push.v self.pagemax
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
push.v self.pagemax
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

:[180]
push.v self.menu
pushi.e 13
cmp.i.v EQ
bt [182]

:[181]
push.v self.menu
pushi.e 17
cmp.i.v EQ
b [183]

:[182]
push.e 1

:[183]
bf [236]

:[184]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 47
pop.v.i self.menumax
push.v self.menu
pushi.e 13
cmp.i.v EQ
bf [207]

:[185]
pushi.e 0
pop.v.i self._up_pressed
pushi.e 0
pop.v.i self._down_pressed
call.i gml_Script_down_h(argc=0)
conv.v.b
bf [195]

:[186]
pushi.e 0
pop.v.i self.hold_up
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [188]

:[187]
pushi.e 1
pop.v.i self._down_pressed

:[188]
push.v self.hold_down
pushi.e 1
add.i.v
pop.v.v self.hold_down
push.v self.hold_down
pushi.e 8
cmp.i.v GTE
bf [190]

:[189]
pushi.e 1
pop.v.i self._down_pressed
pushi.e 6
pop.v.i self.hold_down

:[190]
push.v self._down_pressed
pushi.e 1
cmp.i.v EQ
bf [194]

:[191]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [194]

:[192]
push.i 21203649
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
bf [194]

:[193]
push.v self.pagemax
pushi.e 1
add.i.v
pop.v.v self.pagemax

:[194]
b [196]

:[195]
pushi.e 0
pop.v.i self.hold_down

:[196]
call.i gml_Script_up_h(argc=0)
conv.v.b
bf [206]

:[197]
pushi.e 0
pop.v.i self.hold_down
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [199]

:[198]
pushi.e 1
pop.v.i self._up_pressed

:[199]
push.v self.hold_up
pushi.e 1
add.i.v
pop.v.v self.hold_up
push.v self.hold_up
pushi.e 8
cmp.i.v GTE
bf [201]

:[200]
pushi.e 1
pop.v.i self._up_pressed
pushi.e 6
pop.v.i self.hold_up

:[201]
push.v self._up_pressed
pushi.e 1
cmp.i.v EQ
bf [205]

:[202]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
pushi.e 0
cmp.i.v GT
bf [205]

:[203]
push.i 21203649
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
bf [205]

:[204]
push.v self.pagemax
pushi.e 1
sub.i.v
pop.v.v self.pagemax

:[205]
b [207]

:[206]
pushi.e 0
pop.v.i self.hold_up

:[207]
pushi.e 0
pop.v.i self.j
push.v self.pagemax
pop.v.v self.i

:[208]
push.v self.i
pushi.e 5
push.v self.pagemax
add.v.i
cmp.v.v LT
bf [214]

:[209]
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
pushi.e 2531
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
bf [211]

:[210]
push.s "--------"@9732
pop.v.s self._itempname
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[211]
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
bf [213]

:[212]
push.s "scr_shopmenu_slash_scr_shopmenu_gml_389_0"@9744
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armorvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i string(argc=1)
push.s "$~1"@9735
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
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

:[213]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [208]

:[214]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.menu
pushi.e 13
cmp.i.v EQ
bf [235]

:[215]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [217]

:[216]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [218]

:[217]
push.e 0

:[218]
bf [227]

:[219]
pushi.e -1
pushi.e -1
pushi.e 13
push.v [array]self.menuc
conv.v.i
push.v [array]self.armorvalue
pushi.e 1
cmp.i.v GT
bf [221]

:[220]
pushi.e 17
pop.v.i self.menu
b [224]

:[221]
pushi.e -1
pushi.e -1
pushi.e 13
push.v [array]self.menuc
conv.v.i
push.v [array]self.armorname
push.s " "@353
cmp.s.v NEQ
bf [223]

:[222]
pushi.e 3
pop.v.i self.sidemessage2
b [224]

:[223]
pushi.e 4
pop.v.i self.sidemessage2

:[224]
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
pushi.e 64
pushenv [226]

:[225]
call.i instance_destroy(argc=0)
popz.v

:[226]
popenv [225]

:[227]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [230]

:[228]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [230]

:[229]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [231]

:[230]
push.e 0

:[231]
bf [235]

:[232]
pushi.e 0
pop.v.i self.sidemessage
pushi.e 10
pop.v.i self.menu
pushi.e 2
pop.v.i self.twobuffer
pushi.e 64
pushenv [234]

:[233]
call.i instance_destroy(argc=0)
popz.v

:[234]
popenv [233]

:[235]
pushi.e 47
conv.i.v
call.i gml_Script_scr_shopmorearrow(argc=1)
popz.v
pushi.e 3
pop.v.i self.buff
pushi.e 0
conv.b.v
pushi.e 297
push.v self.pagemax
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
push.v self.pagemax
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

:[236]
push.v arg.argument0
pushi.e 5
cmp.i.v EQ
bf [303]

:[237]
push.v self.menu
pushi.e 15
cmp.i.v EQ
bf [269]

:[238]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [240]

:[239]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [241]

:[240]
push.e 0

:[241]
bf [243]

:[242]
push.v self.tempmenu
pop.v.v self.menu
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[243]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [246]

:[244]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [246]

:[245]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [247]

:[246]
push.e 0

:[247]
bf [269]

:[248]
pushi.e -1
pushi.e 15
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [267]

:[249]
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v global.gold
push.v self.sellvalue
add.v.v
pop.v.v global.gold
pushi.e 0
pop.v.i local.noneleft
push.v self.selltype
push.s "item"@229
cmp.s.v EQ
bf [258]

:[250]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 11
push.v [array]self.menuc
call.i gml_Script_scr_itemshift(argc=2)
popz.v
call.i gml_Script_scr_iteminfo_all(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [252]

:[251]
pushi.e 1
pop.v.i local.noneleft

:[252]
push.v self.itemcount
pop.v.v self.nothingcount
pushi.e 0
pop.v.i self.i

:[253]
push.v self.i
push.v self.selltotal
cmp.v.v LT
bf [255]

:[254]
push.i 21203672
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.itemvalue
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemsellvalue
push.i 21203647
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.itemnameb
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemsellname
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [253]

:[255]
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
push.i 21203649
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
push.v self.selltype
push.s "pocket"@9747
cmp.s.v EQ
bf [264]

:[259]
push.i 42305287
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e -1
pushi.e 11
push.v [array]self.menuc
conv.v.i
pop.v.v [array]self.pocketitem
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck_pocket(argc=1)
popz.v
push.v self.itemcount
pushi.e -5
pushi.e 64
push.v [array]self.flag
cmp.v.v EQ
bf [261]

:[260]
pushi.e 1
pop.v.i local.noneleft

:[261]
pushi.e 0
pop.v.i self.nothingcount
pushi.e 0
pop.v.i self.i

:[262]
push.v self.i
pushi.e -5
pushi.e 64
push.v [array]self.flag
cmp.v.v LT
bf [264]

:[263]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.pocketitem
call.i gml_Script_scr_iteminfo(argc=1)
popz.v
push.i 21203672
setowner.e
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemsellvalue
push.i 21203647
setowner.e
push.v self.itemnameb
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemsellname
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [262]

:[264]
pushloc.v local.noneleft
pushi.e 1
cmp.i.v EQ
bf [266]

:[265]
pushi.e 10
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage
b [267]

:[266]
pushi.e 11
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage2

:[267]
pushi.e -1
pushi.e 15
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [269]

:[268]
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 11
pop.v.i self.menu

:[269]
push.v self.menu
pushi.e 16
cmp.i.v EQ
bf [286]

:[270]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [272]

:[271]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [273]

:[272]
push.e 0

:[273]
bf [275]

:[274]
push.v self.tempmenu
pop.v.v self.menu
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[275]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [278]

:[276]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [278]

:[277]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [279]

:[278]
push.e 0

:[279]
bf [286]

:[280]
pushi.e -1
pushi.e 16
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [284]

:[281]
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v global.gold
push.v self.sellvalue
add.v.v
pop.v.v global.gold
push.i 42305285
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e -1
pushi.e 12
push.v [array]self.menuc
conv.v.i
pop.v.v [array]self.weapon
call.i gml_Script_scr_weaponinfo_all(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_weaponcheck_inventory(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [283]

:[282]
pushi.e 10
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage
b [284]

:[283]
pushi.e 12
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage2

:[284]
pushi.e -1
pushi.e 16
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [286]

:[285]
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 12
pop.v.i self.menu

:[286]
push.v self.menu
pushi.e 17
cmp.i.v EQ
bf [303]

:[287]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [289]

:[288]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [290]

:[289]
push.e 0

:[290]
bf [292]

:[291]
push.v self.tempmenu
pop.v.v self.menu
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[292]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [295]

:[293]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [295]

:[294]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [296]

:[295]
push.e 0

:[296]
bf [303]

:[297]
pushi.e -1
pushi.e 17
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [301]

:[298]
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v global.gold
push.v self.sellvalue
add.v.v
pop.v.v global.gold
push.i 42305286
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e -1
pushi.e 13
push.v [array]self.menuc
conv.v.i
pop.v.v [array]self.armor
call.i gml_Script_scr_armorinfo_all(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_armorcheck_inventory(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [300]

:[299]
pushi.e 10
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage
b [301]

:[300]
pushi.e 13
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage2

:[301]
pushi.e -1
pushi.e 17
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [303]

:[302]
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 13
pop.v.i self.menu

:[303]
exit.i

:[304]
push.i [function]gml_Script_scr_shopmenu
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_shopmenu
popz.v

:[end]