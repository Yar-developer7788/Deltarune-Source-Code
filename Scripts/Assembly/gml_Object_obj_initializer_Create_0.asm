.localvar 2 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
push.s "0123456789+-%"@21696
conv.s.v
pushi.e 2528
conv.i.v
call.i font_add_sprite_ext(argc=4)
pop.v.v global.damagefont
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
push.s "0123456789+-%"@21696
conv.s.v
pushi.e 2529
conv.i.v
call.i font_add_sprite_ext(argc=4)
pop.v.v global.damagefontgold
pushi.e 0
pop.v.i global.fighting
push.i 231118
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.char
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.char
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.char
pushi.e 0
pop.v.i global.gold
pushi.e 0
pop.v.i global.xp
pushi.e 0
pop.v.i global.inv
pushi.e 1
pop.v.i global.invc
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
push.i 231859
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charauto
push.i 231578
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charmove
push.i 231543
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charcantarget
push.i 231579
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chardead
push.i 232540
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.invincible
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.i 231859
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charauto
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charauto
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.charauto
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.charauto
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [9]

:[5]
push.i 231131
setowner.e
pushi.e 200
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hp
push.i 231132
setowner.e
pushi.e 250
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.maxhp
push.i 231133
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.at
push.i 231134
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.df
push.i 231135
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.mag
pushi.e 0
pop.v.i self.j

:[6]
push.v self.j
pushi.e 12
cmp.i.v LT
bf [8]

:[7]
push.i 231164
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.spell
push.v self.j
conv.v.i
popaf.e
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [6]

:[8]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[9]
push.i 231979
setowner.e
push.s "obj_initializer_slash_Create_0_gml_47_0"@21700
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.charname
push.s "obj_initializer_slash_Create_0_gml_48_0"@21701
conv.s.v
push.s "Kris"@1493
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.charname
push.s "obj_initializer_slash_Create_0_gml_49_0"@21702
conv.s.v
push.s "Susie"@4904
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.charname
push.s "obj_initializer_slash_Create_0_gml_50_0"@21703
conv.s.v
push.s "Ralsei"@4507
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.charname
push.i 231131
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.hp
push.i 231132
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.maxhp
push.i 231131
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp
push.i 231132
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.maxhp
push.i 231133
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.at
push.i 231131
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.hp
push.i 231132
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.maxhp
push.i 231133
setowner.e
pushi.e 14
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.at
push.i 231135
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.mag
push.i 231131
setowner.e
pushi.e 70
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.hp
push.i 231132
setowner.e
pushi.e 70
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.maxhp
push.i 231133
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.at
push.i 231135
setowner.e
pushi.e 12
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.mag
push.i 231164
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.spell
pushi.e 0
popaf.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 3
push.v [arraypopaf]self.spell
pushi.e 0
popaf.e
call.i gml_Script_scr_spellinfo_all(argc=0)
popz.v
push.i 231171
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 5
pop.v.v [array]self.item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 12
pop.v.v [array]self.item
call.i gml_Script_scr_iteminfo_all(argc=0)
popz.v
push.i 235365
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.l_item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.l_item
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.l_item
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.l_item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.l_item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 5
pop.v.v [array]self.l_item
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.l_item
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.l_item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.l_item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.l_item
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.l_item
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.l_item
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 12
pop.v.v [array]self.l_item
pushi.e 500
pop.v.i global.tension
pushi.e 1000
pop.v.i global.maxtension
pushi.e 0
pop.v.i global.grazetotal
pushi.e 0
pop.v.i global.grazeturn
pushi.e 0
pop.v.i self.i

:[10]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [12]

:[11]
push.i 231474
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monster
push.i 231907
setowner.e
push.s "obj_initializer_slash_Create_0_gml_114_0"@21705
conv.s.v
push.s "Known Quantity"@21706
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstername
push.i 231478
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstertype
push.i 231909
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterat
push.i 231910
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterdf
push.i 231862
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterhp
push.i 231908
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstermaxhp
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [10]

:[12]
pushi.e 0
pop.v.i global.bmenuno
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [18]

:[14]
pushi.e 0
pop.v.i self.j

:[15]
push.v self.j
pushi.e 20
cmp.i.v LT
bf [17]

:[16]
push.i 231619
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.bmenucoord
push.v self.j
conv.v.i
popaf.e
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [15]

:[17]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [13]

:[18]
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i global.mnfight
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 3
pop.v.i global.typer
push.s " "@353
pop.v.s global.msg
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i global.darkzone
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [21]

:[20]
push.i 231408
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smdir
push.i 231409
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smspeed
push.i 233059
setowner.e
push.i 505050
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smface
push.i 231413
setowner.e
pushi.e 639
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smsprite
push.i 231405
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smalarm
push.i 231410
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smtype
push.i 231407
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smxx
push.i 231406
setowner.e
pushi.e 110
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smyy
push.i 231414
setowner.e
push.i 8388736
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smcolor
push.i 231415
setowner.e
push.s "obj_initializer_slash_Create_0_gml_158_0"@21707
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smstring
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [19]

:[21]
push.i 231405
setowner.e
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smalarm
push.i 231406
setowner.e
pushi.e 70
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smyy
push.i 231407
setowner.e
pushi.e 700
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smxx
push.i 231408
setowner.e
pushi.e 180
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smdir
push.i 231409
setowner.e
pushi.e 40
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smspeed
push.i 231410
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smtype
push.i 231413
setowner.e
pushi.e 638
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smsprite
push.i 231414
setowner.e
push.i 16777215
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smcolor
push.i 231415
setowner.e
push.s "obj_initializer_slash_Create_0_gml_169_0"@21708
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.smstring
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
pushi.e 100
cmp.i.v LT
bf [end]

:[23]
push.i 231251
setowner.e
push.s "obj_initializer_slash_Create_0_gml_173_0"@21709
conv.s.v
push.s "%%"@2565
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.msg
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [22]

:[end]