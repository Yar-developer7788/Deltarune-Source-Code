.localvar 2 arguments

:[0]
b [44]

> gml_Script_scr_gamestart_ch1 (locals=0, argc=0)
:[1]
pushi.e 1
pop.v.i global.chapter
pushi.e 0
pop.v.i global.darkzone
pushi.e 0
pop.v.i global.filechoice
pushi.e 0
pop.v.i global.plot
push.s ""@157
pop.v.s global.truename
push.i 124618443
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.othername
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.othername
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.othername
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.othername
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.othername
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 5
pop.v.v [array]self.othername
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.othername
pushi.e 0
pop.v.i global.time
pushi.e 0
pop.v.i global.fighting
push.i 124618446
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.char
pushi.e 0
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
pushi.e 1
pop.v.i global.lv
pushi.e 0
pop.v.i global.inv
pushi.e 1
pop.v.i global.invc
pushi.e -1
pop.v.i global.charselect
pushi.e 1
pop.v.i global.encounterno
pushi.e 0
pop.v.i global.specialbattle
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [4]

:[3]
push.i 124619261
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.heromakex
push.i 124619262
setowner.e
pushi.e 200
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.heromakey
push.i 124619187
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charauto
push.i 124618906
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charmove
push.i 124618871
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charcantarget
push.i 124618907
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chardead
push.i 124619868
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.invincible
push.i 124618891
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charaction
push.i 124618987
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.faceaction
push.i 124619869
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charcond
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
push.i 124619187
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
pushi.e 1
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

:[5]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [13]

:[6]
push.i 124618459
setowner.e
pushi.e 200
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hp
push.i 124618460
setowner.e
pushi.e 250
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.maxhp
push.i 124618461
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.at
push.i 124618462
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.df
push.i 124618463
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.mag
push.i 124618464
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.guts
push.i 124618465
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charweapon
push.i 124618466
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1
push.i 124618467
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2
push.i 124618468
setowner.e
push.s "scr_gamestart_slash_scr_gamestart_gml_69_0"@13496
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.weaponstyle
pushi.e 0
pop.v.i self.q

:[7]
push.v self.q
pushi.e 4
cmp.i.v LT
bf [9]

:[8]
push.i 124618471
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemat
push.v self.q
conv.v.i
popaf.e
push.i 124618473
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemdf
push.v self.q
conv.v.i
popaf.e
push.i 124618475
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemmag
push.v self.q
conv.v.i
popaf.e
push.i 124618477
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itembolts
push.v self.q
conv.v.i
popaf.e
push.i 124618479
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazeamt
push.v self.q
conv.v.i
popaf.e
push.i 124618481
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazesize
push.v self.q
conv.v.i
popaf.e
push.i 124618483
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemboltspeed
push.v self.q
conv.v.i
popaf.e
push.i 124618485
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemspecial
push.v self.q
conv.v.i
popaf.e
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q
b [7]

:[9]
pushi.e 0
pop.v.i self.j

:[10]
push.v self.j
pushi.e 12
cmp.i.v LT
bf [12]

:[11]
push.i 124618492
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
b [10]

