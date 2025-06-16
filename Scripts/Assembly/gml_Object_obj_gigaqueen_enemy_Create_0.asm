.localvar 2 arguments
.localvar 27470 hprecruit 14777

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e 814
conv.i.v
pushi.e -1000
conv.i.v
pushi.e -1000
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 813
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 777
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 789
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 868
pushenv [2]

:[1]
pushi.e 0
pop.v.b self.visible

:[2]
popenv [1]
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.turn
pushi.e 0
pop.v.i self.battlemsgtimer
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [4]

:[3]
push.i 235226
setowner.e
pushi.e 1
conv.i.v
pushi.e 357
pushi.e 0
pop.v.v [array]self.cantspare
pushi.e 1
pop.v.i self.cantspareinit

:[4]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pop.v.v self.kris_save_hp
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pop.v.v self.kris_save_max_hp
pushi.e 0
pop.v.i local.hprecruit
pushi.e -5
pushi.e 254
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v local.hprecruit
pushi.e 5
add.i.v
pop.v.v local.hprecruit

:[6]
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v local.hprecruit
pushi.e 5
add.i.v
pop.v.v local.hprecruit

:[8]
pushi.e -5
pushi.e 630
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v local.hprecruit
pushi.e 5
add.i.v
pop.v.v local.hprecruit

:[10]
pushi.e -5
pushi.e 631
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v local.hprecruit
pushi.e 5
add.i.v
pop.v.v local.hprecruit

:[12]
pushi.e -5
pushi.e 632
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.v local.hprecruit
pushi.e 5
add.i.v
pop.v.v local.hprecruit

:[14]
pushi.e -5
pushi.e 633
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v local.hprecruit
pushi.e 5
add.i.v
pop.v.v local.hprecruit

:[16]
pushi.e -5
pushi.e 634
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.v local.hprecruit
pushi.e 5
add.i.v
pop.v.v local.hprecruit

:[18]
pushi.e -5
pushi.e 635
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.v local.hprecruit
pushi.e 5
add.i.v
pop.v.v local.hprecruit

:[20]
pushi.e -5
pushi.e 636
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v local.hprecruit
pushi.e 5
add.i.v
pop.v.v local.hprecruit

:[22]
pushi.e -5
pushi.e 640
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.v local.hprecruit
pushi.e 5
add.i.v
pop.v.v local.hprecruit

:[24]
pushi.e -5
pushi.e 642
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.v local.hprecruit
pushi.e 5
add.i.v
pop.v.v local.hprecruit

:[26]
pushi.e -5
pushi.e 644
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v local.hprecruit
pushi.e 5
add.i.v
pop.v.v local.hprecruit

:[28]
pushloc.v local.hprecruit
pushi.e 50
cmp.i.v GT
bf [30]

:[29]
pushi.e 50
pop.v.i local.hprecruit

:[30]
push.i 231131
setowner.e
pushi.e 200
pushloc.v local.hprecruit
add.v.i
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp
push.i 231132
setowner.e
pushi.e 200
pushloc.v local.hprecruit
add.v.i
pushi.e -5
pushi.e 1
pop.v.v [array]self.maxhp
push.i 231979
setowner.e
push.s "obj_gigaqueen_enemy_slash_Create_0_gml_19_0"@27471
conv.s.v
push.s "Thrash Machine"@27472
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.charname
pushi.e 0
pop.v.i self.balloonorder
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
pushi.e 0
pop.v.i self.talkedcon
pushi.e 0
pop.v.i self.playerhasntdodged
pushi.e 0
pop.v.i self.playerhasntdodgedorder
pushi.e 0
pop.v.i self.didntdodgethisturn
pushi.e 0
pop.v.i self.didntpunchthisturn
pushi.e 0
pop.v.i self.didntcounterthisturn
pushi.e 0
pop.v.i self.recentphasetransition
pushi.e 0
pop.v.i self.healcount
pushi.e 1
pop.v.i self.haventusedspell
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.finalconvcon
pushi.e 0
pop.v.i self.missleattack
pushi.e 0
pop.v.i self.breathattack
pushi.e 0
pop.v.i self.extradamage
pushi.e 0
pop.v.i self.actpunchtext
pushi.e 0
pop.v.i self.j

:[31]
push.v self.j
pushi.e 13
cmp.i.v LT
bf [end]

:[32]
push.i 172306
setowner.e
pushi.e -5
push.v self.j
conv.v.i
push.v [array]self.item
pushi.e -1
push.v self.j
conv.v.i
pop.v.v [array]self.items
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [31]

:[end]