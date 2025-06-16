.localvar 2 arguments

:[0]
b [63]

> gml_Script_scr_mnendturn_ch1 (locals=0, argc=0)
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
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.techwon

:[9]
push.v self.techwon
pushi.e 0
cmp.i.v EQ
bf [61]

:[10]
call.i gml_Script_scr_battlecursor_memory_reset_ch1(argc=0)
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

:[11]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [25]

:[12]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [14]

:[13]
pushi.e 0
pop.v.i self.tu

:[14]
popenv [13]
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
bf [16]

:[15]
pushi.e -5
push.v self.hptarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [17]

:[16]
push.e 0

:[17]
bf [24]

:[18]
pushi.e -5
push.v self.hptarget
conv.v.i
push.v [array]self.maxhp
pushi.e 8
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.healamt
pushi.e 1633
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
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dmgwr
push.v self.dmgwr
pushi.e -9
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.delay
pushi.e 3
pop.v.i self.type

:[20]
popenv [19]
push.v self.healamt
push.v self.i
call.i gml_Script_scr_heal_ch1(argc=2)
push.v self.dmgwr
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e -5
push.v self.hptarget
conv.v.i
push.v [array]self.hp
pushi.e 1
cmp.i.v GTE
bf [24]

:[21]
push.v self.dmgwr
pushi.e -9
pushenv [23]

:[22]
pushi.e 4
pop.v.i self.specialmessage

:[23]
popenv [22]

:[24]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[25]
pushi.e -5
pushi.e 0
push.v [array]self.charmove
pushi.e 0
cmp.i.v EQ
bt [27]

:[26]
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]self.char
conv.v.i
push.v [array]self.charauto
pushi.e 1
cmp.i.v EQ
b [28]

:[27]
push.e 1

:[28]
bf [30]

:[29]
pushi.e 1
pop.v.i global.charturn

:[30]
pushglb.v global.charturn
pushi.e 1
cmp.i.v EQ
bf [36]

:[31]
pushi.e -5
pushi.e 1
push.v [array]self.charmove
pushi.e 0
cmp.i.v EQ
bt [33]

:[32]
pushi.e -5
pushi.e -5
pushi.e 1
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
pushi.e 2
pop.v.i global.charturn

:[36]
pushglb.v global.charturn
pushi.e 2
cmp.i.v EQ
bf [42]

:[37]
pushi.e -5
pushi.e 2
push.v [array]self.charmove
pushi.e 0
cmp.i.v EQ
bt [39]

:[38]
pushi.e -5
pushi.e -5
pushi.e 2
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
pushi.e 1
pop.v.i self.skip

:[42]
pushi.e 0
pop.v.i self.i

:[43]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [45]

:[44]
push.i 117016651
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.acting
push.i 117017035
setowner.e
pushglb.v global.tension
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.temptension
push.i 117016732
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charspecial
push.i 117016696
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.targeted
push.i 117016715
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charaction
push.i 117016811
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.faceaction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [43]

:[45]
pushi.e 1563
pushenv [47]

:[46]
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.acting

:[47]
popenv [46]
push.v self.skip
pushi.e 1
cmp.i.v EQ
bf [54]

:[48]
pushi.e -5
pushi.e 0
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [50]

:[49]
pushi.e -5
pushi.e 2
push.v [array]self.charauto
pushi.e 1
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
push.i 117016651
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.acting
pushi.e 3
pop.v.i global.myfight

:[53]
call.i gml_Script_scr_endturn_ch1(argc=0)
popz.v

:[54]
pushi.e 0
pop.v.i self.i

:[55]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [60]

:[56]
pushi.e 0
pop.v.i self.j

:[57]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [59]

:[58]
push.i 58558654
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
b [57]

:[59]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [55]

:[60]
b [62]

:[61]
call.i gml_Script_scr_wincombat_ch1(argc=0)
popz.v

:[62]
exit.i

:[63]
push.i [function]gml_Script_scr_mnendturn_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_mnendturn_ch1
popz.v

:[end]