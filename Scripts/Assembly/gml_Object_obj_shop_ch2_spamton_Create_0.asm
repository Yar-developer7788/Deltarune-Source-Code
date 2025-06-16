.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.idletimer
pushi.e 0
pop.v.i self.idlefacer
pushi.e 0
pop.v.i self.talkfacer
pushi.e 0
pop.v.i self.talkbuffer
pushi.e 0
pop.v.i self.menu
pushi.e 0
pop.v.i self.submenu
pushi.e 6
pop.v.i global.typer
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.talktimer
pushi.e 0
pop.v.i self.cur_jewel
pushi.e 0
pop.v.i self.shopcharx
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [3]

:[2]
push.i 166593
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuc
push.i 172495
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.submenuc
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.onebuffer
pushi.e 0
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.upbuffer
pushi.e 0
pop.v.i self.downbuffer
pushi.e 0
pop.v.i self.hold_up
pushi.e 0
pop.v.i self.hold_down
pushi.e 0
pop.v.i self._up_pressed
pushi.e 0
pop.v.i self._down_pressed
pushi.e 0
pop.v.i self.murder
pushi.e 415
pop.v.i self.moff
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.i 231459
setowner.e
push.s "spamton_neo_after.ogg"@28665
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.98
conv.d.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 0
pop.v.i self.menu
push.i 166593
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.menuc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.menuc
pushi.e 2531
pop.v.i self.item0pic
pushi.e 2531
pop.v.i self.item1pic
pushi.e 2531
pop.v.i self.item2pic
pushi.e 2531
pop.v.i self.item3pic
pushi.e 4
pop.v.i self.itemtotal
pushi.e 4
pop.v.i self.itemcount
push.i 165635
setowner.e
pushi.e 12
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.item
pushi.e 32
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.item
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.item
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.item
push.i 172559
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.soldout
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 3
cmp.i.v GTE
bf [5]

:[4]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.soldout

:[5]
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.soldout
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.soldout
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.soldout
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.soldout
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.soldout
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.soldout
push.i 166595
setowner.e
push.s "keyitem"@230
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.itemtype
push.s "item"@229
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.itemtype
push.s "weapon"@231
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.itemtype
push.s "armor"@232
conv.s.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.itemtype
push.s "item"@229
conv.s.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.itemtype
push.s "item"@229
conv.s.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.itemtype
push.s "item"@229
conv.s.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.itemtype
push.i 166594
setowner.e
push.s "obj_shop_ch2_spamton_slash_Create_0_gml_89_0"@28667
conv.s.v
push.s "KEYITEM#100%#CERTIFIED#WAREZ"@28668
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.shopdesc
push.s "obj_shop_ch2_spamton_slash_Create_0_gml_90_0"@28669
conv.s.v
push.s "ITEM#ITEM#AFFECTS HP#A LOT!#THE SMOOTH#TASTE OF"@28670
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.shopdesc
push.s "obj_shop_ch2_spamton_slash_Create_0_gml_91_0"@28671
conv.s.v
push.s "CUT ANYTHING#2 PIECES!#CRIMINAL!"@28672
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.shopdesc
push.s "obj_shop_ch2_spamton_slash_Create_0_gml_92_0"@28673
conv.s.v
push.s "EXCLUSIVE#OFFICIAL#SPAMTON"@28674
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.shopdesc
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
push.v self.itemtotal
cmp.v.v LT
bf [16]

:[7]
push.i 166602
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itematk
push.i 166606
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdef
push.i 166603
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemmagic
push.i 166600
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.canequip
pushi.e 1
popaf.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.canequip
pushi.e 2
popaf.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.canequip
pushi.e 3
popaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.itemtype
push.s "keyitem"@230
cmp.s.v EQ
bf [9]

:[8]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_keyiteminfo(argc=1)
popz.v
push.i 172503
setowner.e
push.v self.tempkeyitemname
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shopitemname
push.i 172504
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.buyvalue

:[9]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.itemtype
push.s "item"@229
cmp.s.v EQ
bf [11]

:[10]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_iteminfo(argc=1)
popz.v
push.i 172503
setowner.e
push.v self.itemnameb
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shopitemname
push.i 172504
setowner.e
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.buyvalue

:[11]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.itemtype
push.s "armor"@232
cmp.s.v EQ
bf [13]

:[12]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_armorinfo(argc=1)
popz.v
push.i 172503
setowner.e
push.v self.armornametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shopitemname
push.i 172504
setowner.e
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.buyvalue
push.i 166606
setowner.e
push.v self.armordftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdef
push.i 166600
setowner.e
push.v self.armorchar1temp
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.canequip
pushi.e 1
popaf.e
push.v self.armorchar2temp
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.canequip
pushi.e 2
popaf.e
push.v self.armorchar3temp
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.canequip
pushi.e 3
popaf.e

