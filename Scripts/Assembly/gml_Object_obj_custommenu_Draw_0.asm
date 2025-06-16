.localvar 2 arguments
.localvar 20800 button_x_offset 8894
.localvar 14922 x_offset 8895

:[0]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
pushi.e 0
pop.v.i self.m

:[1]
push.v self.m
push.v self.menuMax
cmp.v.v LT
bf [97]

:[2]
pushi.e 1
pop.v.i self.drawmenu
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuDisplayCondition
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.menu
push.v self.m
cmp.v.v NEQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 0
pop.v.i self.drawmenu

:[7]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuDisplayCondition
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.v self.menu
push.v self.m
cmp.v.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 0
pop.v.i self.drawmenu

:[12]
push.v self.drawmenu
conv.v.b
bf [96]

:[13]
pushi.e 0
pop.v.i self.wrap
pushi.e 0
pop.v.i self.vwrap
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuMinimumID
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuScrollCurrent
add.v.v
pop.v.v self.minj
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuMinimumID
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuScrollCurrent
add.v.v
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuPageSize
add.v.v
pop.v.v self.maxj
push.v self.maxj
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuMaximumID
pushi.e 1
add.i.v
cmp.v.v GTE
bf [15]

:[14]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuMaximumID
pushi.e 1
add.i.v
pop.v.v self.maxj

:[15]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDraw
pushi.e 1
cmp.i.v EQ
bf [29]

:[16]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawY2
add.v.v
push.v self.xx
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawX2
add.v.v
push.v self.yy
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawY1
add.v.v
push.v self.xx
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawX1
add.v.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawY2
add.v.v
pushi.e 4
sub.i.v
push.v self.xx
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawX2
add.v.v
pushi.e 4
sub.i.v
push.v self.yy
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawY1
add.v.v
pushi.e 4
add.i.v
push.v self.xx
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawX1
add.v.v
pushi.e 4
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.trimove
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuVEdgeBehavior
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
push.v self.menu
push.v self.m
cmp.v.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [24]

:[20]
push.v self.maxj
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuMaximumID
pushi.e 1
add.i.v
cmp.v.v LT
bf [22]

:[21]
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
push.v self.yy
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawY2
add.v.v
push.v self.trimove
add.v.v
push.v self.xx
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawX1
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawX2
add.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 1367
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[22]
push.v self.minj
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuMinimumID
cmp.v.v GT
bf [24]

:[23]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawY1
add.v.v
push.v self.trimove
sub.v.v
push.v self.xx
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawX1
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawX2
add.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 1367
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[24]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuHEdgeBehavior
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
push.v self.menu
push.v self.m
cmp.v.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 270
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawY1
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawY2
add.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.xx
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawX1
add.v.v
push.v self.trimove
add.v.v
pushi.e 0
conv.i.v
pushi.e 1367
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 270
conv.i.v
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawY1
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawY2
add.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.xx
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuBoxDrawX2
add.v.v
push.v self.trimove
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1367
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[29]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuTextFont
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.j

:[30]
push.v self.j
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuHeaderTextAmount
cmp.v.v LT
bf [38]

:[31]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.menuHeaderColor
push.v self.j
conv.v.i
pushaf.e
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
pop.v.i self.textxscale
pushi.e 1
pop.v.i self.textyscale
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.menuHeaderWidth
push.v self.j
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v GT
bf [33]

:[32]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.menuHeaderWidth
push.v self.j
conv.v.i
pushaf.e
pop.v.v self.textxscale

:[33]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.menuHeaderWidth
push.v self.j
conv.v.i
pushaf.e
pushi.e 5
cmp.i.v GTE
bf [35]

:[34]
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuHeaderWidth
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.menuHeaderText
push.v self.j
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
div.v.v
call.i clamp(argc=3)
pop.v.v self.textxscale

:[35]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.menuHeaderHeight
push.v self.j
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v GT
bf [37]

:[36]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.menuHeaderHeight
push.v self.j
conv.v.i
pushaf.e
pop.v.v self.textyscale

:[37]
pushi.e 0
conv.i.v
push.v self.textyscale
push.v self.textxscale
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.menuHeaderText
push.v self.j
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.menuHeaderY
push.v self.j
conv.v.i
pushaf.e
add.v.v
push.v self.xx
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.menuHeaderX
push.v self.j
conv.v.i
pushaf.e
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [30]

:[38]
push.v self.m
push.v self.menu
cmp.v.v EQ
bf [49]

:[39]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionTopComment
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuCoord
conv.v.i
pushaf.e
push.s " "@353
cmp.s.v NEQ
bf [49]

:[40]
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 120
add.i.v
push.v self.xx
pushi.e 700
add.i.v
push.v self.yy
pushi.e 10
sub.i.v
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.display_buttons
conv.v.b
bf [48]

:[41]
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
push.v self.yy
pushi.e 22
add.i.v
push.v self.xx
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e -5
pushi.e 4
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
call.i draw_sprite_ext(argc=9)
popz.v
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [43]

:[42]
pushi.e 0
conv.i.v
b [44]

:[43]
pushi.e -40
conv.i.v

