.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.ubuffer
pushi.e 1
pop.v.i self.dbuffer
pushi.e 1
pop.v.i self.rbuffer
pushi.e 1
pop.v.i self.lbuffer
pushi.e 1
pop.v.i self.buffer1
pushi.e 1
pop.v.i self.buffer2
pushi.e 1
pop.v.i self.buffer3
pushi.e 0
pop.v.i self.scrolltimer
pushi.e 4
pop.v.i self.scrollrepeat
pushi.e 0
pop.v.i self.dheld
pushi.e 0
pop.v.i self.uheld
pushi.e 0
pop.v.i self.rheld
pushi.e 0
pop.v.i self.lheld
pushi.e 0
pop.v.i self.menu
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.heartX
pushi.e 0
pop.v.i self.heartY
pushi.e 0
pop.v.i self.wrap
pushi.e 4
pop.v.i self.menuMax
pushi.e 0
pop.v.i self.edgedebug
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.type
pushglb.v global.interact
pop.v.v self.reminteract
pushi.e 2531
pop.v.i self.menuSprite
pushi.e 0
pop.v.b self.display_buttons
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.menuMax
cmp.v.v LT
bf [end]

:[2]
push.i 169241
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuCoord
push.i 169242
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuHeight
push.i 166869
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuWidth
push.i 169243
setowner.e
push.v self.i
pushi.e 1
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuNext
push.i 169244
setowner.e
push.v self.i
pushi.e 1
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuPrevious
push.i 169245
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuMinimumID
push.i 166862
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuMaximumID
push.i 169246
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuVEdgeBehavior
push.i 169247
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuHEdgeBehavior
push.i 169248
setowner.e
pushi.e 24
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuPageSize
push.i 169249
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuScrollCurrent
push.i 169250
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuScrollAdd
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuHEdgeBehavior
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuPageSize
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuScrollAdd

:[4]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuVEdgeBehavior
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuWidth
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuScrollAdd

:[6]
push.i 169251
setowner.e
pushi.e 8
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuVHeld
push.i 169252
setowner.e
pushi.e 8
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuHHeld
push.i 169253
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuDisplayCondition
push.i 169254
setowner.e
push.i 16777215
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuTextColor
push.i 169255
setowner.e
push.i 8421504
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuTextColorUnselectable
push.i 169256
setowner.e
push.i 65535
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuTextColorHover
push.i 169257
setowner.e
push.i 8421504
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuTextColorInactive
push.i 169258
setowner.e
push.i 65535
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuTextColorSelected
push.i 169259
setowner.e
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuTextFont
push.i 169260
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuTextScaleType
push.i 169261
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuTextXScale
push.i 169262
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuTextYScale
push.i 169263
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuTextWidth
push.i 169264
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuTextHeight
push.i 169265
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuOptionX
push.i 169266
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuOptionY
push.i 169267
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuSpacingOverride
push.i 166865
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuSpacingX
push.i 166868
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuSpacingY
push.i 169268
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuTextOffsetX
push.i 169269
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuTextOffsetY
push.i 166864
setowner.e
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuX
push.i 166867
setowner.e
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuY
push.i 169270
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuBoxDraw
push.i 169271
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuX
pushi.e 20
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuBoxDrawX1
push.i 169272
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuX
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuSpacingX
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuWidth
mul.v.v
add.v.v
pushi.e 20
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuBoxDrawX2
push.i 169273
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuY
pushi.e 10
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuBoxDrawY1
push.i 169274
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuY
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuSpacingY
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuHeight
mul.v.v
add.v.v
pushi.e 10
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuBoxDrawY2
pushi.e 0
pop.v.i self.wrap
pushi.e 0
pop.v.i self.vwrap
pushi.e 0
pop.v.i self.j

:[7]
push.v self.j
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuMaximumID
cmp.v.v LTE
bf [11]