:[12]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[13]
pushi.e 100
pop.v.i global.boltspeed
pushi.e 100
pop.v.i global.grazeamt
pushi.e 100
pop.v.i global.grazesize
push.i 124619307
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charname
push.s "scr_gamestart_slash_scr_gamestart_gml_98_0"@13497
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.charname
push.s "scr_gamestart_slash_scr_gamestart_gml_99_0"@11901
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.charname
push.s "scr_gamestart_slash_scr_gamestart_gml_100_0"@11902
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.charname
push.i 124618465
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charweapon
push.i 124618466
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.chararmor1
push.i 124618467
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.chararmor2
push.i 124618459
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.hp
push.i 124618460
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.maxhp
push.i 124618459
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp
push.i 124618460
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.maxhp
push.i 124618461
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.at
push.i 124618465
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.charweapon
push.i 124618459
setowner.e
pushi.e 110
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.hp
push.i 124618460
setowner.e
pushi.e 110
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.maxhp
push.i 124618461
setowner.e
pushi.e 14
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.at
push.i 124618463
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.mag
push.i 124618465
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.charweapon
push.i 124618459
setowner.e
pushi.e 70
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.hp
push.i 124618460
setowner.e
pushi.e 70
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.maxhp
push.i 124618461
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.at
push.i 124618463
setowner.e
pushi.e 7
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.mag
push.i 124618492
setowner.e
pushi.e 7
conv.i.v
pushi.e -5
pushi.e 1
push.v [arraypopaf]self.spell
pushi.e 0
popaf.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.spell
pushi.e 0
popaf.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 3
push.v [arraypopaf]self.spell
pushi.e 0
popaf.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 3
push.v [arraypopaf]self.spell
pushi.e 1
popaf.e
call.i gml_Script_scr_spellinfo_all_ch1(argc=0)
popz.v
push.i 124618499
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 5
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.item
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 12
pop.v.v [array]self.item
push.i 124618500
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.keyitem
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.keyitem
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.keyitem
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.keyitem
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.keyitem
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 5
pop.v.v [array]self.keyitem
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.keyitem
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.keyitem
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.keyitem
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.keyitem
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.keyitem
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.keyitem
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 12
pop.v.v [array]self.keyitem
push.i 124618501
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.weapon
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.weapon
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.weapon
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.weapon
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.weapon
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 5
pop.v.v [array]self.weapon
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.weapon
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.weapon
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.weapon
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.weapon
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.weapon
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.weapon
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 12
pop.v.v [array]self.weapon
push.i 124618502
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.armor
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.armor
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.armor
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.armor
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.armor
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 5
pop.v.v [array]self.armor
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.armor
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.armor
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.armor
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.armor
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.armor
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.armor
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 12
pop.v.v [array]self.armor
call.i gml_Script_scr_iteminfo_all_ch1(argc=0)
popz.v
pushi.e 0
pop.v.i global.tension
pushi.e 250
pop.v.i global.maxtension
pushi.e 0
pop.v.i global.grazetotal
pushi.e 0
pop.v.i global.grazeturn
pushi.e 0
pop.v.i self.i

:[14]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [16]

:[15]
push.i 124618810
setowner.e
pushi.e 500
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstermakex
push.i 124618809
setowner.e
pushi.e 240
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstermakey
push.i 124618808
setowner.e
push.i 2283728
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterinstancetype
push.i 124618802
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monster
push.i 124619235
setowner.e
push.s "scr_gamestart_slash_scr_gamestart_gml_206_0"@13498
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstername
push.i 124618806
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstertype
push.i 124619237
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterat
push.i 124619238
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterdf
push.i 124619190
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterhp
push.i 124619236
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 124619239
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.sparepoint
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [14]

:[16]
pushi.e 0
pop.v.i global.bmenuno
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [22]

:[18]
pushi.e 0
pop.v.i self.j

:[19]
push.v self.j
pushi.e 20
cmp.i.v LT
bf [21]

:[20]
push.i 124618947
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
b [19]

:[21]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [17]

:[22]
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i global.mnfight
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 5
pop.v.i global.typer
push.s " "@353
pop.v.s global.msg
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i self.i

:[23]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [25]

:[24]
push.i 124618660
setowner.e
pushi.e 382
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.writersnd
push.i 124619702
setowner.e
push.s "spr_btact"@6816
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.writerimg
push.i 124618736
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smdir
push.i 124618737
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smspeed
push.i 124620387
setowner.e
push.i 505050
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smface
push.i 124618741
setowner.e
pushi.e 3445
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smsprite
push.i 124618733
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smalarm
push.i 124618738
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smtype
push.i 124618735
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smxx
push.i 124618734
setowner.e
pushi.e 110
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smyy
push.i 124618742
setowner.e
push.i 8388736
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smcolor
push.i 124618743
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smstring
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [23]

