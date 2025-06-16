.localvar 2 arguments
.localvar 21689 queenshield 9751
.localvar 7017 a 9756

:[0]
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction
push.v self.myself
call.i gml_Script_scr_retarget(argc=1)
popz.v
push.v self.cancelattack
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 873
conv.i.v
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monstery
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.hittarget
pushi.e 20
mul.i.v
sub.v.v
pushi.e 20
add.i.v
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dm
push.v self.char
pushi.e 1
sub.i.v
push.v self.dm
pushi.e -9
pop.v.v [stacktop]self.type
push.v self.char
pushi.e 4
cmp.i.v EQ
bf [3]

:[2]
pushi.e 6
push.v self.dm
pushi.e -9
pop.v.i [stacktop]self.type

:[3]
pushi.e 8
push.v self.dm
pushi.e -9
pop.v.i [stacktop]self.delay
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [6]

:[4]
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.v 697.weirdpathendcon
pushi.e 0
cmp.i.v GT
b [7]

:[6]
push.e 0

:[7]
bf [13]

:[8]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.battleat
push.v self.points
mul.v.v
pushi.e 150
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v self.damage
push.v self.damage
pushi.e 5
cmp.i.v LT
bf [10]

:[9]
pushi.e 5
pop.v.i self.damage

:[10]
push.v self.damage
pushi.e 10
cmp.i.v GT
bf [12]

:[11]
pushi.e 10
pop.v.i self.damage

:[12]
b [14]

:[13]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.battleat
push.v self.points
mul.v.v
pushi.e 20
conv.i.d
div.d.v
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monsterdf
pushi.e 3
mul.i.v
sub.v.v
call.i round(argc=1)
pop.v.v self.damage

:[14]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monstertype
pushi.e 19
cmp.i.v EQ
bf [16]

:[15]
push.v self.damage
push.d 0.3
mul.d.v
call.i ceil(argc=1)
pop.v.v self.damage

:[16]
push.v self.damage
pushi.e 0
cmp.i.v LT
bf [18]

:[17]
pushi.e 0
pop.v.i self.damage

:[18]
push.v self.damage
pushi.e 0
cmp.i.v EQ
bf [26]

:[19]
pushi.e 2
push.v self.dm
pushi.e -9
pop.v.i [stacktop]self.delay
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [25]

:[20]
push.v self.hurttimer
pushi.e 15
cmp.i.v LTE
bf [22]

:[21]
push.v self.candodge
pushi.e 1
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 0
pop.v.i self.dodgetimer
pushi.e 4
pop.v.i self.state

:[25]
popenv [20]

:[26]
push.v self.damage
push.v self.dm
pushi.e -9
pop.v.v [stacktop]self.damage
push.i 231593
setowner.e
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
dup.i 1
push.v [array]self.hittarget
pushi.e 1
add.i.v
pop.i.v [array]self.hittarget
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
pushi.e 0
pop.v.i local.queenshield

:[28]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [30]

:[29]
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [31]

:[30]
push.e 0

:[31]
bf [39]

:[32]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [34]

:[33]
push.v 574.shieldhp
push.v self.damage
sub.v.v
pop.v.v 574.shieldhp
pushi.e 1
pop.v.i local.queenshield
b [38]

:[34]
push.i 231862
setowner.e
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
dup.i 1
push.v [array]self.monsterhp
push.v self.damage
sub.v.v
pop.i.v [array]self.monsterhp
push.v self.damage
pushi.e 0
cmp.i.v NEQ
bf [38]

:[35]
pushi.e 574
pushenv [37]

:[36]
pushi.e 1
pop.v.i self.shieldbrokecon

:[37]
popenv [36]

:[38]
b [40]

:[39]
push.i 231862
setowner.e
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
dup.i 1
push.v [array]self.monsterhp
push.v self.damage
sub.v.v
pop.i.v [array]self.monsterhp

:[40]
push.v self.is_auto_susie
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v LTE
b [43]

:[42]
push.e 0

:[43]
bf [47]

:[44]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
pushi.e -9
pushenv [46]

:[45]
push.i 231204
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.v [array]self.flag

:[46]
popenv [45]

:[47]
push.v self.damage
pushi.e 0
cmp.i.v GT
bf [90]

:[48]
pushi.e -5
pushi.e 0
push.v [array]self.monstertype
pushi.e 20
cmp.i.v NEQ
bf [50]

:[49]
push.v self.points
pushi.e 10
conv.i.d
div.d.v
call.i round(argc=1)
call.i gml_Script_scr_tensionheal(argc=1)
popz.v