:[44]
pop.v.v local.button_x_offset
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
push.v self.yy
pushi.e 22
add.i.v
push.v self.xx
pushi.e 190
add.i.v
pushloc.v local.button_x_offset
add.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e -5
pushi.e 5
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
call.i draw_sprite_ext(argc=9)
popz.v
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [46]

:[45]
pushi.e 0
conv.i.v
b [47]

:[46]
pushi.e -36
conv.i.v

:[47]
pop.v.v local.x_offset
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionTopComment
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuCoord
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 20
add.i.v
push.v self.xx
pushi.e 18
add.i.v
pushloc.v local.x_offset
add.v.v
call.i draw_text(argc=3)
popz.v
b [49]

:[48]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionTopComment
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuCoord
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 20
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[49]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuTextFont
call.i draw_set_font(argc=1)
popz.v
push.v self.minj
pop.v.v self.j

:[50]
push.v self.j
push.v self.maxj
cmp.v.v LT
bf [96]

:[51]
push.v self.m
push.v self.menu
cmp.v.v EQ
bf [58]

:[52]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionSelectable
push.v self.j
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuTextColorUnselectable
call.i draw_set_color(argc=1)
popz.v
b [57]

:[54]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuCoord
push.v self.j
cmp.v.v EQ
bf [56]

:[55]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuTextColorHover
call.i draw_set_color(argc=1)
popz.v
b [57]

:[56]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuTextColor
call.i draw_set_color(argc=1)
popz.v

:[57]
b [61]

:[58]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionSelected
push.v self.j
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuTextColorSelected
call.i draw_set_color(argc=1)
popz.v
b [61]

:[60]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuTextColorInactive
call.i draw_set_color(argc=1)
popz.v

:[61]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuSpacingOverride
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
push.i 166863
setowner.e
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuX
push.v self.wrap
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuSpacingX
mul.v.v
add.v.v
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypopaf]self.optionX
push.v self.j
conv.v.i
popaf.e
push.i 166866
setowner.e
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuY
push.v self.vwrap
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuSpacingY
mul.v.v
add.v.v
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypopaf]self.optionY
push.v self.j
conv.v.i
popaf.e

:[63]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionX
push.v self.j
conv.v.i
pushaf.e
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuTextOffsetX
add.v.v
pop.v.v self.textx
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionY
push.v self.j
conv.v.i
pushaf.e
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuTextOffsetY
add.v.v
pop.v.v self.texty
pushi.e 1
pop.v.i self.textxscale
pushi.e 1
pop.v.i self.textyscale
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuTextXScale
pushi.e 0
cmp.i.v GT
bf [65]

:[64]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuTextXScale
pop.v.v self.textxscale

:[65]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuTextXScale
pushi.e 5
cmp.i.v GTE
bf [67]

:[66]
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuTextXScale
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionText
push.v self.j
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
div.v.v
call.i clamp(argc=3)
pop.v.v self.textxscale

:[67]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuTextYScale
pushi.e 0
cmp.i.v GT
bf [69]

:[68]
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuTextYScale
pop.v.v self.textyscale

:[69]
pushi.e 0
conv.i.v
push.v self.textyscale
push.v self.textxscale
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionText
push.v self.j
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
push.v self.texty
push.v self.textx
call.i draw_text_transformed(argc=6)
popz.v
push.v self.wrap
push.e 1
add.i.v
pop.v.v self.wrap
push.v self.wrap
pushi.e -1
push.v self.m
conv.v.i
push.v [array]self.menuWidth
cmp.v.v GTE
bf [71]

:[70]
pushi.e 0
pop.v.i self.wrap
push.v self.vwrap
push.e 1
add.i.v
pop.v.v self.vwrap

:[71]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentA
push.v self.j
conv.v.i
pushaf.e
push.s " "@353
cmp.s.v NEQ
bf [79]

:[72]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentAColor
push.v self.j
conv.v.i
pushaf.e
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
pop.v.i self.textxscale
pushi.e 1
pop.v.i self.textyscale
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentAWidth
push.v self.j
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v GT
bf [74]

:[73]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentAWidth
push.v self.j
conv.v.i
pushaf.e
pop.v.v self.textxscale

:[74]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentAWidth
push.v self.j
conv.v.i
pushaf.e
pushi.e 5
cmp.i.v GTE
bf [76]

:[75]
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentAWidth
push.v self.j
conv.v.i
pushaf.e
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionText
push.v self.j
conv.v.i
pushaf.e
call.i string(argc=1)
call.i string_width(argc=1)
div.v.v
call.i clamp(argc=3)
pop.v.v self.textxscale

:[76]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentAHeight
push.v self.j
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v GT
bf [78]

:[77]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentAHeight
push.v self.j
conv.v.i
pushaf.e
pop.v.v self.textyscale

:[78]
pushi.e 0
conv.i.v
push.v self.textyscale
push.v self.textxscale
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentA
push.v self.j
conv.v.i
pushaf.e
call.i string(argc=1)
push.v self.texty
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentAYOffset
push.v self.j
conv.v.i
pushaf.e
add.v.v
push.v self.textx
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentAXOffset
push.v self.j
conv.v.i
pushaf.e
add.v.v
call.i draw_text_transformed(argc=6)
popz.v

