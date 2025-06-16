.localvar 2 arguments
.localvar 12981 debug_inv 4154

:[0]
b [60]

> gml_Script_scr_damage_ch1 (locals=1, argc=0)
:[1]
pushi.e 0
pop.v.i local.debug_inv
push.s "chemg_god_mode"@12982
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushglb.v global.chemg_god_mode
pop.v.v local.debug_inv

:[3]
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
pushloc.v local.debug_inv
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [59]

:[7]
push.v self.target
pushi.e 3
cmp.i.v LT
bf [12]

:[8]
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [12]

:[9]
call.i gml_Script_scr_randomtarget_ch1(argc=0)
popz.v
push.v self.mytarget
pop.v.v self.target
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [11]

:[10]
push.i 16777215
pop.v.i self.image_blend
pushi.e 0
pop.v.i self.darkify

:[11]
popenv [10]

:[12]
pushi.e 3
pop.v.i self.chartarget
push.v self.damage
pop.v.v self.tdamage
push.v self.target
pushi.e 3
cmp.i.v LT
bf [17]

:[13]
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
bf [15]

:[14]
pushi.e 2
push.v self.tdamage
mul.v.i
pushi.e 3
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.tdamage

:[15]
push.v self.tdamage
pushi.e 1
cmp.i.v LT
bf [17]

:[16]
pushi.e 1
pop.v.i self.tdamage

:[17]
pushi.e 1468
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [19]

:[18]
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[19]
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [21]

:[20]
pushi.e 1
pop.v.i self.hurt
pushi.e 0
pop.v.i self.hurttimer

:[21]
popenv [20]
push.v self.tdamage
pop.v.v self.hpdiff
pushi.e 1633
pushenv [24]

:[22]
push.v self.delaytimer
pushi.e 1
cmp.i.v GTE
bf [24]

:[23]
pushi.e 1
pop.v.i self.killactive

:[24]
popenv [22]
pushi.e -1
pop.v.i self.doomtype
pushi.e 1634
pushenv [26]

:[25]
pushi.e 1
pop.v.i self.dmgnoise

:[26]
popenv [25]
push.v self.target
pushi.e 3
cmp.i.v LT
bf [32]

:[27]
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [29]

:[28]
pushi.e 4
pop.v.i self.doomtype
push.i 109545179
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
b [31]

:[29]
push.i 109545179
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
bf [31]

:[30]
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
call.i gml_Script_scr_dead_ch1(argc=1)
popz.v

:[31]
pushi.e 1633
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
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dmgwriter
push.v self.hpdiff
push.v self.dmgwriter
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.doomtype
push.v self.dmgwriter
pushi.e -9
pop.v.v [stacktop]self.type

:[32]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [42]

:[33]
pushi.e 0
pop.v.i self.hpi

:[34]
push.v self.hpi
pushi.e 3
cmp.i.v LT
bf [42]

:[35]
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
bf [41]

:[36]
pushi.e -5
push.v self.hpi
conv.v.i
push.v [array]self.charaction
pushi.e 10
cmp.i.v EQ
bf [38]

:[37]
pushi.e -5
push.v self.chartarget
conv.v.i
dup.i 1
push.v [array]self.hp
push.v self.tdamage
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
sub.v.v
pop.i.v [array]self.hp
b [39]

:[38]
pushi.e -5
push.v self.chartarget
conv.v.i
dup.i 1
push.v [array]self.hp
push.v self.tdamage
sub.v.v
pop.i.v [array]self.hp

:[39]
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [41]

:[40]
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

:[41]
push.v self.hpi
pushi.e 1
add.i.v
pop.v.v self.hpi
b [34]

:[42]
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
bf [44]

:[43]
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 0
pop.v.i self.gameover

:[47]
pushi.e -5
pushi.e 1
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [49]

:[48]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 0
pop.v.i self.gameover

:[52]
pushi.e -5
pushi.e 2
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [54]

:[53]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 0
pop.v.i self.gameover

:[57]
push.v self.gameover
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
call.i gml_Script_scr_gameover_ch1(argc=0)
popz.v

:[59]
exit.i

:[60]
push.i [function]gml_Script_scr_damage_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_damage_ch1
popz.v

:[end]