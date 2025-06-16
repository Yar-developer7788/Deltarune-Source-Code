.localvar 2 arguments
.localvar 6496 __element 3996
.localvar 6500 __remtarget 3997
.localvar 6504 oldcalculation 3998

:[0]
b [76]

> gml_Script_scr_damage_sneo_final_attack (locals=3, argc=0)
:[1]
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [75]

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
bf [28]

:[24]
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
bf [26]

:[25]
pushi.e 2
push.v self.tdamage
mul.v.i
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.tdamage

:[26]
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
bf [28]

:[27]
pushi.e 1
pop.v.i self.tdamage

:[28]
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [30]

:[29]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[30]
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [32]

:[31]
pushi.e 1
pop.v.i self.hurt
pushi.e 0
pop.v.i self.hurttimer

:[32]
popenv [31]
push.v self.tdamage
pop.v.v self.hpdiff
pushi.e 873
pushenv [35]

:[33]
push.v self.delaytimer
pushi.e 1
cmp.i.v GTE
bf [35]

:[34]
pushi.e 1
pop.v.i self.killactive

:[35]
popenv [33]
pushi.e -1
pop.v.i self.doomtype
pushi.e 631
pushenv [37]

:[36]
pushi.e 1
pop.v.i self.dmgnoise

:[37]
popenv [36]
push.v self.target
pushi.e 3
cmp.i.v LT
bf [43]

:[38]
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [40]

:[39]
pushi.e 4
pop.v.i self.doomtype
push.i 100894427
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
b [42]

:[40]
push.i 100894427
setowner.e
pushi.e -5
push.v self.chartarget
conv.v.i
dup.i 1
push.v [array]self.hp
push.v self.tdamage
sub.v.v
pop.i.v [array]self.hp
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [42]

:[41]
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

:[42]
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

:[43]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [56]

:[44]
pushi.e 0
pop.v.i self.hpi

:[45]
push.v self.hpi
pushi.e 3
cmp.i.v LT
bf [56]

:[46]
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
bf [55]

:[47]
pushloc.v local.oldcalculation
conv.v.b
bf [49]

:[48]
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
b [50]

:[49]
push.v self.hpi
push.v self.tdamage
call.i gml_Script_scr_damage_calculation(argc=2)
pop.v.v self.tdamage

:[50]
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
bf [52]

:[51]
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
b [53]

:[52]
pushi.e -5
push.v self.chartarget
conv.v.i
dup.i 1
push.v [array]self.hp
push.v self.tdamage
sub.v.v
pop.i.v [array]self.hp

:[53]
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [55]

:[54]
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

:[55]
push.v self.hpi
pushi.e 1
add.i.v
pop.v.v self.hpi
b [45]

:[56]
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
bf [58]

:[57]
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 0
pop.v.i self.gameover

:[61]
pushi.e -5
pushi.e 1
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [63]

:[62]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 0
pop.v.i self.gameover

:[66]
pushi.e -5
pushi.e 2
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [68]

:[67]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 0
pop.v.i self.gameover

:[71]
push.v self.gameover
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
call.i gml_Script_scr_gameover(argc=0)
popz.v

:[73]
pushloc.v local.__remtarget
pushi.e -1
cmp.i.v NEQ
bf [75]

:[74]
pushloc.v local.__remtarget
pop.v.v self.target

:[75]
exit.i

:[76]
push.i [function]gml_Script_scr_damage_sneo_final_attack
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_damage_sneo_final_attack
popz.v

:[end]