:[79]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentB
push.v self.j
conv.v.i
pushaf.e
push.s " "@353
cmp.s.v NEQ
bf [87]

:[80]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentBColor
push.v self.j
conv.v.i
pushaf.e
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
pop.v.i self.textxscale
pushi.e 1
pop.v.i self.textyscale
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentBWidth
push.v self.j
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v GT
bf [82]

:[81]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentBWidth
push.v self.j
conv.v.i
pushaf.e
pop.v.v self.textxscale

:[82]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentBWidth
push.v self.j
conv.v.i
pushaf.e
pushi.e 5
cmp.i.v GTE
bf [84]

:[83]
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentBWidth
push.v self.j
conv.v.i
pushaf.e
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionText
push.v self.j
conv.v.i
pushaf.e
call.i string(argc=1)
call.i string_width(argc=1)
div.v.v
call.i clamp(argc=3)
pop.v.v self.textxscale

:[84]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentBHeight
push.v self.j
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v GT
bf [86]

:[85]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentBHeight
push.v self.j
conv.v.i
pushaf.e
pop.v.v self.textyscale

:[86]
pushi.e 0
conv.i.v
push.v self.textyscale
push.v self.textxscale
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentB
push.v self.j
conv.v.i
pushaf.e
call.i string(argc=1)
push.v self.texty
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentBYOffset
push.v self.j
conv.v.i
pushaf.e
add.v.v
push.v self.textx
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentBXOffset
push.v self.j
conv.v.i
pushaf.e
add.v.v
call.i draw_text_transformed(argc=6)
popz.v

:[87]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentC
push.v self.j
conv.v.i
pushaf.e
push.s " "@353
cmp.s.v NEQ
bf [95]

:[88]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentCColor
push.v self.j
conv.v.i
pushaf.e
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
pop.v.i self.textxscale
pushi.e 1
pop.v.i self.textyscale
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentCWidth
push.v self.j
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v GT
bf [90]

:[89]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentCWidth
push.v self.j
conv.v.i
pushaf.e
pop.v.v self.textxscale

:[90]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentCWidth
push.v self.j
conv.v.i
pushaf.e
pushi.e 5
cmp.i.v GTE
bf [92]

:[91]
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentCWidth
push.v self.j
conv.v.i
pushaf.e
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionText
push.v self.j
conv.v.i
pushaf.e
call.i string(argc=1)
call.i string_width(argc=1)
div.v.v
call.i clamp(argc=3)
pop.v.v self.textxscale

:[92]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentCHeight
push.v self.j
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v GT
bf [94]

:[93]
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentCHeight
push.v self.j
conv.v.i
pushaf.e
pop.v.v self.textyscale

:[94]
pushi.e 0
conv.i.v
push.v self.textyscale
push.v self.textxscale
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentC
push.v self.j
conv.v.i
pushaf.e
call.i string(argc=1)
push.v self.texty
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentCYOffset
push.v self.j
conv.v.i
pushaf.e
add.v.v
push.v self.textx
pushi.e -1
push.v self.m
conv.v.i
push.v [arraypushaf]self.optionCommentCXOffset
push.v self.j
conv.v.i
pushaf.e
add.v.v
call.i draw_text_transformed(argc=6)
popz.v

:[95]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [50]

:[96]
push.v self.m
push.e 1
add.i.v
pop.v.v self.m
b [1]

:[97]
pushi.e -1
push.v self.menu
conv.v.i
push.v [arraypushaf]self.optionX
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuCoord
conv.v.i
pushaf.e
pop.v.v self.idealHeartX
push.d 0.5
conv.d.v
push.v self.idealHeartX
push.v self.heartX
call.i lerp(argc=3)
pop.v.v self.heartX
push.v self.heartX
push.v self.idealHeartX
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LT
bf [99]

:[98]
push.v self.idealHeartX
pop.v.v self.heartX

:[99]
pushi.e -1
push.v self.menu
conv.v.i
push.v [arraypushaf]self.optionY
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuCoord
conv.v.i
pushaf.e
pop.v.v self.idealHeartY
push.d 0.5
conv.d.v
push.v self.idealHeartY
push.v self.heartY
call.i lerp(argc=3)
pop.v.v self.heartY
push.v self.heartY
push.v self.idealHeartY
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LT
bf [101]

:[100]
push.v self.idealHeartY
pop.v.v self.heartY

:[101]
push.v self.heartY
pushi.e 8
add.i.v
push.v self.heartX
pushi.e 0
conv.i.v
push.v self.menuSprite
call.i draw_sprite(argc=4)
popz.v
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuCoord
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuWidth
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuHeight
pushi.e 1
sub.i.v
mul.v.v
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuScrollCurrent
add.v.v
cmp.v.v GTE
bf [103]

:[102]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[103]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuCoord
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuWidth
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuScrollCurrent
add.v.v
cmp.v.v LT
bf [105]

:[104]
push.i 16711935
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[105]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuCoord
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuWidth
mod.v.v
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuWidth
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [107]

:[106]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[107]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner

:[end]