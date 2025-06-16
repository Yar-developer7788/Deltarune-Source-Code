.localvar 2 arguments
.localvar 20877 _seatcheck 8919
.localvar 20932 swapItemId 8925
.localvar 20933 swapItemDesc 8926
.localvar 20934 swapItemName 8927
.localvar 20935 swapPocketId 8928
.localvar 20936 swapPocketDesc 8929
.localvar 20937 swapPocketName 8930

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [88]

:[1]
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
pop.v.i self.customxy
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [10]

:[2]
pushi.e 0
pop.v.i self.fusioncount
pushi.e 1
conv.i.v
call.i gml_Script_scr_fusion_queue(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_fusion_queue(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_fusion_queue(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_fusion_queue(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_fusion_queue(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_fusion_queue(argc=1)
popz.v
pushi.e 2
pop.v.i self.menuMax
push.i 169242
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuHeight
push.i 166869
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuWidth
push.i 169245
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuMinimumID
push.i 166862
setowner.e
push.v self.fusioncount
pushi.e 1
sub.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuMaximumID
push.i 169246
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuVEdgeBehavior
push.i 169247
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuHEdgeBehavior
push.i 169248
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuPageSize
push.i 169250
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.menuPageSize
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuScrollAdd
push.i 166864
setowner.e
push.v self.xx
pushi.e 80
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuX
push.i 166867
setowner.e
push.v self.yy
pushi.e 190
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuY
push.i 169270
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDraw
push.i 169271
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawX1
push.i 169273
setowner.e
pushi.e 130
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawY1
push.i 169272
setowner.e
pushi.e 610
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawX2
push.i 169274
setowner.e
pushi.e 406
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawY2
push.i 166865
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuSpacingX
push.i 166868
setowner.e
pushi.e 113
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuSpacingY
push.i 169294
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuHeaderTextAmount
push.i 169295
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_43_0"@20810
conv.s.v
push.s "Result"@20811
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderText
pushi.e 0
popaf.e
push.i 169296
setowner.e
push.v self.xx
pushi.e 120
add.i.v
pushi.e 20
sub.i.v
pushi.e 14
add.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderX
pushi.e 0
popaf.e
push.i 169297
setowner.e
push.v self.yy
pushi.e 140
add.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderY
pushi.e 0
popaf.e
push.i 169300
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderHeight
pushi.e 0
popaf.e
push.i 169295
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_48_0"@20812
conv.s.v
push.s "Ingredients"@20813
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderText
pushi.e 1
popaf.e
push.i 169296
setowner.e
push.v self.xx
pushi.e 320
add.i.v
pushi.e 20
add.i.v
pushi.e 10
sub.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderX
pushi.e 1
popaf.e
push.i 169297
setowner.e
push.v self.yy
pushi.e 140
add.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderY
pushi.e 1
popaf.e
push.i 169300
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderHeight
pushi.e 1
popaf.e
pushi.e 0
pop.v.i self.wrap
pushi.e 0
pop.v.i self.vwrap
pushi.e 0
pop.v.i self.j

:[3]
push.v self.j
pushi.e -1
pushi.e 0
push.v [array]self.menuMaximumID
cmp.v.v LTE
bf [9]

:[4]
push.i 166961
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.fusionResult
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionID
push.v self.j
conv.v.i
popaf.e
push.i 166962
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.fusionResultName
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionText
push.v self.j
conv.v.i
popaf.e
push.i 166964
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.fusionCanMake
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionSelectable
push.v self.j
conv.v.i
popaf.e
push.i 169276
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.fusionIngredientName1
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentA
push.v self.j
conv.v.i
popaf.e
push.i 169279
setowner.e
push.i 8421504
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAColor
push.v self.j
conv.v.i
popaf.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.fusionHaveIngredient1
conv.v.b
bf [6]

:[5]
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAColor
push.v self.j
conv.v.i
popaf.e

:[6]
push.i 169282
setowner.e
pushi.e 250
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAWidth
push.v self.j
conv.v.i
popaf.e
push.i 169288
setowner.e
pushi.e 220
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAXOffset
push.v self.j
conv.v.i
popaf.e
push.i 169291
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAYOffset
push.v self.j
conv.v.i
popaf.e
push.i 169277
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.fusionIngredientName2
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentB
push.v self.j
conv.v.i
popaf.e
push.i 169280
setowner.e
push.i 8421504
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentBColor
push.v self.j
conv.v.i
popaf.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.fusionHaveIngredient2
conv.v.b
bf [8]

:[7]
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentBColor
push.v self.j
conv.v.i
popaf.e

:[8]
push.i 169283
setowner.e
pushi.e 250
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentBWidth
push.v self.j
conv.v.i
popaf.e
push.i 169289
setowner.e
pushi.e 220
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentBXOffset
push.v self.j
conv.v.i
popaf.e
push.i 169292
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentBYOffset
push.v self.j
conv.v.i
popaf.e
push.i 169278
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.fusionDesc
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentC
push.v self.j
conv.v.i
popaf.e
push.i 169281
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentCColor
push.v self.j
conv.v.i
popaf.e
push.i 169284
setowner.e
pushi.e 160
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentCWidth
push.v self.j
conv.v.i
popaf.e
push.i 169290
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentCXOffset
push.v self.j
conv.v.i
popaf.e
push.i 169293
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentCYOffset
push.v self.j
conv.v.i
popaf.e
push.i 166963
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.fusionResultTopComment
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionTopComment
push.v self.j
conv.v.i
popaf.e
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [3]

:[9]
push.i 169242
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuHeight
push.i 166869
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuWidth
push.i 169245
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuMinimumID
push.i 166862
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuMaximumID
push.i 169246
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuVEdgeBehavior
push.i 169247
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuHEdgeBehavior
push.i 169248
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuPageSize
push.i 166864
setowner.e
push.v self.xx
pushi.e 350
add.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuX
push.i 166867
setowner.e
push.v self.yy
pushi.e 400
add.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuY
push.i 169270
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDraw
push.i 169271
setowner.e
pushi.e -10
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawX1
push.i 169273
setowner.e
pushi.e 375
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawY1
push.i 169272
setowner.e
pushi.e 650
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawX2
push.i 169274
setowner.e
pushi.e 490
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawY2
push.i 166865
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuSpacingX
push.i 166868
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuSpacingY
push.i 169259
setowner.e
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextFont
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextFont
push.i 169294
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuHeaderTextAmount
push.i 169295
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_114_0"@20814
conv.s.v
push.s "Really fuse it?"@20815
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.menuHeaderText
pushi.e 0
popaf.e
push.i 169296
setowner.e
push.v self.xx
pushi.e 60
add.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.menuHeaderX
pushi.e 0
popaf.e
push.i 169297
setowner.e
push.v self.yy
pushi.e 400
add.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.menuHeaderY
pushi.e 0
popaf.e
push.i 166961
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionID
pushi.e 0
popaf.e
push.i 166962
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_119_0"@20816
conv.s.v
push.s "Yes"@5613
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionText
pushi.e 0
popaf.e
push.i 166964
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionSelectable
pushi.e 0
popaf.e
push.i 166965
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionEffect
pushi.e 0
popaf.e
push.i 166961
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionID
pushi.e 1
popaf.e
push.i 166962
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_124_0"@20817
conv.s.v
push.s "No"@2449
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionText
pushi.e 1
popaf.e
push.i 166964
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionSelectable
pushi.e 1
popaf.e
push.i 166965
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionEffect
pushi.e 1
popaf.e

:[10]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [34]

:[11]
push.i 169336
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.dojoEncounter
pushi.e 72
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.dojoEncounter
pushi.e 71
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.dojoEncounter
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.dojoEncounter
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.dojoEncounter
push.i 169337
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_140_0_b"@20819
conv.s.v
push.s "Jigsaw Joe"@7615
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.dojoName
push.s "obj_fusionmenu_slash_Step_0_gml_139_0"@20821
conv.s.v
push.s "Graze Challenge 1"@20822
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.dojoName
push.s "obj_fusionmenu_slash_Step_0_gml_140_0"@20823
conv.s.v
push.s "Clover Rematch"@20824
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.dojoName
push.s "obj_fusionmenu_slash_Step_0_gml_141_0"@20825
conv.s.v
push.s "-------------"@20826
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.dojoName
push.s "obj_fusionmenu_slash_Step_0_gml_142_0"@20827
conv.s.v
push.s "-------------"@20826
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.dojoName
push.i 169338
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_146_0_b"@20828
conv.s.v
push.s "Learn how to spare like a champ."@20829
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.dojoTopComment
push.s "obj_fusionmenu_slash_Step_0_gml_144_0"@20831
conv.s.v
push.s "Get 100% TP without getting hit!#You can do it, boss!"@20832
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.dojoTopComment
push.s "obj_fusionmenu_slash_Step_0_gml_145_0"@20833
conv.s.v
push.s "It's not Clover's birthday anymore!#She won't go easy on you now!"@20834
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.dojoTopComment
push.s "obj_fusionmenu_slash_Step_0_gml_146_0"@20835
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.dojoTopComment
push.s "obj_fusionmenu_slash_Step_0_gml_147_0"@20836
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.dojoTopComment
push.i 169339
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_153_0_b"@20837
conv.s.v
push.s "Joe's Life Savings"@20838
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.dojoPrizeName
push.s "obj_fusionmenu_slash_Step_0_gml_150_0"@20840
conv.s.v
push.s "$100"@20841
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.dojoPrizeName
push.s "obj_fusionmenu_slash_Step_0_gml_151_0"@20842
conv.s.v
push.s "ClubsSandwich"@8215
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.dojoPrizeName
push.s "obj_fusionmenu_slash_Step_0_gml_152_0"@20843
conv.s.v
push.s "---"@8074
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.dojoPrizeName
push.s "obj_fusionmenu_slash_Step_0_gml_153_0"@20844
conv.s.v
push.s "---"@8074
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.dojoPrizeName
push.i 169340
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.dojoPrizeValue
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.dojoPrizeValue
pushi.e 11
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.dojoPrizeValue
pushi.e 250
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.dojoPrizeValue
pushi.e 28
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.dojoPrizeValue
push.i 169341
setowner.e
push.s "money"@6941
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.dojoPrizeType
push.s "money"@6941
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.dojoPrizeType
push.s "item"@229
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.dojoPrizeType
push.s "money"@6941
conv.s.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.dojoPrizeType
push.s "item"@229
conv.s.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.dojoPrizeType
push.i 169342
setowner.e
pushi.e 814
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.dojoFlag
pushi.e 810
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.dojoFlag
pushi.e 811
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.dojoFlag
pushi.e 812
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.dojoFlag
pushi.e 813
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.dojoFlag
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [16]

:[12]
pushi.e -5
pushi.e 642
push.v [array]self.flag
pop.v.v self.tasqueRecruited
push.v self.tasqueRecruited
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.i 169337
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_176_0"@20849
conv.s.v
push.s "Tasque Manager Says"@20850
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.dojoName
push.i 169339
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_178_0"@20851
conv.s.v
push.s "$250"@20852
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.dojoPrizeName
push.i 169338
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_180_0"@20853
conv.s.v
push.s "Winning's as easy as A-B-C!#You've got three chances, boss!"@20854
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.dojoTopComment
push.i 169336
setowner.e
pushi.e 89
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.dojoEncounter

:[14]
push.v self.ch2_allrecruited
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.i 169337
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_177_0"@20855
conv.s.v
push.s "Ch2 All Stars"@20856
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.dojoName
push.i 169339
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_179_0"@20857
conv.s.v
push.s "TensionGem"@8276
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.dojoPrizeName
push.i 169338
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_181_0"@20858
conv.s.v
push.s "Face everyone in a row!#It'll take some stamina..."@20859
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.dojoTopComment
push.i 169336
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.dojoEncounter

:[16]
push.i 169344
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.dojoEncounterAmbush
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.dojoEncounterAmbush
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.dojoEncounterAmbush
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.dojoEncounterAmbush
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.dojoEncounterAmbush
push.s "obj_fusionmenu_slash_Step_0_gml_208_0"@20861
conv.s.v
push.s "Claimed"@20862
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.stringClaimed
pushi.e -5
pushi.e 814
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [18]

:[17]
push.i 169339
setowner.e
push.v self.stringClaimed
pushi.e -1
pushi.e 0
pop.v.v [array]self.dojoPrizeName

:[18]
pushi.e -5
pushi.e 810
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [20]

:[19]
push.v self.stringClaimed
pushi.e -1
pushi.e 1
pop.v.v [array]self.dojoPrizeName

:[20]
pushi.e -5
pushi.e 811
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [22]

:[21]
push.v self.stringClaimed
pushi.e -1
pushi.e 2
pop.v.v [array]self.dojoPrizeName

:[22]
pushi.e -5
pushi.e 812
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [24]

:[23]
push.v self.stringClaimed
pushi.e -1
pushi.e 3
pop.v.v [array]self.dojoPrizeName

:[24]
pushi.e -5
pushi.e 813
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [26]

:[25]
push.v self.stringClaimed
pushi.e -1
pushi.e 4
pop.v.v [array]self.dojoPrizeName

:[26]
pushi.e 2
pop.v.i self.menuMax
push.i 169242
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuHeight
push.i 166869
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuWidth
push.i 169245
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuMinimumID
push.i 166862
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuMaximumID
push.i 169246
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuVEdgeBehavior
push.i 169247
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuHEdgeBehavior
push.i 169248
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuPageSize
push.i 169250
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.menuPageSize
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuScrollAdd
push.i 166864
setowner.e
push.v self.xx
pushi.e 129
add.i.v
pushi.e 15
sub.i.v
pushi.e 15
sub.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuX
push.i 166867
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e 5
sub.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuY
push.i 169270
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDraw
push.i 169271
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawX1
push.i 169273
setowner.e
pushi.e 158
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawY1
push.i 169272
setowner.e
pushi.e 580
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawX2
push.i 169274
setowner.e
pushi.e 434
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawY2
push.i 166865
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuSpacingX
push.i 166868
setowner.e
pushi.e 44
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuSpacingY
push.i 169261
setowner.e
pushi.e 150
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextXScale
push.i 169294
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuHeaderTextAmount
push.i 169295
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_215_0"@20864
conv.s.v
push.s "Challenge"@20865
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderText
pushi.e 0
popaf.e
push.i 169296
setowner.e
push.v self.xx
pushi.e 120
add.i.v
pushi.e 30
add.i.v
pushi.e 21
sub.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderX
pushi.e 0
popaf.e
push.i 169297
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e 5
sub.i.v
pushi.e 10
sub.i.v
pushi.e 10
sub.i.v
pushi.e 10
sub.i.v
pushi.e 2
add.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderY
pushi.e 0
popaf.e
push.i 169300
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderHeight
pushi.e 0
popaf.e
push.i 169298
setowner.e
push.i 8421504
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderColor
pushi.e 0
popaf.e
push.i 169295
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_220_0"@20866
conv.s.v
push.s "Prize"@20867
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderText
pushi.e 1
popaf.e
push.i 169296
setowner.e
push.v self.xx
pushi.e 320
add.i.v
pushi.e 30
add.i.v
pushi.e 21
sub.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderX
pushi.e 1
popaf.e
push.i 169297
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e 5
sub.i.v
pushi.e 10
sub.i.v
pushi.e 10
sub.i.v
pushi.e 10
sub.i.v
pushi.e 2
add.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderY
pushi.e 1
popaf.e
push.i 169300
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderHeight
pushi.e 1
popaf.e
push.i 169298
setowner.e
push.i 8421504
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menuHeaderColor
pushi.e 1
popaf.e
pushi.e 0
pop.v.i self.wrap
pushi.e 0
pop.v.i self.vwrap
pushi.e 0
pop.v.i self.j

:[27]
push.v self.j
pushi.e -1
pushi.e 0
push.v [array]self.menuMaximumID
cmp.v.v LTE
bf [33]

:[28]
push.i 166961
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionID
push.v self.j
conv.v.i
popaf.e
push.i 166962
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.dojoName
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionText
push.v self.j
conv.v.i
popaf.e
push.i 166964
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionSelectable
push.v self.j
conv.v.i
popaf.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.dojoEncounter
pushi.e 0
cmp.i.v GT
bf [30]

:[29]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionSelectable
push.v self.j
conv.v.i
popaf.e

:[30]
push.i 169276
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.dojoPrizeName
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentA
push.v self.j
conv.v.i
popaf.e
push.i 169282
setowner.e
pushi.e 200
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAWidth
push.v self.j
conv.v.i
popaf.e
push.i 169288
setowner.e
pushi.e 200
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAXOffset
push.v self.j
conv.v.i
popaf.e
push.i 169291
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAYOffset
push.v self.j
conv.v.i
popaf.e
push.i 169279
setowner.e
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAColor
push.v self.j
conv.v.i
popaf.e
pushi.e -5
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.dojoFlag
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [32]

:[31]
push.i 65535
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAColor
push.v self.j
conv.v.i
popaf.e
push.i 169276
setowner.e
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentA
push.v self.j
conv.v.i
dup.i 4
savearef.e
pushaf.e
push.s "obj_fusionmenu_slash_Step_0_gml_244_0"@20868
conv.s.v
push.s "!"@6155
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
add.v.v
restorearef.e
dup.i 4 40
popaf.e

:[32]
push.i 166963
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.dojoTopComment
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionTopComment
push.v self.j
conv.v.i
popaf.e
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [27]

:[33]
push.i 169242
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuHeight
push.i 166869
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuWidth
push.i 169245
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuMinimumID
push.i 166862
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuMaximumID
push.i 169246
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuVEdgeBehavior
push.i 169247
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuHEdgeBehavior
push.i 169248
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuPageSize
push.i 166864
setowner.e
push.v self.xx
pushi.e 350
add.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuX
push.i 166867
setowner.e
push.v self.yy
pushi.e 400
add.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuY
push.i 169270
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDraw
push.i 169271
setowner.e
pushi.e -10
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawX1
push.i 169273
setowner.e
pushi.e 375
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawY1
push.i 169272
setowner.e
pushi.e 650
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawX2
push.i 169274
setowner.e
pushi.e 490
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawY2
push.i 166865
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuSpacingX
push.i 166868
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuSpacingY
push.i 169294
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuHeaderTextAmount
push.i 169295
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_275_0"@20869
conv.s.v
push.s "Challenge?"@20870
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.menuHeaderText
pushi.e 0
popaf.e
push.i 169296
setowner.e
push.v self.xx
pushi.e 60
add.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.menuHeaderX
pushi.e 0
popaf.e
push.i 169297
setowner.e
push.v self.yy
pushi.e 400
add.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.menuHeaderY
pushi.e 0
popaf.e
push.i 166961
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionID
pushi.e 0
popaf.e
push.i 166962
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_280_0"@20871
conv.s.v
push.s "Yes"@5613
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionText
pushi.e 0
popaf.e
push.i 166964
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionSelectable
pushi.e 0
popaf.e
push.i 166965
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionEffect
pushi.e 0
popaf.e
push.i 166961
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionID
pushi.e 1
popaf.e
push.i 166962
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_285_0"@20872
conv.s.v
push.s "No"@2449
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionText
pushi.e 1
popaf.e
push.i 166964
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionSelectable
pushi.e 1
popaf.e
push.i 166965
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionEffect
pushi.e 1
popaf.e

:[34]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [69]

:[35]
push.v self.subtype
pushi.e 2
cmp.i.v EQ
bt [37]

:[36]
push.v self.subtype
pushi.e 1
cmp.i.v EQ
b [38]

:[37]
push.e 1

:[38]
bf [44]

:[39]
push.v self.subtype
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
push.s "total"@19936
conv.s.v
call.i gml_Script_scr_recruit_info_all(argc=1)
popz.v

:[41]
push.v self.subtype
pushi.e 2
cmp.i.v EQ
bf [43]

:[42]
pushi.e 2
conv.i.v
push.s "either"@10431
conv.s.v
call.i gml_Script_scr_recruit_info_all(argc=2)
popz.v

:[43]
pushi.e 1
pop.v.i self.alternateMenu
b [45]

:[44]
pushi.e 0
pop.v.i self.alternateMenu
push.s "total"@19936
conv.s.v
call.i gml_Script_scr_recruit_info_all(argc=1)
popz.v

:[45]
pushi.e 3
pop.v.i self.menuMax
push.i 166869
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuWidth
push.i 169245
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuMinimumID
push.i 166862
setowner.e
push.v self.allrecruits
pushi.e 1
sub.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuMaximumID
push.i 169246
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuVEdgeBehavior
push.i 169247
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuHEdgeBehavior
push.i 169242
setowner.e
pushi.e 9
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.menuMaximumID
pushi.e 1
add.i.v
call.i min(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuHeight
push.i 169248
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.menuHeight
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuPageSize
pushi.e -1
pushi.e 0
push.v [array]self.menuMaximumID
pushi.e -1
pushi.e 0
push.v [array]self.menuPageSize
cmp.v.v LT
bf [47]

:[46]
push.i 169247
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuHEdgeBehavior

:[47]
push.i 169250
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.menuPageSize
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuScrollAdd
push.i 169243
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuNext
push.i 166864
setowner.e
push.v self.xx
pushi.e 50
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuX
push.i 166867
setowner.e
push.v self.yy
pushi.e 90
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuY
push.i 169270
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDraw
push.i 169271
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawX1
push.i 169273
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawY1
push.i 169272
setowner.e
pushi.e 300
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawX2
push.v self.alternateMenu
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
pushi.e 620
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawX2

:[49]
push.i 169274
setowner.e
pushi.e 440
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawY2
push.i 166865
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuSpacingX
push.i 166868
setowner.e
pushi.e 35
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuSpacingY
push.i 169261
setowner.e
pushi.e 180
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextXScale
push.i 169262
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextYScale
push.i 169269
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextOffsetY
push.i 169253
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuDisplayCondition
push.i 166869
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuWidth
push.i 169242
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuHeight
push.i 169270
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDraw
push.i 169271
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawX1
push.i 169273
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawY1
push.i 169272
setowner.e
pushi.e 610
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawX2
push.i 169274
setowner.e
pushi.e 450
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawY2
push.i 166864
setowner.e
push.v self.xx
pushi.e 50
add.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuX
push.i 166867
setowner.e
push.v self.yy
pushi.e 400
add.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuY
push.i 166868
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuSpacingY
push.i 166862
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.menuMaximumID
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuMaximumID
push.i 169246
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuVEdgeBehavior
push.i 169247
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuHEdgeBehavior
push.i 169248
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuPageSize
push.i 169250
setowner.e
pushi.e -1
pushi.e 1
push.v [array]self.menuPageSize
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuScrollAdd
push.i 169253
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuDisplayCondition
pushi.e 0
pop.v.i self.j

:[50]
push.v self.j
pushi.e -1
pushi.e 1
push.v [array]self.menuMaximumID
cmp.v.v LTE
bf [56]

:[51]
push.i 166962
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.recruitName
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionText
push.v self.j
conv.v.i
popaf.e
push.s " "@353
conv.s.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionText
push.v self.j
conv.v.i
popaf.e
push.i 166964
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionSelectable
push.v self.j
conv.v.i
popaf.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.recruitPlaceable
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionSelectable
push.v self.j
conv.v.i
popaf.e
push.v self.alternateMenu
conv.v.b
bf [55]

:[52]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionSelectable
push.v self.j
conv.v.i
popaf.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionSelectable
push.v self.j
conv.v.i
popaf.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.recruitFullyRecruited
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.i 169276
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_377_0"@20874
conv.s.v
push.s "Recruited!"@20875
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentA
push.v self.j
conv.v.i
popaf.e
push.i 169279
setowner.e
push.i 65280
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAColor
push.v self.j
conv.v.i
popaf.e
push.i 169288
setowner.e
pushi.e 195
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAXOffset
push.v self.j
conv.v.i
popaf.e
push.i 169291
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAYOffset
push.v self.j
conv.v.i
popaf.e
push.i 169282
setowner.e
push.v self.squished
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAWidth
push.v self.j
conv.v.i
popaf.e
b [55]

:[54]
push.i 169279
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAColor
push.v self.j
conv.v.i
popaf.e
push.i 169288
setowner.e
pushi.e 200
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAXOffset
push.v self.j
conv.v.i
popaf.e
push.i 169291
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAYOffset
push.v self.j
conv.v.i
popaf.e
push.i 169282
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentAWidth
push.v self.j
conv.v.i
popaf.e
push.i 169276
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.recruitCountCurrent
call.i string(argc=1)
push.s " / "@20876
add.s.v
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.recruitCountMax
call.i string(argc=1)
add.v.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionCommentA
push.v self.j
conv.v.i
popaf.e

:[55]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [50]

:[56]
push.i 166869
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuWidth
push.i 169242
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuHeight
push.i 169270
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuBoxDraw
push.i 166864
setowner.e
push.v self.xx
pushi.e 50
add.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuX
push.i 166867
setowner.e
push.v self.yy
pushi.e 300
add.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuY
push.i 166868
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuSpacingY
push.i 166862
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuMaximumID
push.i 169246
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuVEdgeBehavior
push.i 169247
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuHEdgeBehavior
push.i 169253
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuDisplayCondition
pushi.e 1
pop.v.i self.customxy
call.i gml_Script_scr_custommenu_optionxy(argc=0)
popz.v
push.i 169267
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuSpacingOverride
pushi.e 2
pop.v.i self._n
pushi.e 0
pop.v.i local._seatcheck
push.v self.alternateMenu
pushi.e 0
cmp.i.v EQ
bf [69]

:[57]
pushi.e 0
pop.v.i self.j

:[58]
push.v self.j
pushi.e 4
cmp.i.v LT
bf [69]

:[59]
push.v self.j
pop.v.v local._seatcheck
pushi.e 282
pushenv [62]

:[60]
pushloc.v local._seatcheck
push.v self.seat
cmp.v.v EQ
bf [62]

:[61]
push.i 234884
setowner.e
push.v self.id
pushi.e 281
pushloc.v local._seatcheck
conv.v.i
pop.v.v [array]self.cafenpc

:[62]
popenv [60]
push.i 166863
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.cafenpc
pushi.e -9
push.v [stacktop]self.x
pushi.e 40
add.i.v
pushi.e -1
push.v self._n
conv.v.i
push.v [arraypopaf]self.optionX
push.v self.j
conv.v.i
popaf.e
push.i 166866
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.cafenpc
pushi.e -9
push.v [stacktop]self.y
pushi.e 35
add.i.v
pushi.e -1
push.v self._n
conv.v.i
push.v [arraypopaf]self.optionY
push.v self.j
conv.v.i
popaf.e
push.i 166962
setowner.e
push.s " "@353
conv.s.v
pushi.e -1
push.v self._n
conv.v.i
push.v [arraypopaf]self.optionText
push.v self.j
conv.v.i
popaf.e
pushglb.v global.is_console
conv.v.b
bt [64]

:[63]
push.v 1112.gamepad_active
conv.v.b
b [65]

:[64]
push.e 1

:[65]
bf [67]

:[66]
push.i 166963
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_462_0"@20879
conv.s.v
push.s "      Place                 Return"@20880
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
push.v self._n
conv.v.i
push.v [arraypopaf]self.optionTopComment
push.v self.j
conv.v.i
popaf.e
pushi.e 1
pop.v.b self.display_buttons
b [68]

:[67]
push.i 166963
setowner.e
push.s "obj_fusionmenu_slash_Step_0_gml_434_0"@20881
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "~1: Place   ~2: Return"@20882
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
pushi.e -1
push.v self._n
conv.v.i
push.v [arraypopaf]self.optionTopComment
push.v self.j
conv.v.i
popaf.e

:[68]
push.i 166964
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self._n
conv.v.i
push.v [arraypopaf]self.optionSelectable
push.v self.j
conv.v.i
popaf.e
push.i 166965
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self._n
conv.v.i
push.v [arraypopaf]self.optionEffect
push.v self.j
conv.v.i
popaf.e
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [58]

:[69]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [81]

:[70]
push.i -40000
pop.v.i self.depth
call.i gml_Script_scr_custommenu_item_info_refresh(argc=0)
popz.v
pushi.e 0
pop.v.i self.wrap
pushi.e 0
pop.v.i self.vwrap
pushi.e 2
pop.v.i self.menuMax
pushi.e 2537
pop.v.i self.menuSprite
push.i 169242
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuHeight
push.i 166869
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuWidth
push.i 169245
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuMinimumID
push.i 166862
setowner.e
pushi.e 11
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuMaximumID
push.i 169246
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuVEdgeBehavior
push.i 169247
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuHEdgeBehavior
push.i 169248
setowner.e
pushi.e 12
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuPageSize
push.i 169250
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.menuPageSize
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuScrollAdd
push.i 166864
setowner.e
push.v self.xx
pushi.e 140
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuX
push.v self.jp
conv.v.b
bf [72]

:[71]
push.v self.xx
pushi.e 160
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuX

:[72]
push.i 166867
setowner.e
push.v self.yy
pushi.e 140
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuY
push.i 169270
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDraw
push.i 169271
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawX1
push.i 169273
setowner.e
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawY1
push.i 169272
setowner.e
pushi.e 600
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawX2
push.i 169274
setowner.e
pushi.e 280
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawY2
push.i 166865
setowner.e
pushi.e 220
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuSpacingX
push.v self.jp
conv.v.b
bf [74]

:[73]
pushi.e 180
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuSpacingX

:[74]
push.i 166868
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuSpacingY
push.i 169268
setowner.e
pushi.e 14
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextOffsetX
push.i 169269
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextOffsetY
push.i 169268
setowner.e
pushi.e 14
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextOffsetX
push.i 169269
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextOffsetY
push.i 169260
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextScaleType
push.i 169261
setowner.e
push.d 0.5
conv.d.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextXScale
push.i 169260
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextScaleType
push.i 169262
setowner.e
push.d 0.5
conv.d.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextYScale
push.i 169253
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuDisplayCondition
push.i 169242
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuHeight
push.i 166869
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuWidth
push.i 169245
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuMinimumID
push.i 166862
setowner.e
pushi.e -5
pushi.e 64
push.v [array]self.flag
pushi.e 1
sub.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuMaximumID
push.i 169246
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuVEdgeBehavior
push.i 169247
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuHEdgeBehavior
push.i 169248
setowner.e
pushi.e 12
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuPageSize
push.i 169250
setowner.e
pushi.e -1
pushi.e 1
push.v [array]self.menuPageSize
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuScrollAdd
push.i 166864
setowner.e
push.v self.xx
pushi.e 140
add.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuX
push.v self.jp
conv.v.b
bf [76]

:[75]
push.v self.xx
pushi.e 110
add.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuX

:[76]
push.i 166867
setowner.e
push.v self.yy
pushi.e 290
add.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuY
push.i 169270
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDraw
push.i 169271
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawX1
push.i 169273
setowner.e
pushi.e 275
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawY1
push.i 169272
setowner.e
pushi.e 600
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawX2
push.i 169274
setowner.e
pushi.e 430
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuBoxDrawY2
push.i 166865
setowner.e
pushi.e 220
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuSpacingX
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [78]

:[77]
push.v self.xx
pushi.e 240
add.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuSpacingX

:[78]
push.i 166868
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuSpacingY
push.v self.jp
conv.v.b
bf [80]

:[79]
push.i 169260
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextScaleType
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextScaleType
push.i 169261
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextXScale
push.i 169262
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextYScale
push.i 169261
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextXScale
push.i 169262
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextYScale
push.i 169259
setowner.e
push.s "dotumche"@6178
conv.s.v
call.i gml_Script_scr_84_get_font(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextFont
push.s "dotumche"@6178
conv.s.v
call.i gml_Script_scr_84_get_font(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextFont
push.i 169261
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextXScale
push.i 169262
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextYScale
push.i 169261
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextXScale
push.i 169262
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextYScale
push.i 169259
setowner.e
pushi.e 11
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextFont
pushi.e 11
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextFont
push.i 169260
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextScaleType
push.i 166864
setowner.e
push.v self.xx
pushi.e 160
add.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuX
push.i 166865
setowner.e
pushi.e 180
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuSpacingX
b [81]

:[80]
push.i 169260
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextScaleType
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextScaleType
push.i 169261
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextXScale
push.i 169262
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextYScale
push.i 169261
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextXScale
push.i 169262
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextYScale
push.i 169259
setowner.e
push.s "dotumche"@6178
conv.s.v
call.i gml_Script_scr_84_get_font(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextFont
push.s "dotumche"@6178
conv.s.v
call.i gml_Script_scr_84_get_font(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuTextFont

:[81]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [85]

:[82]
pushi.e 1
pop.v.i self.menuMax
push.i 169242
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuHeight
push.i 166869
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuWidth
push.i 169245
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuMinimumID
push.i 166862
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuMaximumID
push.i 169246
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuVEdgeBehavior
push.i 169247
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuHEdgeBehavior
push.i 169248
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuPageSize
push.i 169250
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuScrollAdd
pushi.e 0
pop.v.i self.songCount
push.s " "@353
pop.v.s self.songPlaying
push.s " "@353
pop.v.s self.songPlayingName
push.s " "@353
pop.v.s self.chosenSongName
pushi.e 0
pop.v.i self.tickerTimer
push.s "obj_fusionmenu_slash_Step_0_gml_568_0"@20886
conv.s.v
push.s "My Castle"@20887
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "castletown.ogg"@19752
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_569_0"@20888
conv.s.v
push.s "A CYBER'S WORLD?"@20889
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "cyber.ogg"@19754
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_570_0"@20890
conv.s.v
push.s "Mini Studio"@20891
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "cyberhouse.ogg"@19762
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_571_0"@20892
conv.s.v
push.s "Sound Studio"@20893
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "cyber_shop.ogg"@20894
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_572_0"@20895
conv.s.v
push.s "Holiday Studio"@20896
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "cybershop_christmas.ogg"@20897
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_573_0"@20898
conv.s.v
push.s "Welcome To The City"@20899
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "cybercity.ogg"@19764
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_574_0"@20900
conv.s.v
push.s "Acid Tunnel of Love"@20901
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "acid_tunnel.ogg"@20902
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_575_0"@20903
conv.s.v
push.s "Rude Buster"@7848
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "battle.ogg"@10337
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_576_0"@20904
conv.s.v
push.s "Smart Race"@20905
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "berdly_chase.ogg"@20906
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_577_0"@20907
conv.s.v
push.s "Cool Beat"@20908
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "coolbeat.ogg"@20909
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_578_0"@20910
conv.s.v
push.s "Hip Shop"@20911
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "hip_shop.ogg"@20912
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_579_0"@20913
conv.s.v
push.s "I'm The Bad Guy!"@20914
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "lancer.ogg"@20915
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_580_0"@20916
conv.s.v
push.s "Pandora Palace"@20917
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "mansion.ogg"@19756
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_581_0"@20918
conv.s.v
push.s "Queen"@7540
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "queen.ogg"@20919
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_582_0"@20920
conv.s.v
push.s "Cool Mixtape"@20921
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "queen_car_radio.ogg"@20922
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_583_0"@20923
conv.s.v
push.s "Rouxls Kaard"@8145
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "ruruskaado.ogg"@20924
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_584_0"@20925
conv.s.v
push.s "It's Pronounced \"Rules\""@20926
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "rouxls_battle.ogg"@20927
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.s "obj_fusionmenu_slash_Step_0_gml_585_0"@20928
conv.s.v
push.s "Lantern"@20929
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "shop1.ogg"@20930
conv.s.v
call.i gml_Script_scr_musicmenu_songadd(argc=2)
popz.v
push.i 166862
setowner.e
push.v self.songCount
pushi.e 1
sub.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuMaximumID
push.i 166864
setowner.e
push.v self.xx
pushi.e 40
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuX
push.i 166867
setowner.e
push.v self.yy
pushi.e 260
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuY
push.i 169270
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDraw
push.i 169271
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawX1
push.i 169273
setowner.e
pushi.e 250
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawY1
push.i 169272
setowner.e
pushi.e 630
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawX2
push.i 169274
setowner.e
pushi.e 470
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuBoxDrawY2
push.i 166865
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuSpacingX
push.i 166868
setowner.e
pushi.e 34
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuSpacingY
push.i 169261
setowner.e
pushi.e 320
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuTextXScale
push.i 169294
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuHeaderTextAmount
pushi.e 0
pop.v.i self.wrap
pushi.e 0
pop.v.i self.vwrap
pushi.e 0
pop.v.i self.j

:[83]
push.v self.j
push.v self.songCount
cmp.v.v LT
bf [85]

:[84]
push.i 166961
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.songOgg
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionID
push.v self.j
conv.v.i
popaf.e
push.i 166962
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.songName
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionText
push.v self.j
conv.v.i
popaf.e
push.i 166964
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionSelectable
push.v self.j
conv.v.i
popaf.e
push.i 166965
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionEffect
push.v self.j
conv.v.i
popaf.e
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [83]

:[85]
push.v self.customxy
pushi.e 0
cmp.i.v EQ
bf [87]

:[86]
call.i gml_Script_scr_custommenu_optionxy(argc=0)
popz.v

:[87]
pushi.e -1
pushi.e 0
push.v [array]self.menuX
pop.v.v self.heartX
pushi.e -1
pushi.e 0
push.v [array]self.menuY
pop.v.v self.heartY
pushi.e 1
pop.v.i self.init

:[88]
call.i event_inherited(argc=0)
popz.v
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [111]

:[89]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bf [92]

:[90]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuCoord
pushi.e 0
cmp.i.v EQ
bf [92]

:[91]
push.v self.confirm_custom
pushi.e 1
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [111]

:[94]
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.fusionIngredientType1
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.fusionIngredient1
call.i gml_Script_scr_itemremove_anytype(argc=2)
popz.v
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.fusionIngredientType2
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.fusionIngredient2
call.i gml_Script_scr_itemremove_anytype(argc=2)
popz.v
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.fusionResultType
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.fusionResult
call.i gml_Script_scr_itemget_anytype(argc=2)
popz.v
pushi.e 261
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 86
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [110]

:[95]
pushi.e 70
pop.v.i 86.con
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.fusionResultName
pop.v.v 86.fusionResultName
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.fusionResultType
pop.v.v 86.fusionResultType
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.fusionIngredientType1
push.s "armor"@232
cmp.s.v EQ
bf [97]

:[96]
pushi.e 0
pop.v.i 86.item1
b [100]

:[97]
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.fusionIngredientType1
push.s "weapon"@231
cmp.s.v EQ
bf [99]

:[98]
pushi.e 1
pop.v.i 86.item1
b [100]

:[99]
pushi.e 2
pop.v.i 86.item1

:[100]
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.fusionIngredientType2
push.s "armor"@232
cmp.s.v EQ
bf [102]

:[101]
pushi.e 0
pop.v.i 86.item2
b [105]

:[102]
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.fusionIngredientType2
push.s "weapon"@231
cmp.s.v EQ
bf [104]

:[103]
pushi.e 1
pop.v.i 86.item2
b [105]

:[104]
pushi.e 2
pop.v.i 86.item2

:[105]
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.fusionResultType
push.s "armor"@232
cmp.s.v EQ
bf [107]

:[106]
pushi.e 0
pop.v.i 86.item3
b [110]

:[107]
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.fusionResultType
push.s "weapon"@231
cmp.s.v EQ
bf [109]

:[108]
pushi.e 1
pop.v.i 86.item3
b [110]

:[109]
pushi.e 2
pop.v.i 86.item3

:[110]
call.i instance_destroy(argc=0)
popz.v

:[111]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [122]

:[112]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bf [115]

:[113]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuCoord
pushi.e 0
cmp.i.v EQ
bf [115]

:[114]
push.v self.confirm_custom
pushi.e 1
cmp.i.v EQ
b [116]

:[115]
push.e 0

:[116]
bf [122]

:[117]
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.dojoEncounterAmbush
pop.v.v global.ambush
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.dojoEncounter
pop.v.v global.encounterno
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 35
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 37
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 38
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 61
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushglb.v global.encounterno
call.i gml_Script_scr_battle(argc=5)
popz.v
pushi.e 283
pushenv [119]

:[118]
pushi.e 10
pop.v.i self.con

:[119]
popenv [118]
pushi.e 283
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [121]

:[120]
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.dojoPrizeValue
pop.v.v 283.dojoPrizeValue
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.dojoPrizeType
pop.v.v 283.dojoPrizeType
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.dojoFlag
pop.v.v 283.dojoFlag
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.dojoPrizeName
pop.v.v 283.dojoPrizeName

:[121]
call.i instance_destroy(argc=0)
popz.v

:[122]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [150]

:[123]
push.v self.confirm_moved
pushi.e 1
cmp.i.v EQ
bf [125]

:[124]
push.v self.menu
pushi.e 1
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [128]

:[127]
push.i 169241
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuCoord
push.i 169249
setowner.e
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuScrollCurrent

:[128]
push.v self.cancel_press
pushi.e 1
cmp.i.v EQ
bf [131]

:[129]
push.v self.menu
pushi.e 0
cmp.i.v EQ
bf [131]

:[130]
push.v self.id
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [132]

:[131]
push.e 0

:[132]
bf [134]

:[133]
push.i 169241
setowner.e
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuCoord
push.i 169249
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
pushi.e -1
pushi.e 0
push.v [array]self.menuPageSize
div.v.v
call.i floor(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.menuPageSize
mul.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuScrollCurrent

:[134]
push.v self.cancel_press
pushi.e 1
cmp.i.v EQ
bf [136]

:[135]
push.v self.menu
pushi.e 1
cmp.i.v EQ
b [137]

:[136]
push.e 0

:[137]
bf [141]

:[138]
pushi.e 282
pushenv [140]

:[139]
pushi.e 0
pop.v.i self.mode
pushi.e 0
pop.v.i self.fsiner
push.v self.remsprite
pop.v.v self._sprite

:[140]
popenv [139]

:[141]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [150]

:[142]
pushi.e 282
pushenv [144]

:[143]
pushi.e 0
pop.v.i self.mode
push.v self.remsprite
pop.v.v self._sprite

:[144]
popenv [143]
push.i 232736
setowner.e
pushi.e 1
pushi.e -1
pushi.e -1
pushi.e 2
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.cafenpc
pushi.e -9
pop.v.i [stacktop]self.mode
push.i 232406
setowner.e
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSprite
pushi.e -1
pushi.e -1
pushi.e 2
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.cafenpc
pushi.e -9
pop.v.v [stacktop]self._sprite
push.v self.confirm_custom
pushi.e 1
cmp.i.v EQ
bf [150]

:[145]
push.i 231204
setowner.e
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitID
pushi.e -5
pushi.e 800
pushi.e -1
pushi.e 2
push.v [array]self.menuCoord
add.v.i
conv.v.i
pop.v.v [array]self.flag
pushi.e 282
pushenv [147]

:[146]
pushi.e 6
conv.i.v
call.i event_user(argc=1)
popz.v

:[147]
popenv [146]
pushi.e 261
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 282
pushenv [149]

:[148]
pushi.e 0
pop.v.i self.mode
pushi.e 0
pop.v.i self.fsiner
push.v self.remsprite
pop.v.v self._sprite

:[149]
popenv [148]
pushi.e 1
pop.v.i self.menu

:[150]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [169]

:[151]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bf [169]

:[152]
push.v self.confirm_custom
pushi.e 1
cmp.i.v EQ
bf [169]

:[153]
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.menuitemid
pop.v.v local.swapItemId
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.menuitemdesc
pop.v.v local.swapItemDesc
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.menuitemname
pop.v.v local.swapItemName
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.pocketitemid
pop.v.v local.swapPocketId
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.pocketitemdesc
pop.v.v local.swapPocketDesc
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.pocketitemname
pop.v.v local.swapPocketName
pushloc.v local.swapPocketId
pushi.e 0
cmp.i.v GT
bf [155]

:[154]
pushloc.v local.swapItemId
pushi.e 0
cmp.i.v GT
b [156]

:[155]
push.e 0

:[156]
bf [158]

:[157]
push.i 231171
setowner.e
pushloc.v local.swapPocketId
pushi.e -5
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
pop.v.v [array]self.item
push.i 231175
setowner.e
pushloc.v local.swapItemId
pushi.e -5
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
pop.v.v [array]self.pocketitem
push.i 166961
setowner.e
pushloc.v local.swapPocketId
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionID
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
popaf.e
push.i 166962
setowner.e
pushloc.v local.swapPocketName
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionText
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
popaf.e
push.i 166963
setowner.e
pushloc.v local.swapPocketDesc
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionTopComment
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
popaf.e
push.i 166961
setowner.e
pushloc.v local.swapItemId
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionID
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
popaf.e
push.i 166962
setowner.e
pushloc.v local.swapItemName
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionText
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
popaf.e
push.i 166963
setowner.e
pushloc.v local.swapItemDesc
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionTopComment
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
popaf.e
push.i 166955
setowner.e
pushloc.v local.swapPocketId
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
pop.v.v [array]self.menuitemid
push.i 166956
setowner.e
pushloc.v local.swapPocketDesc
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
pop.v.v [array]self.menuitemdesc
push.i 166957
setowner.e
pushloc.v local.swapPocketName
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
pop.v.v [array]self.menuitemname
push.i 166958
setowner.e
pushloc.v local.swapItemId
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
pop.v.v [array]self.pocketitemid
push.i 166960
setowner.e
pushloc.v local.swapItemDesc
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
pop.v.v [array]self.pocketitemdesc
push.i 166959
setowner.e
pushloc.v local.swapItemName
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
pop.v.v [array]self.pocketitemname
b [168]

:[158]
pushloc.v local.swapPocketId
pushi.e 0
cmp.i.v LTE
bf [160]

:[159]
pushloc.v local.swapItemId
pushi.e 0
cmp.i.v GT
b [161]

:[160]
push.e 0

:[161]
bf [163]

:[162]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
call.i gml_Script_scr_itemshift(argc=2)
popz.v
push.i 231175
setowner.e
pushloc.v local.swapItemId
pushi.e -5
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
pop.v.v [array]self.pocketitem
call.i gml_Script_scr_custommenu_item_info_refresh(argc=0)
popz.v
b [168]

:[163]
pushloc.v local.swapPocketId
pushi.e 0
cmp.i.v GT
bf [165]

:[164]
pushloc.v local.swapItemId
pushi.e 0
cmp.i.v LTE
b [166]

:[165]
push.e 0

:[166]
bf [168]

:[167]
pushloc.v local.swapPocketId
call.i gml_Script_scr_itemget(argc=1)
popz.v
push.i 231175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
pop.v.v [array]self.pocketitem
call.i gml_Script_scr_custommenu_item_info_refresh(argc=0)
popz.v

:[168]
pushi.e 261
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.i 169275
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionSelected
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
popaf.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionSelected
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
popaf.e
pushi.e 0
pop.v.i self.menu

:[169]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [end]

:[170]
push.v self.confirm_custom
pushi.e 1
cmp.i.v EQ
bf [173]

:[171]
pushi.e 0
pop.v.i self.tickerTimer
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.songOgg
call.i gml_Script_mus_initloop(argc=1)
popz.v
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.songOgg
pop.v.v self.songPlaying
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.songName
pop.v.v self.songPlayingName
push.v self.songPlayingName
pop.v.v self.chosenSongName
push.v self.subtype
pushi.e 1
cmp.i.v EQ
bf [173]

:[172]
push.i 231375
setowner.e
push.v self.songPlaying
pushi.e -5
pushi.e 11
pop.v.v [array]self.tempflag

:[173]
pushi.e 0
pop.v.i self.j

:[174]
push.v self.j
push.v self.songCount
cmp.v.v LT
bf [end]

:[175]
push.v self.songPlaying
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.songOgg
cmp.v.v EQ
bf [177]

:[176]
push.i 169275
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionSelected
push.v self.j
conv.v.i
popaf.e
b [178]

:[177]
push.i 169275
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionSelected
push.v self.j
conv.v.i
popaf.e

:[178]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [174]

:[end]