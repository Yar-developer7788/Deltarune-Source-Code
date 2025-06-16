.localvar 2 arguments
.localvar 6523 _targetChar 813

:[0]
b [66]

> gml_Script_scr_damage_proportional (locals=1, argc=0)
:[1]
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [65]

:[2]
push.v self.target
pushi.e 4
cmp.i.v EQ
bf [4]

:[3]
call.i gml_Script_scr_randomtarget_old(argc=0)
popz.v
push.v self.mytarget
pop.v.v self.target

:[4]
push.v self.target
pushi.e 3
cmp.i.v LT
bf [9]

:[5]
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [9]

:[6]
call.i gml_Script_scr_randomtarget_old(argc=0)
popz.v
push.v self.mytarget
pop.v.v self.target
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [8]

:[7]
push.i 16777215
pop.v.i self.image_blend
pushi.e 0
pop.v.i self.darkify

:[8]
popenv [7]

:[9]
pushi.e 3
pop.v.i self.chartarget
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
pop.v.v local._targetChar
pushi.e -5
pushloc.v local._targetChar
conv.v.i
push.v [array]self.hp
pushi.e -5
pushloc.v local._targetChar
conv.v.i
push.v [array]self.maxhp
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [11]

:[10]
pushi.e -5
pushloc.v local._targetChar
conv.v.i
push.v [array]self.maxhp
pushi.e 5
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.tdamage
b [18]

:[11]
pushi.e -5
pushloc.v local._targetChar
conv.v.i
push.v [array]self.hp
pushi.e -5
pushloc.v local._targetChar
conv.v.i
push.v [array]self.maxhp
pushi.e 5
conv.i.d
div.d.v
cmp.v.v GT
bf [13]

:[12]
pushi.e -5
pushloc.v local._targetChar
conv.v.i
push.v [array]self.maxhp
pushi.e 10
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.tdamage
b [18]

:[13]
pushi.e -5
pushloc.v local._targetChar
conv.v.i
push.v [array]self.hp
pushi.e -5
pushloc.v local._targetChar
conv.v.i
push.v [array]self.maxhp
pushi.e 20
conv.i.d
div.d.v
cmp.v.v GT
bf [15]

:[14]
pushi.e -5
pushloc.v local._targetChar
conv.v.i
push.v [array]self.maxhp
pushi.e 25
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.tdamage
b [18]

:[15]
pushi.e -5
pushloc.v local._targetChar
conv.v.i
push.v [array]self.hp
pushi.e 1
cmp.i.v GT
bf [17]

:[16]
pushi.e -5
pushloc.v local._targetChar
conv.v.i
push.v [array]self.hp
pushi.e 1
sub.i.v
pop.v.v self.tdamage
b [18]

:[17]
pushi.e 25
pop.v.i self.tdamage

:[18]
push.v self.target
pushi.e 3
cmp.i.v LT
bf [23]

:[19]
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
bf [21]

:[20]
pushi.e 2
push.v self.tdamage
mul.v.i
pushi.e 3
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.tdamage

:[21]
push.v self.tdamage
pushi.e 1
cmp.i.v LT
bf [23]

:[22]
pushi.e 1
pop.v.i self.tdamage

:[23]
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [25]

:[24]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[25]
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [27]

:[26]
pushi.e 1
pop.v.i self.hurt
pushi.e 0
pop.v.i self.hurttimer

:[27]
popenv [26]
push.v self.tdamage
pop.v.v self.hpdiff
pushi.e 873
pushenv [30]

:[28]
push.v self.delaytimer
pushi.e 1
cmp.i.v GTE
bf [30]

:[29]
pushi.e 1
pop.v.i self.killactive

:[30]
popenv [28]
pushi.e -1
pop.v.i self.doomtype
pushi.e 631
pushenv [32]

:[31]
pushi.e 1
pop.v.i self.dmgnoise

:[32]
popenv [31]
push.v self.target
pushi.e 3
cmp.i.v LT
bf [38]

:[33]
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [35]

:[34]
pushi.e 4
pop.v.i self.doomtype
push.i 16090843
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
b [37]

:[35]
push.i 16090843
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
bf [37]

:[36]
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

:[37]
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

:[38]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [48]

:[39]
pushi.e 0
pop.v.i self.hpi

:[40]
push.v self.hpi
pushi.e 3
cmp.i.v LT
bf [48]

:[41]
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
bf [47]

:[42]
pushi.e -5
push.v self.hpi
conv.v.i
push.v [array]self.charaction
pushi.e 10
cmp.i.v EQ
bf [44]

:[43]
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
b [45]

:[44]
pushi.e -5
push.v self.chartarget
conv.v.i
dup.i 1
push.v [array]self.hp
push.v self.tdamage
sub.v.v
pop.i.v [array]self.hp

:[45]
pushi.e -5
push.v self.chartarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [47]

:[46]
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

:[47]
push.v self.hpi
pushi.e 1
add.i.v
pop.v.v self.hpi
b [40]

:[48]
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
bf [50]

:[49]
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 0
pop.v.i self.gameover

:[53]
pushi.e -5
pushi.e 1
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [55]

:[54]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 0
pop.v.i self.gameover

:[58]
pushi.e -5
pushi.e 2
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [60]

:[59]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
pushi.e 0
pop.v.i self.gameover

:[63]
push.v self.gameover
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
call.i gml_Script_scr_gameover(argc=0)
popz.v

:[65]
exit.i

:[66]
push.i [function]gml_Script_scr_damage_proportional
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_damage_proportional
popz.v

:[end]