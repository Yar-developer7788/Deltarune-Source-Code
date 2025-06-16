.localvar 2 arguments
.localvar 6496 __element 795
.localvar 6500 __remtarget 797
.localvar 6504 oldcalculation 800

:[0]
b [87]

> gml_Script_scr_damage (locals=3, argc=0)
:[1]
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [86]

:[2]
pushi.e 0
pop.v.i local.__element
push.s "element"@6426
conv.s.v
push.v self.id
call.i variable_instance_exists(argc=2)
conv.v.b
bf [5]

:[3]
push.v self.element
call.i is_real(argc=1)
conv.v.b
bf [5]

:[4]
push.v self.element
pop.v.v local.__element

:[5]
push.v self.target
pushi.e 3
cmp.i.v LT
bf [10]

:[6]
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [10]

:[7]
call.i gml_Script_scr_randomtarget_old(argc=0)
popz.v
push.v self.mytarget
pop.v.v self.target
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [9]

:[8]
push.i 16777215
pop.v.i self.image_blend
pushi.e 0
pop.v.i self.darkify

:[9]
popenv [8]

:[10]
pushi.e -1
pop.v.i local.__remtarget
push.v self.target
pushi.e 4
cmp.i.v EQ
bf [23]

:[11]
pushi.e 4
pop.v.i local.__remtarget
call.i gml_Script_scr_randomtarget_old(argc=0)
popz.v
push.v self.mytarget
pop.v.v self.target
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
div.v.v
call.i gml_Script_scr_party_hpaverage(argc=0)
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [13]

:[12]
call.i gml_Script_scr_randomtarget_old(argc=0)
popz.v
push.v self.mytarget
pop.v.v self.target

:[13]
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
div.v.v
call.i gml_Script_scr_party_hpaverage(argc=0)
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [15]

:[14]
call.i gml_Script_scr_randomtarget_old(argc=0)
popz.v
push.v self.mytarget
pop.v.v self.target

:[15]
push.v self.target
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
div.v.v
push.d 0.35
cmp.d.v LT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
call.i gml_Script_scr_randomtarget_old(argc=0)
popz.v
push.v self.mytarget
pop.v.v self.target

:[20]
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [22]

:[21]
push.i 16777215
pop.v.i self.image_blend
pushi.e 0
pop.v.i self.darkify

:[22]
popenv [21]

:[23]
pushi.e 3
pop.v.i self.chartarget
push.v self.damage
pop.v.v self.tdamage
pushi.e 0
pop.v.i local.oldcalculation
push.v self.target
pushi.e 3
cmp.i.v LT
bf [31]

:[24]
pushloc.v local.oldcalculation
conv.v.b
bf [26]

:[25]
push.v self.tdamage
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.battledf
pushi.e 3
mul.i.v
sub.v.v
call.i ceil(argc=1)
pop.v.v self.tdamage
b [27]

:[26]
push.v self.target
push.v self.tdamage
call.i gml_Script_scr_damage_calculation(argc=2)
pop.v.v self.tdamage

:[27]
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
pop.v.v self.chartarget
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charaction
pushi.e 10
cmp.i.v EQ
bf [29]

:[28]
pushi.e 2
push.v self.tdamage
mul.v.i
pushi.e 3
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.tdamage

:[29]
push.v self.tdamage
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
pushloc.v local.__element
call.i gml_Script_scr_element_damage_reduction(argc=2)
mul.v.v
call.i ceil(argc=1)
pop.v.v self.tdamage
push.s "The element is: "@6509
pushloc.v local.__element
call.i string(argc=1)
add.v.s
call.i gml_Script_debug_message(argc=1)
popz.v
push.v self.tdamage
pushi.e 1
cmp.i.v LT
bf [31]

:[30]
pushi.e 1
pop.v.i self.tdamage

:[31]
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [33]

:[32]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[33]
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [35]

:[34]
pushi.e 1
pop.v.i self.hurt
pushi.e 0
pop.v.i self.hurttimer

:[35]
popenv [34]
push.v self.tdamage
pop.v.v self.hpdiff
pushi.e 873
pushenv [38]

:[36]
push.v self.delaytimer
pushi.e 1
cmp.i.v GTE
bf [38]

:[37]
pushi.e 1
pop.v.i self.killactive

:[38]
popenv [36]
pushi.e -1
pop.v.i self.doomtype
pushi.e 631
pushenv [40]

:[39]
pushi.e 1
pop.v.i self.dmgnoise

:[40]
popenv [39]
push.v self.target
pushi.e 3
cmp.i.v LT
bf [54]

:[41]
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [43]

