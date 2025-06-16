.localvar 2 arguments

:[0]
b [54]

> gml_Script_scr_gamestart (locals=0, argc=0)
:[1]
pushi.e 2
pop.v.i global.chapter
pushi.e 0
pop.v.i global.darkzone
pushi.e 0
pop.v.i global.filechoice
pushi.e 0
pop.v.i global.plot
push.s ""@157
pop.v.s global.truename
push.i 69174987
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
push.s "scr_gamestart_slash_scr_gamestart_gml_19_0"@10860
conv.s.v
push.s ""@157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v global.townname
pushi.e 0
pop.v.i global.time
pushi.e 0
pop.v.i global.fighting
push.i 69174990
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
pop.v.i global.ambush
pushi.e 0
pop.v.i global.tension
pushi.e 250
pop.v.i global.maxtension
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [4]

:[3]
push.i 69175805
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.heromakex
push.i 69175806
setowner.e
pushi.e 200
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.heromakey
push.i 69175731
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charauto
push.i 69175450
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charmove
push.i 69175415
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charcantarget
push.i 69175451
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chardead
push.i 69176412
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.invincible
push.i 69175435
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charaction
push.i 69175531
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.faceaction
push.i 69176413
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
push.i 69175043
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
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 72
cmp.i.v LT
bf [7]

:[6]
push.i 69175047
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.pocketitem
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [5]

:[7]
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
pushi.e 48
cmp.i.v LT
bf [10]

:[9]
push.i 69175045
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.weapon
push.i 69175046
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.armor
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [8]

:[10]
push.i 69175044
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
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [19]

:[12]
push.i 69175003
setowner.e
pushi.e 200
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hp
push.i 69175004
setowner.e
pushi.e 250
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.maxhp
push.i 69175005
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.at
push.i 69175006
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.df
push.i 69175007
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.mag
push.i 69175008
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.guts
push.i 69175009
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charweapon
push.i 69175010
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1
push.i 69175011
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2
push.i 69175012
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.weaponstyle
push.i 69175851
setowner.e
push.s "scr_gamestart_slash_scr_gamestart_gml_72_0"@10864
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charname
pushi.e 0
pop.v.i self.q

:[13]
push.v self.q
pushi.e 4
cmp.i.v LT
bf [15]

:[14]
push.i 69175015
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
push.i 69175017
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
push.i 69175019
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
push.i 69175021
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
push.i 69175023
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
push.i 69175025
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
push.i 69175027
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
push.i 69175029
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
push.i 69175031
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemelement
push.v self.q
conv.v.i
popaf.e
push.i 69175033
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemelementamount
push.v self.q
conv.v.i
popaf.e
push.i 69175731
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charauto
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q
b [13]

:[15]
pushi.e 0
pop.v.i self.j

:[16]
push.v self.j
pushi.e 12
cmp.i.v LT
bf [18]

:[17]
push.i 69175036
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
b [16]

:[18]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[19]
pushi.e 100
pop.v.i global.boltspeed
pushi.e 100
pop.v.i global.grazeamt
pushi.e 100
pop.v.i global.grazesize
call.i gml_Script_scr_initialize_charnames(argc=0)
popz.v
push.i 69175009
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charweapon
push.i 69175010
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.chararmor1
push.i 69175011
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.chararmor2
push.i 69175003
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.hp
push.i 69175004
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.maxhp
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.i 69175003
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp
push.i 69175004
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.maxhp
push.i 69175005
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.at
push.i 69175009
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.charweapon
push.i 69175003
setowner.e
pushi.e 110
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.hp
push.i 69175004
setowner.e
pushi.e 110
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.maxhp
push.i 69175005
setowner.e
pushi.e 14
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.at
push.i 69175007
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.mag
push.i 69175009
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.charweapon
push.i 69175003
setowner.e
pushi.e 70
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.hp
push.i 69175004
setowner.e
pushi.e 70
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.maxhp
push.i 69175005
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.at
push.i 69175007
setowner.e
pushi.e 7
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.mag

