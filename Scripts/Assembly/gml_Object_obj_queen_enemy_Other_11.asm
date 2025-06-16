.localvar 2 arguments
.localvar 25063 shieldbreaking 12068

:[0]
pushi.e 0
pop.v.i local.shieldbreaking
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 577.shieldhurt
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i local.shieldbreaking

:[5]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bt [7]

:[6]
pushloc.v local.shieldbreaking
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
push.i 231837
setowner.e
push.s "obj_queen_enemy_slash_Other_11_gml_10_0"@25162
conv.s.v
push.s "Loosen"@7543
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 231914
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimul
pushi.e 0
popaf.e
push.i 231837
setowner.e
push.s "obj_queen_enemy_slash_Other_11_gml_11_0"@25163
conv.s.v
push.s "GroupLoosen"@7545
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
b [11]

:[10]
push.i 231837
setowner.e
push.s "obj_queen_enemy_slash_Other_11_gml_15_0"@25164
conv.s.v
push.s "Toast"@25165
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 231914
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimul
pushi.e 0
popaf.e
push.i 231837
setowner.e
push.s "obj_queen_enemy_slash_Other_11_gml_16_0"@25166
conv.s.v
push.s "GroupToast"@25167
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e

:[11]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bt [13]

:[12]
pushloc.v local.shieldbreaking
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 1

:[14]
bf [16]

:[15]
push.i 231916
setowner.e
push.s "obj_queen_enemy_slash_Other_11_gml_22_0"@25168
conv.s.v
push.s "Loosen"@7543
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 231917
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e
b [17]

:[16]
push.i 231916
setowner.e
push.s "obj_queen_enemy_slash_Other_11_gml_26_0"@25169
conv.s.v
push.s "Toast"@25165
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 231917
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e

:[17]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bt [19]

:[18]
pushloc.v local.shieldbreaking
pushi.e 1
cmp.i.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
push.i 231919
setowner.e
push.s "obj_queen_enemy_slash_Other_11_gml_32_0"@25170
conv.s.v
push.s "Loosen"@7543
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 231920
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e
b [23]

:[22]
push.i 231919
setowner.e
push.s "obj_queen_enemy_slash_Other_11_gml_36_0"@25171
conv.s.v
push.s "Toast"@25165
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 231920
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e

:[23]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bt [25]

:[24]
pushloc.v local.shieldbreaking
pushi.e 1
cmp.i.v EQ
b [26]

:[25]
push.e 1

:[26]
bf [28]

:[27]
push.i 231913
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 231922
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 231837
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1540_0"@7546
conv.s.v
push.s "Throw"@7547
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 231925
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 231833
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 231913
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 231922
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e
push.i 231837
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1552_0"@7548
conv.s.v
push.s "RedBuster"@7321
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 231925
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1553_0"@7549
conv.s.v
push.s "Red#Damage"@7323
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 3
popaf.e
push.i 231833
setowner.e
pushi.e 150
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 3
popaf.e
push.i 231913
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 4
popaf.e
push.i 231922
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 4
popaf.e
push.i 231837
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1558_0"@7550
conv.s.v
push.s "DualHeal"@7325
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 4
popaf.e
push.i 231925
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1559_0"@7551
conv.s.v
push.s "Heals#everyone"@7327
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 4
popaf.e
push.i 231833
setowner.e
pushi.e 125
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 4
popaf.e
push.i 231913
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 5
popaf.e
b [29]

:[28]
push.i 231913
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 231922
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 231837
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1552_0"@7548
conv.s.v
push.s "RedBuster"@7321
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 231925
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1553_0"@7549
conv.s.v
push.s "Red#Damage"@7323
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 231833
setowner.e
pushi.e 150
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 231913
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 231922
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e
push.i 231837
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1558_0"@7550
conv.s.v
push.s "DualHeal"@7325
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 231925
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1559_0"@7551
conv.s.v
push.s "Heals#everyone"@7327
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 3
popaf.e
push.i 231833
setowner.e
pushi.e 125
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 3
popaf.e
push.i 231913
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 4
popaf.e
push.i 231922
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 4
popaf.e
push.i 231837
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 4
popaf.e
push.i 231925
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 4
popaf.e
push.i 231833
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 4
popaf.e
push.i 231913
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 5
popaf.e
push.i 231922
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 5
popaf.e
push.i 231837
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 5
popaf.e
push.i 231925
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 5
popaf.e
push.i 231833
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 5
popaf.e

:[29]
call.i gml_Script_scr_spellmenu_setup(argc=0)
popz.v

:[end]