:[42]
pushi.e 4
pop.v.i self.doomtype
push.i 15959771
setowner.e
pushi.e -5
push.v self.chartarget
conv.v.i
dup.i 1
push.v [array]self.hp
push.v self.tdamage
pushi.e 4
conv.i.d
div.d.v
call.i round(argc=1)
sub.v.v
pop.i.v [array]self.hp
push.v self.tdamage
pushi.e 4
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v self.hpdiff
b [53]

:[43]
push.i 15959771
setowner.e
pushi.e -5
push.v self.chartarget
conv.v.i
dup.i 1
push.v [array]self.hp
push.v self.tdamage
sub.v.v
pop.i.v [array]self.hp
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [46]

:[44]
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [46]

:[45]
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [47]

:[46]
push.e 0

:[47]
bf [51]

:[48]
pushi.e 1
conv.i.v
pushi.e -5
push.v self.chartarget
conv.v.i
pop.v.v [array]self.hp
pushi.e 777
pushenv [50]

:[49]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[50]
popenv [49]

:[51]
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [53]

:[52]
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]self.hp
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]self.maxhp
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i abs(argc=1)
pop.v.v self.hpdiff
pushi.e 4
pop.v.i self.doomtype
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]self.maxhp
neg.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e -5
push.v self.chartarget
conv.v.i
pop.v.v [array]self.hp
push.v self.target
call.i gml_Script_scr_dead(argc=1)
popz.v

:[53]
pushi.e 873
conv.i.v
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.myheight
add.v.v
pushi.e 24
sub.i.v
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dmgwriter
push.v self.hpdiff
push.v self.dmgwriter
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.doomtype
push.v self.dmgwriter
pushi.e -9
pop.v.v [stacktop]self.type

:[54]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [67]

:[55]
pushi.e 0
pop.v.i self.hpi

:[56]
push.v self.hpi
pushi.e 3
cmp.i.v LT
bf [67]

:[57]
pushi.e -5
push.v self.hpi
conv.v.i
push.v [array]self.char
pop.v.v self.chartarget
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GTE
bf [66]

:[58]
pushloc.v local.oldcalculation
conv.v.b
bf [60]

:[59]
push.v self.tdamage
pushi.e -5
push.v self.hpi
conv.v.i
push.v [array]self.battledf
pushi.e 3
mul.i.v
sub.v.v
call.i ceil(argc=1)
pop.v.v self.tdamage
b [61]

:[60]
push.v self.hpi
push.v self.tdamage
call.i gml_Script_scr_damage_calculation(argc=2)
pop.v.v self.tdamage

:[61]
push.v self.tdamage
push.v self.chartarget
pushloc.v local.__element
call.i gml_Script_scr_element_damage_reduction(argc=2)
mul.v.v
call.i ceil(argc=1)
pop.v.v self.tdamage
pushi.e -5
push.v self.hpi
conv.v.i
push.v [array]self.charaction
pushi.e 10
cmp.i.v EQ
bf [63]

:[62]
pushi.e -5
push.v self.chartarget
conv.v.i
dup.i 1
push.v [array]self.hp
pushi.e 3
push.v self.tdamage
mul.v.i
pushi.e 4
conv.i.d
div.d.v
call.i ceil(argc=1)
sub.v.v
pop.i.v [array]self.hp
b [64]

:[63]
pushi.e -5
push.v self.chartarget
conv.v.i
dup.i 1
push.v [array]self.hp
push.v self.tdamage
sub.v.v
pop.i.v [array]self.hp

:[64]
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [66]

:[65]
pushi.e -5
pushi.e 0
push.v [array]self.maxhp
neg.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e -5
push.v self.chartarget
conv.v.i
pop.v.v [array]self.hp

:[66]
push.v self.hpi
pushi.e 1
add.i.v
pop.v.v self.hpi
b [56]

:[67]
pushglb.v global.invc
pushi.e 40
mul.i.v
pop.v.v global.inv
pushi.e 1
pop.v.i self.gameover
pushi.e -5
pushi.e 0
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [69]

:[68]
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 0
pop.v.i self.gameover

:[72]
pushi.e -5
pushi.e 1
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [74]

:[73]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 0
pop.v.i self.gameover

:[77]
pushi.e -5
pushi.e 2
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [79]

:[78]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
pushi.e 0
pop.v.i self.gameover

:[82]
push.v self.gameover
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
call.i gml_Script_scr_gameover(argc=0)
popz.v

:[84]
pushloc.v local.__remtarget
pushi.e -1
cmp.i.v NEQ
bf [86]

:[85]
pushloc.v local.__remtarget
pop.v.v self.target

:[86]
exit.i

:[87]
push.i [function]gml_Script_scr_damage
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_damage
popz.v

:[end]