:[21]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
push.i 69175004
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.maxhp
push.i 69175003
setowner.e
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp
push.i 69175005
setowner.e
pushi.e 12
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.at
push.i 69175010
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.chararmor1
push.i 69175011
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.chararmor2
push.i 69175009
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.charweapon
push.i 69175004
setowner.e
pushi.e 140
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.maxhp
push.i 69175003
setowner.e
pushi.e -5
pushi.e 2
push.v [array]self.maxhp
pushi.e -5
pushi.e 2
pop.v.v [array]self.hp
push.i 69175005
setowner.e
pushi.e 16
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.at
push.i 69175007
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.mag
push.i 69175010
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.chararmor1
push.i 69175011
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.chararmor2
push.i 69175009
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.charweapon
push.i 69175004
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.maxhp
push.i 69175003
setowner.e
pushi.e -5
pushi.e 3
push.v [array]self.maxhp
pushi.e -5
pushi.e 3
pop.v.v [array]self.hp
push.i 69175005
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.at
push.i 69175007
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.mag
push.i 69175010
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.chararmor1
push.i 69175011
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.chararmor2
push.i 69175009
setowner.e
pushi.e 12
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.charweapon
push.i 69175010
setowner.e
pushi.e 14
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.chararmor1
push.i 69175011
setowner.e
pushi.e 22
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.chararmor2
push.i 69175003
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.hp
push.i 69175004
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.maxhp
push.i 69175005
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.at
push.i 69175007
setowner.e
pushi.e 11
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.mag
push.i 69175006
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.df

:[23]
push.i 69175036
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
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.spell
pushi.e 0
popaf.e
pushi.e 8
conv.i.v
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.spell
pushi.e 1
popaf.e
pushi.e 9
conv.i.v
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.spell
pushi.e 2
popaf.e
call.i gml_Script_scr_weaponinfo_mine(argc=0)
popz.v
call.i gml_Script_scr_armorinfo_mine(argc=0)
popz.v
call.i gml_Script_scr_iteminfo_all(argc=0)
popz.v
pushi.e 0
pop.v.i global.grazetotal
pushi.e 0
pop.v.i global.grazeturn
pushi.e 0
pop.v.i self.i

:[24]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [26]

:[25]
push.i 69175354
setowner.e
pushi.e 500
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstermakex
push.i 69175353
setowner.e
pushi.e 240
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstermakey
push.i 69175352
setowner.e
push.i 2283728
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterinstancetype
push.i 69175346
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monster
push.i 69175779
setowner.e
push.s "scr_gamestart_slash_scr_gamestart_gml_231_0"@10868
conv.s.v
push.s "ECHIDNA"@10869
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstername
push.i 69175350
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstertype
push.i 69175781
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterat
push.i 69175782
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterdf
push.i 69175734
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterhp
push.i 69175780
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 69175783
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.sparepoint
push.i 69175741
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterattackname
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [24]

:[26]
pushi.e 0
pop.v.i global.bmenuno
pushi.e 0
pop.v.i self.i

:[27]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [32]

:[28]
pushi.e 0
pop.v.i self.j

:[29]
push.v self.j
pushi.e 20
cmp.i.v LT
bf [31]

:[30]
push.i 69175491
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
b [29]

:[31]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [27]

:[32]
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
pushi.e 4
pop.v.i global.battletyper
push.s " "@353
pop.v.s global.msg
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.msgno
pushi.e 0
pop.v.i self.i

:[33]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [35]

:[34]
push.i 69175204
setowner.e
pushi.e 65
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.writersnd
push.i 69176246
setowner.e
pushi.e 2240
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.writerimg
push.i 69175280
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smdir
push.i 69175281
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smspeed
push.i 69175285
setowner.e
pushi.e 639
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smsprite
push.i 69175277
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smalarm
push.i 69175282
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smtype
push.i 69175279
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smxx
push.i 69175278
setowner.e
pushi.e 110
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smyy
push.i 69175283
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smimage
push.i 69175284
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smimagespeed
push.i 69176417
setowner.e
push.l 4384738473
conv.l.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.sminstance
push.i 69175286
setowner.e
push.i 16777215
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.smcolor
push.i 69175287
setowner.e
push.s "scr_gamestart_slash_scr_gamestart_gml_282_0"@10872
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
b [33]

:[35]
push.i 69175277
setowner.e
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smalarm
push.i 69175278
setowner.e
pushi.e 70
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smyy
push.i 69175279
setowner.e
pushi.e 700
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smxx
push.i 69175280
setowner.e
pushi.e 180
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smdir
push.i 69175281
setowner.e
pushi.e 40
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smspeed
push.i 69175282
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smtype
push.i 69175285
setowner.e
pushi.e 638
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smsprite
push.i 69175286
setowner.e
push.i 16777215
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smcolor
push.i 69175287
setowner.e
push.s "scr_gamestart_slash_scr_gamestart_gml_293_0"@10873
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.smstring
pushi.e 0
pop.v.i self.i

:[36]
push.v self.i
pushi.e 100
cmp.i.v LT
bf [38]

:[37]
push.i 69175123
setowner.e
push.s "scr_gamestart_slash_scr_gamestart_gml_297_0"@10874
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
b [36]

