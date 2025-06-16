.localvar 2 arguments

:[0]
b [67]

> gml_Script_scr_mnendturn (locals=0, argc=0)
:[1]
pushi.e -5
pushi.e 0
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.sus

:[3]
pushi.e -5
pushi.e 1
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.sus

:[5]
pushi.e -5
pushi.e 2
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2
pop.v.i self.sus

:[7]
pushi.e 0
pop.v.i self.techwon
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.techwon

:[9]
pushi.e -5
pushi.e 39
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.techwon

:[11]
push.v self.techwon
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
call.i gml_Script_scr_wincombat(argc=0)
popz.v

:[13]
push.v self.techwon
pushi.e 0
cmp.i.v EQ
bf [66]

:[14]
pushi.e 357
pushenv [16]

:[15]
pushi.e -1
pop.v.i self.messagepriority
pushi.e -1
pop.v.i self.attackpriority

:[16]
popenv [15]
call.i gml_Script_scr_battlecursor_memory_reset(argc=0)
popz.v
pushi.e 0
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i global.bmenuno
pushi.e 0
pop.v.i global.charturn
pushi.e 0
pop.v.i self.skip
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [31]

:[18]
push.i 26183849
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hittarget
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [20]

:[19]
pushi.e 0
pop.v.i self.tu

:[20]
popenv [19]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pop.v.v self.hptarget
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [22]

:[21]
pushi.e -5
push.v self.hptarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [23]

:[22]
push.e 0

:[23]
bf [30]

:[24]
pushi.e -5
push.v self.hptarget
conv.v.i
push.v [array]self.maxhp
pushi.e 8
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.healamt
pushi.e 873
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.myheight
add.v.v
pushi.e 24
sub.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dmgwr
push.v self.dmgwr
pushi.e -9
pushenv [26]

:[25]
pushi.e 1
pop.v.i self.delay
pushi.e 3
pop.v.i self.type

:[26]
popenv [25]
push.v self.healamt
push.v self.i
call.i gml_Script_scr_heal(argc=2)
push.v self.dmgwr
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e -5
push.v self.hptarget
conv.v.i
push.v [array]self.hp
pushi.e 1
cmp.i.v GTE
bf [30]

:[27]
push.v self.dmgwr
pushi.e -9
pushenv [29]

:[28]
pushi.e 4
pop.v.i self.specialmessage

:[29]
popenv [28]

:[30]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [17]

:[31]
pushi.e -5
pushi.e 0
push.v [array]self.charmove
pushi.e 0
cmp.i.v EQ
bt [33]

:[32]
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]self.char
conv.v.i
push.v [array]self.charauto
pushi.e 1
cmp.i.v EQ
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
pushi.e 1
pop.v.i global.charturn

:[36]
pushglb.v global.charturn
pushi.e 1
cmp.i.v EQ
bf [42]

:[37]
pushi.e -5
pushi.e 1
push.v [array]self.charmove
pushi.e 0
cmp.i.v EQ
bt [39]

:[38]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.char
conv.v.i
push.v [array]self.charauto
pushi.e 1
cmp.i.v EQ
b [40]

:[39]
push.e 1

:[40]
bf [42]

:[41]
pushi.e 2
pop.v.i global.charturn

:[42]
pushglb.v global.charturn
pushi.e 2
cmp.i.v EQ
bf [48]

:[43]
pushi.e -5
pushi.e 2
push.v [array]self.charmove
pushi.e 0
cmp.i.v EQ
bt [45]

:[44]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.char
conv.v.i
push.v [array]self.charauto
pushi.e 1
cmp.i.v EQ
b [46]

:[45]
push.e 1

:[46]
bf [48]

:[47]
pushi.e 1
pop.v.i self.skip

:[48]
pushi.e 0
pop.v.i self.i

:[49]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [51]

:[50]
push.i 26183755
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.acting
push.i 26184128
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.actingsingle
push.i 26184131
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.actingsimul
push.i 26184138
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.actingtarget
push.i 26184139
setowner.e
pushglb.v global.tension
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.temptension
push.i 26183836
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charspecial
push.i 26183800
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.targeted
push.i 26183819
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charaction
push.i 26183915
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.faceaction
push.i 26184125
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
b [49]

:[51]
pushi.e 0
pop.v.i global.currentactingchar
pushi.e 392
pushenv [53]

:[52]
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.acting
pushi.e 0
pop.v.i self.actingsus
pushi.e 0
pop.v.i self.actingral
pushi.e 0
pop.v.i self.actingnoe

:[53]
popenv [52]
push.v self.skip
pushi.e 1
cmp.i.v EQ
bf [60]

:[54]
pushi.e -5
pushi.e 0
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [56]

:[55]
pushi.e -5
pushi.e 2
push.v [array]self.charauto
pushi.e 1
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
push.i 26183755
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.acting
pushi.e 3
pop.v.i global.myfight

:[59]
call.i gml_Script_scr_endturn(argc=0)
popz.v

:[60]
pushi.e 0
pop.v.i self.i

:[61]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [66]

:[62]
pushi.e 0
pop.v.i self.j

:[63]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [65]

:[64]
push.i 13142206
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.item
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.tempitem
push.v self.j
conv.v.i
popaf.e
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [63]

:[65]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [61]

:[66]
exit.i

:[67]
push.i [function]gml_Script_scr_mnendturn
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_mnendturn
popz.v

:[end]