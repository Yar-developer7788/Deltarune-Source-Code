.localvar 2 arguments

:[0]
b [35]

> gml_Script_scr_litemname (locals=0, argc=0)
:[1]
push.i 5867364
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.litemname
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [34]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.litem
pop.v.v self.itemid
push.v self.itemid
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.s " "@353
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[5]
push.v self.itemid
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.s "scr_litemname_slash_scr_litemname_gml_6_0"@683
conv.s.v
push.s "Hot Chocolate"@684
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[7]
push.v self.itemid
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.s "scr_litemname_slash_scr_litemname_gml_7_0"@685
conv.s.v
push.s "Pencil"@686
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[9]
push.v self.itemid
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
push.s "scr_litemname_slash_scr_litemname_gml_8_0"@687
conv.s.v
push.s "Bandage"@688
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[11]
push.v self.itemid
pushi.e 4
cmp.i.v EQ
bf [13]

:[12]
push.s "scr_litemname_slash_scr_litemname_gml_9_0"@689
conv.s.v
push.s "Bouquet"@690
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[13]
push.v self.itemid
pushi.e 5
cmp.i.v EQ
bf [15]

:[14]
push.s "scr_litemname_slash_scr_litemname_gml_10_0"@691
conv.s.v
push.s "Ball of Junk"@692
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[15]
push.v self.itemid
pushi.e 6
cmp.i.v EQ
bf [17]

:[16]
push.s "scr_litemname_slash_scr_litemname_gml_11_0"@693
conv.s.v
push.s "Halloween Pencil"@694
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[17]
push.v self.itemid
pushi.e 7
cmp.i.v EQ
bf [19]

:[18]
push.s "scr_litemname_slash_scr_litemname_gml_12_0"@695
conv.s.v
push.s "Lucky Pencil"@696
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[19]
push.v self.itemid
pushi.e 8
cmp.i.v EQ
bf [21]

:[20]
push.s "scr_litemname_slash_scr_litemname_gml_13_0"@697
conv.s.v
push.s "Egg"@698
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[21]
push.v self.itemid
pushi.e 9
cmp.i.v EQ
bf [23]

:[22]
push.s "scr_litemname_slash_scr_litemname_gml_14_0"@699
conv.s.v
push.s "Cards"@700
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[23]
push.v self.itemid
pushi.e 10
cmp.i.v EQ
bf [25]

:[24]
push.s "scr_litemname_slash_scr_litemname_gml_15_0"@701
conv.s.v
push.s "Box of Heart Candy"@702
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[25]
push.v self.itemid
pushi.e 11
cmp.i.v EQ
bf [27]

:[26]
push.s "scr_litemname_slash_scr_litemname_gml_16_0"@703
conv.s.v
push.s "Glass"@704
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[27]
push.v self.itemid
pushi.e 12
cmp.i.v EQ
bf [29]

:[28]
push.s "scr_litemname_slash_scr_litemname_gml_17_0"@705
conv.s.v
push.s "Eraser"@706
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[29]
push.v self.itemid
pushi.e 13
cmp.i.v EQ
bf [31]

:[30]
push.s "scr_litemname_slash_scr_litemname_gml_18_0"@707
conv.s.v
push.s "Mech. Pencil"@708
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[31]
push.v self.itemid
pushi.e 14
cmp.i.v EQ
bf [33]

:[32]
push.s "scr_litemname_slash_scr_litemname_gml_19_0"@709
conv.s.v
push.s "Wristwatch"@710
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[33]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[34]
exit.i

:[35]
push.i [function]gml_Script_scr_litemname
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_litemname
popz.v

:[end]