:[25]
push.i 124618733
setowner.e
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smalarm
push.i 124618734
setowner.e
pushi.e 70
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smyy
push.i 124618735
setowner.e
pushi.e 700
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smxx
push.i 124618736
setowner.e
pushi.e 180
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smdir
push.i 124618737
setowner.e
pushi.e 40
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smspeed
push.i 124618738
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smtype
push.i 124618741
setowner.e
pushi.e 3444
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smsprite
push.i 124618742
setowner.e
push.i 16777215
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smcolor
push.i 124618743
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smstring
pushi.e 0
pop.v.i self.i

:[26]
push.v self.i
pushi.e 100
cmp.i.v LT
bf [28]

:[27]
push.i 124618579
setowner.e
push.s "%%"@2565
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.msg
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [26]

:[28]
push.i 124618579
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s " "@353
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s " "@353
conv.s.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s " "@353
conv.s.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s " "@353
conv.s.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.i 124618787
setowner.e
pushi.e 492
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 492
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
push.i 124619664
setowner.e
pushi.e 492
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
pushi.e 492
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.batmusic
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e -1
pop.v.i global.choice
pushi.e 0
pop.v.i global.seriousbattle
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.entrance
pushi.e 0
pop.v.i self.i

:[29]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [31]

:[30]
push.i 124618530
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litem
push.i 124618596
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname
push.i 124618531
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phone
push.i 124618575
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phonename
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [29]

:[31]
pushi.e 0
pop.v.i self.i

:[32]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [34]

:[33]
push.i 124618635
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.menucoord
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [32]

:[34]
pushi.e 0
pop.v.i self.i

:[35]
push.v self.i
pushi.e 100
cmp.i.v LT
bf [37]

:[36]
push.i 124618579
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.msg
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [35]

:[37]
push.i 124618633
setowner.e
push.s "scr_gamestart_slash_scr_gamestart_gml_325_0"@13500
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.choicemsg
push.s "scr_gamestart_slash_scr_gamestart_gml_326_0"@13501
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.choicemsg
push.s "scr_gamestart_slash_scr_gamestart_gml_327_0"@13502
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.choicemsg
push.s "scr_gamestart_slash_scr_gamestart_gml_328_0"@13503
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.choicemsg
pushi.e 0
pop.v.i self.i

:[38]
push.v self.i
pushi.e 9999
cmp.i.v LT
bf [40]

:[39]
push.i 124618532
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.flag
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [38]

:[40]
push.i 124618530
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.litem
push.i 124618596
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.litemname
push.i 124618531
setowner.e
pushi.e 201
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.phone
push.i 124618575
setowner.e
push.s "scr_gamestart_slash_scr_gamestart_gml_343_0"@13504
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.phonename
push.s "scr_gamestart_slash_scr_gamestart_gml_345_0"@13505
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v global.lcharname
pushi.e 2
pop.v.i global.lweapon
pushi.e 3
pop.v.i global.larmor
pushi.e 0
pop.v.i global.lxp
pushi.e 1
pop.v.i global.llv
pushi.e 2
pop.v.i global.lgold
pushi.e 20
pop.v.i global.lhp
pushi.e 20
pop.v.i global.lmaxhp
pushi.e 10
pop.v.i global.lat
pushi.e 10
pop.v.i global.ldf
pushi.e 1
pop.v.i global.lwstrength
pushi.e 0
pop.v.i global.ladef
pushi.e 0
pop.v.i global.facing
push.i 124618532
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 15
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 16
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 17
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.i

:[41]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [43]

:[42]
push.i 124619389
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.input_pressed
push.i 124619391
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.input_held
push.i 124619392
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.input_released
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [41]

:[43]
pushi.e 0
pop.v.i global.currentroom
pushi.e 0
pop.v.b global.disable_border
exit.i

:[44]
push.i [function]gml_Script_scr_gamestart_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_gamestart_ch1
popz.v

:[end]