:[13]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@231
cmp.s.v EQ
bf [15]

:[14]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_weaponinfo(argc=1)
popz.v
push.i 166602
setowner.e
push.v self.weaponattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itematk
push.i 166603
setowner.e
push.v self.weaponmagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemmagic
push.i 172503
setowner.e
push.v self.weaponnametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shopitemname
push.i 166600
setowner.e
push.v self.weaponchar1temp
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.canequip
pushi.e 1
popaf.e
push.v self.weaponchar2temp
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.canequip
pushi.e 2
popaf.e
push.v self.weaponchar3temp
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.canequip
pushi.e 3
popaf.e
push.i 172504
setowner.e
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.buyvalue

:[15]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[16]
push.i 172503
setowner.e
push.s "obj_shop_ch2_spamton_slash_Create_0_gml_147_0"@28675
conv.s.v
push.s "S. POTION"@28676
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.shopitemname
push.s "obj_shop_ch2_spamton_slash_Create_0_gml_148_0"@28677
conv.s.v
push.s "''THE BIG ONE''"@28678
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.shopitemname
push.i 166600
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.canequip
pushi.e 1
popaf.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.canequip
pushi.e 2
popaf.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.canequip
pushi.e 3
popaf.e
push.i 166602
setowner.e
push.d 5.324823492384348E+24
conv.d.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.itematk
push.i 172503
setowner.e
push.s "obj_shop_ch2_spamton_slash_Create_0_gml_153_0"@28679
conv.s.v
push.s "BSHOT BOWTIE"@28680
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.shopitemname
push.i 166606
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.itemdef
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.bought
pushi.e 0
pop.v.i self.mainmessage
pushi.e 220
pop.v.i self.minimenuy
pushi.e 23
pop.v.i global.typer
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.selling
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i self.glow
pushi.e 130
pop.v.i self.shx
pushi.e 0
pop.v.i self.soldo
pushi.e 0
pop.v.i global.fe
pushi.e 0
pop.v.i self.an
pushi.e 0
pop.v.i global.fe
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.greybg
pushi.e 0
pop.v.i self.greybgtimer
pushi.e 0
pop.v.i self.glitchtimer
pushi.e 0
pop.v.i self.numbertimer
push.i 66666
pop.v.i self.randomnumber
push.d 0.5
pop.v.d self.randomscale
pushi.e 1
pop.v.i self.spamtonalpha
pushi.e 0
pop.v.i self.spamtonx
pushi.e 0
pop.v.i self.vibratex
pushi.e 0
pop.v.i self.vibratey
pushi.e 0
pop.v.i self.vibrationtimer
pushi.e 0
pop.v.i self.mouthsiner
pushi.e 0
pop.v.i self.glitchtimer2
pushi.e 0
pop.v.i self.keygen
pushi.e 0
pop.v.i self.talked_deal
pushi.e 0
pop.v.i self.talked_knight
pushi.e 0
pop.v.i self.talked_fear
pushi.e 0
pop.v.b self.pause_music
pushi.e -1
pop.v.i self.static_music
pushi.e -5
pushi.e 386
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 386
pop.v.v [array]self.flag

:[18]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 7
cmp.i.v GTE
bf [20]

:[19]
pushi.e 1
pop.v.i self.greybg
pushi.e 121
pop.v.i self.greybgtimer
push.d 0.7
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 4
pop.v.i self.menu
pushi.e 2
pop.v.i self.sell

:[20]
pushi.e 0
pop.v.i self.moneytimer
pushi.e 0
pop.v.i self.runawayscale
pushi.e 0
pop.v.i self.moneytimercount
pushi.e 0
pop.v.i self.nothingcount
push.s "item"@229
pop.v.s self.selltype
pushi.e 12
conv.i.v
pushi.e -5
pushi.e 64
push.v [array]self.flag
call.i max(argc=2)
pop.v.v self.selltotal
pushi.e 0
pop.v.i self.i

:[21]
push.v self.i
push.v self.selltotal
cmp.v.v LT
bf [23]

:[22]
push.i 166616
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemsellvalue
push.i 166591
setowner.e
push.s ""@157
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemsellname
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [21]

:[23]
pushi.e 0
pop.v.i self.phonetimer
pushi.e 0
pop.v.i self.phoneindex
pushi.e 0
pop.v.i self.phoneringing
pushi.e 0
pop.v.i self.ynchoice
pushi.e 1
pop.v.i self.menumax

:[end]