:[50]
pushi.e -5
pushi.e 0
push.v [array]self.monstertype
pushi.e 20
cmp.i.v EQ
bf [52]

:[51]
push.v self.points
pushi.e 15
conv.i.d
div.d.v
call.i round(argc=1)
call.i gml_Script_scr_tensionheal(argc=1)
popz.v

:[52]
pushi.e 356
conv.i.v
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monstery
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monsterx
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.attack
push.v self.object_index
pushi.e 373
cmp.i.v EQ
bf [54]

:[53]
pushi.e 1371
push.v self.attack
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.5
push.v self.attack
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 4
push.v self.attack
pushi.e -9
pop.v.i [stacktop]self.maxindex
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[54]
push.v self.object_index
pushi.e 374
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1372
push.v self.attack
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 4
push.v self.attack
pushi.e -9
pop.v.i [stacktop]self.maxindex
push.d 0.5
push.v self.attack
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[56]
push.v self.object_index
pushi.e 375
cmp.i.v EQ
bf [58]

:[57]
pushi.e 1373
push.v self.attack
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 4
push.v self.attack
pushi.e -9
pop.v.i [stacktop]self.maxindex
push.d 0.5
push.v self.attack
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[58]
push.v self.points
pushi.e 150
cmp.i.v EQ
bf [60]

:[59]
push.d 2.5
push.v self.attack
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 2.5
push.v self.attack
pushi.e -9
pop.v.d [stacktop]self.image_yscale

:[60]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [62]

:[61]
pushloc.v local.queenshield
pushi.e 1
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [71]

:[64]
pushi.e 356
pushenv [66]

:[65]
push.v 577.x
pushi.e 34
add.i.v
pop.v.v self.x

:[66]
popenv [65]
push.v self.damage
pushi.e 0
cmp.i.v NEQ
bf [70]

:[67]
pushi.e 577
pushenv [69]

:[68]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[69]
popenv [68]

:[70]
b [88]

:[71]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [73]

:[72]
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [74]

:[73]
push.e 0

:[74]
bf [78]

:[75]
pushi.e 356
pushenv [77]

:[76]
push.v 574.x
pushi.e 62
add.i.v
pop.v.v self.x

:[77]
popenv [76]

:[78]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [80]

:[79]
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [81]

:[80]
push.e 0

:[81]
bf [85]

:[82]
pushi.e 697
pushenv [84]

:[83]
pushi.e 40
pop.v.i self.partmode
pushi.e 15
pop.v.i self.shockthreshold
pushi.e 9999
pop.v.i self.shocktimer
pushi.e 10
pop.v.i self.hurttimer2

:[84]
popenv [83]

:[85]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [87]

:[86]
pushi.e 9
pop.v.i self.shakex
pushi.e 3
pop.v.i self.state
pushi.e 30
pop.v.i self.hurttimer

:[87]
popenv [86]

:[88]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monsterinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [90]

:[89]
push.i 231863
setowner.e
push.v self.damage
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.hurtamt

:[90]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [92]

:[91]
pushloc.v local.queenshield
pushi.e 1
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
push.v 577.x
push.v self.dm
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.dm
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
sub.i.v
push.v self.dm
pushi.e -9
pop.v.v [stacktop]self.depth

:[95]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [98]

:[96]
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [98]

:[97]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v LTE
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
push.i 231862
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
pop.v.v [array]self.monsterhp

:[101]
pushi.e 0
pop.v.i local.a
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [103]

:[102]
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
pushi.e 1
pop.v.i local.a

:[106]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [108]

:[107]
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
pushi.e 2
pop.v.i local.a

:[111]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [113]

:[112]
pushi.e 484
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [114]

:[113]
push.e 0

:[114]
bf [116]

:[115]
pushi.e 3
pop.v.i local.a

:[116]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v LTE
bf [118]

:[117]
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
b [119]

:[118]
push.e 0

:[119]
bf [123]

:[120]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [122]

:[121]
call.i gml_Script_scr_monsterdefeat(argc=0)
popz.v

:[122]
popenv [121]

:[123]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [126]

:[124]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v LTE
bf [126]

:[125]
pushloc.v local.a
pushi.e 3
cmp.i.v EQ
b [127]

:[126]
push.e 0

:[127]
bf [end]

:[128]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.chartarget
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [130]

:[129]
pushi.e 1
pop.v.i self.endcon

:[130]
popenv [129]

:[end]