:[8]
push.i 166961
setowner.e
push.v self.j
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionID
push.v self.j
conv.v.i
popaf.e
push.i 166863
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuX
push.v self.wrap
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuSpacingX
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionX
push.v self.j
conv.v.i
popaf.e
push.i 166866
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuY
push.v self.vwrap
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuSpacingY
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionY
push.v self.j
conv.v.i
popaf.e
push.i 166962
setowner.e
push.s "---"@8074
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionText
push.v self.j
conv.v.i
popaf.e
push.i 166964
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionSelectable
push.v self.j
conv.v.i
popaf.e
push.i 169275
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionSelected
push.v self.j
conv.v.i
popaf.e
push.i 166965
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionEffect
push.v self.j
conv.v.i
popaf.e
push.v self.wrap
push.e 1
add.i.v
pop.v.v self.wrap
push.v self.wrap
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuWidth
cmp.v.v GTE
bf [10]

:[9]
pushi.e 0
pop.v.i self.wrap
push.v self.vwrap
push.e 1
add.i.v
pop.v.v self.vwrap

:[10]
push.i 166964
setowner.e
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionSelectable
push.v self.j
conv.v.i
popaf.e
push.i 166962
setowner.e
push.s "D"@9480
conv.s.v
push.s "C"@9479
conv.s.v
push.s "B"@3500
conv.s.v
push.s "A"@1192
conv.s.v
call.i choose(argc=4)
push.s "I"@9483
conv.s.v
push.s "E"@9481
conv.s.v
push.s "A"@1192
conv.s.v
call.i choose(argc=3)
add.v.v
push.s "Q"@9489
conv.s.v
push.s "S"@9491
conv.s.v
push.s "R"@9490
conv.s.v
push.s "T"@9492
conv.s.v
call.i choose(argc=4)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionText
push.v self.j
conv.v.i
popaf.e
push.i 169276
setowner.e
push.s " "@353
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentA
push.v self.j
conv.v.i
popaf.e
push.i 169277
setowner.e
push.s " "@353
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentB
push.v self.j
conv.v.i
popaf.e
push.i 169278
setowner.e
push.s " "@353
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentC
push.v self.j
conv.v.i
popaf.e
push.i 169279
setowner.e
push.i 8421504
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentAColor
push.v self.j
conv.v.i
popaf.e
push.i 169280
setowner.e
push.i 8421504
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentBColor
push.v self.j
conv.v.i
popaf.e
push.i 169281
setowner.e
push.i 8421504
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentCColor
push.v self.j
conv.v.i
popaf.e
push.i 169282
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentAWidth
push.v self.j
conv.v.i
popaf.e
push.i 169283
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentBWidth
push.v self.j
conv.v.i
popaf.e
push.i 169284
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentCWidth
push.v self.j
conv.v.i
popaf.e
push.i 169285
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentAHeight
push.v self.j
conv.v.i
popaf.e
push.i 169286
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentBHeight
push.v self.j
conv.v.i
popaf.e
push.i 169287
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentCHeight
push.v self.j
conv.v.i
popaf.e
push.i 169288
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentAXOffset
push.v self.j
conv.v.i
popaf.e
push.i 169289
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentBXOffset
push.v self.j
conv.v.i
popaf.e
push.i 169290
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentCXOffset
push.v self.j
conv.v.i
popaf.e
push.i 169291
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentAYOffset
push.v self.j
conv.v.i
popaf.e
push.i 169292
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentBYOffset
push.v self.j
conv.v.i
popaf.e
push.i 169293
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionCommentCYOffset
push.v self.j
conv.v.i
popaf.e
push.i 166963
setowner.e
push.s " "@353
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.optionTopComment
push.v self.j
conv.v.i
popaf.e
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [7]

:[11]
push.i 169294
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuHeaderTextAmount
pushi.e 0
pop.v.i self.j

:[12]
push.v self.j
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuHeaderTextAmount
cmp.v.v LT
bf [14]

:[13]
push.i 169295
setowner.e
push.s " "@353
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.menuHeaderText
push.v self.j
conv.v.i
popaf.e
push.i 169296
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuBoxDrawX1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuBoxDrawX2
add.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.menuHeaderX
push.v self.j
conv.v.i
popaf.e
push.i 169297
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuBoxDrawY1
pushi.e 10
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.menuHeaderY
push.v self.j
conv.v.i
popaf.e
push.i 169298
setowner.e
push.i 16777215
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.menuHeaderColor
push.v self.j
conv.v.i
popaf.e
push.i 169299
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.menuHeaderWidth
push.v self.j
conv.v.i
popaf.e
push.i 169300
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.menuHeaderHeight
push.v self.j
conv.v.i
popaf.e
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [12]

:[14]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]