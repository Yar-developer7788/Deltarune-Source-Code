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
push.i 231459
setowner.e
push.s "shop1.ogg"@20930
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.95
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
push.i 165635
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.item
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.item
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.item
pushi.e 5
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
push.i 166595
setowner.e
push.s "item"@229
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.itemtype
push.s "item"@229
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.itemtype
push.s "armor"@232
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.itemtype
push.s "weapon"@231
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
push.s "obj_shop1_slash_Create_0_gml_74_0"@27818
conv.s.v
push.s "ITEM#Star-shape#candy that#heals 40HP"@27819
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.shopdesc
push.s "obj_shop1_slash_Create_0_gml_75_0"@27820
conv.s.v
push.s "ITEM#Mysterious#hamburger#heals 70HP"@27821
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.shopdesc
push.s "obj_shop1_slash_Create_0_gml_76_0"@27822
conv.s.v
push.s "ARMOR#Defensive#charm"@27823
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.shopdesc
push.s "obj_shop1_slash_Create_0_gml_77_0"@27824
conv.s.v
push.s "WEAPON#Black-and#orange"@27825
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.shopdesc
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [9]

:[4]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [6]

:[5]
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 9
cmp.i.v GTE
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.i 165635
setowner.e
pushi.e 16
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.item
push.i 166594
setowner.e
push.s "obj_shop1_slash_Create_0_gml_87_0"@27826
conv.s.v
push.s "ITEM#Music with#each bite#heals 80HP"@27827
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.shopdesc

:[9]
pushi.e 0
pop.v.i self.i

:[10]
push.v self.i
push.v self.itemtotal
cmp.v.v LT
bf [18]

:[11]
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
push.s "item"@229
cmp.s.v EQ
bf [13]

:[12]
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

:[13]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.itemtype
push.s "armor"@232
cmp.s.v EQ
bf [15]

:[14]
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

:[15]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@231
cmp.s.v EQ
bf [17]

:[16]
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

:[17]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [10]

:[18]
push.i 172504
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.buyvalue
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [24]

:[19]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [21]

:[20]
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 9
cmp.i.v GTE
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.buyvalue

:[24]
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
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.an
pushi.e 0
pop.v.i self.talk_counter
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

:[25]
push.v self.i
push.v self.selltotal
cmp.v.v LT
bf [27]

:[26]
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
b [25]

:[27]
pushi.e 0
pop.v.b self.took_crystal

:[end]