:[38]
push.i 69175123
setowner.e
push.s "scr_gamestart_slash_scr_gamestart_gml_300_0"@10875
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_gamestart_slash_scr_gamestart_gml_303_0"@10876
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "scr_gamestart_slash_scr_gamestart_gml_305_0"@10877
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "scr_gamestart_slash_scr_gamestart_gml_306_0"@10878
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "scr_gamestart_slash_scr_gamestart_gml_307_0"@10879
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.i 69175331
setowner.e
pushi.e 259
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 259
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
push.i 69176208
setowner.e
pushi.e 259
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
pushi.e 259
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.batmusic
pushi.e 0
pop.v.i global.debug
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e -1
pop.v.i global.choice
pushi.e 0
pop.v.i global.seriousbattle
pushi.e 0
pop.v.i global.turntimer
pushi.e 0
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.entrance
pushi.e 0
pop.v.i self.i

:[39]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [41]

:[40]
push.i 69175074
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litem
push.i 69175140
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname
push.i 69175075
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phone
push.i 69175119
setowner.e
push.s "scr_gamestart_slash_scr_gamestart_gml_341_0"@10882
conv.s.v
push.s ""@157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phonename
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [39]

:[41]
pushi.e 0
pop.v.i self.i

:[42]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [44]

:[43]
push.i 69175179
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
b [42]

:[44]
pushi.e 0
pop.v.i self.i

:[45]
push.v self.i
pushi.e 100
cmp.i.v LT
bf [47]

:[46]
push.i 69175123
setowner.e
push.s "scr_gamestart_slash_scr_gamestart_gml_353_0"@10883
conv.s.v
push.s " "@353
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
b [45]

:[47]
push.i 69175177
setowner.e
push.s "scr_gamestart_slash_scr_gamestart_gml_356_0_b"@10884
conv.s.v
push.s "Yes"@5613
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.choicemsg
push.s "scr_gamestart_slash_scr_gamestart_gml_357_0"@10885
conv.s.v
push.s "No"@2449
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.choicemsg
push.s "scr_gamestart_slash_scr_gamestart_gml_358_0"@10886
conv.s.v
push.s "Maybe"@10887
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.choicemsg
push.s "scr_gamestart_slash_scr_gamestart_gml_359_0"@10888
conv.s.v
push.s "Don't know"@10889
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.choicemsg
pushi.e 0
pop.v.i self.i

:[48]
push.v self.i
pushi.e 9999
cmp.i.v LT
bf [50]

:[49]
push.i 69175076
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
b [48]

:[50]
push.i 69175074
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.litem
push.i 69175140
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.litemname
push.i 69175075
setowner.e
pushi.e 201
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.phone
push.i 69175119
setowner.e
push.s "scr_gamestart_slash_scr_gamestart_gml_356_0"@10890
conv.s.v
push.s "Home"@9462
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.phonename
push.s "scr_gamestart_slash_scr_gamestart_gml_396_0"@10891
conv.s.v
push.s "Kris"@1493
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
push.i 69175076
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 15
pop.v.v [array]self.flag
push.d 0.85
conv.d.v
pushi.e -5
pushi.e 16
pop.v.v [array]self.flag
push.d 0.6
conv.d.v
pushi.e -5
pushi.e 17
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.i

:[51]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [53]

:[52]
push.i 69175933
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.input_pressed
push.i 69175935
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.input_held
push.i 69175936
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
b [51]

:[53]
push.i 69175076
setowner.e
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pushi.e -5
pushi.e 220
pop.v.v [array]self.flag
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pushi.e -5
pushi.e 221
pop.v.v [array]self.flag
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pushi.e -5
pushi.e 222
pop.v.v [array]self.flag
pushi.e 31
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -5
pushi.e 223
pop.v.v [array]self.flag
pushi.e 31
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -5
pushi.e 224
pop.v.v [array]self.flag
pushi.e 31
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -5
pushi.e 225
pop.v.v [array]self.flag
call.i gml_Script_scr_gamestart_chapter_override(argc=0)
popz.v
call.i gml_Script_scr_spellinfo_all(argc=0)
popz.v
call.i gml_Script_scr_weaponinfo_mine(argc=0)
popz.v
call.i gml_Script_scr_armorinfo_mine(argc=0)
popz.v
pushi.e -5
pushi.e 17
push.v [array]self.flag
pushi.e 0
conv.i.v
call.i audio_set_master_gain(argc=2)
popz.v
push.i 69175523
setowner.e
push.l 4854845464869464
conv.l.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.cinstance
push.l 48548454648694644
conv.l.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.cinstance
push.l 48548454648694649
conv.l.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.cinstance
exit.i

:[54]
push.i [function]gml_Script_scr_gamestart
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_gamestart
popz.v

:[end]