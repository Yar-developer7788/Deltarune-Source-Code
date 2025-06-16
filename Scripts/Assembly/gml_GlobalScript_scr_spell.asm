.localvar 2 arguments
.localvar 7907 yoffy 1419
.localvar 7912 _mistcount 1424
.localvar 7916 minbattlemag 1428
.localvar 7922 healamount 1434
.localvar 6374 __j 1435
.localvar 7925 healanim 1437

:[0]
b [241]

> gml_Script_scr_spell (locals=6, argc=2)
:[1]
push.v arg.argument0
pop.v.v self.spell
push.v arg.argument1
pop.v.v self.caster
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.chartarget
pop.v.v self.star
pushi.e 10
pop.v.i global.spelldelay
push.v self.spell
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [48]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [49]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [56]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [65]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [92]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [99]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [106]

:[8]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [118]

:[9]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [126]

:[10]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [131]

:[11]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [137]

:[12]
dup.v 0
pushi.e 100
cmp.i.v EQ
bt [149]

:[13]
dup.v 0
pushi.e 200
cmp.i.v EQ
bt [166]

:[14]
dup.v 0
pushi.e 201
cmp.i.v EQ
bt [167]

:[15]
dup.v 0
pushi.e 202
cmp.i.v EQ
bt [168]

:[16]
dup.v 0
pushi.e 203
cmp.i.v EQ
bt [171]

:[17]
dup.v 0
pushi.e 204
cmp.i.v EQ
bt [172]

:[18]
dup.v 0
pushi.e 205
cmp.i.v EQ
bt [173]

:[19]
dup.v 0
pushi.e 206
cmp.i.v EQ
bt [174]

:[20]
dup.v 0
pushi.e 207
cmp.i.v EQ
bt [175]

:[21]
dup.v 0
pushi.e 208
cmp.i.v EQ
bt [179]

:[22]
dup.v 0
pushi.e 209
cmp.i.v EQ
bt [180]

:[23]
dup.v 0
pushi.e 210
cmp.i.v EQ
bt [181]

:[24]
dup.v 0
pushi.e 211
cmp.i.v EQ
bt [182]

:[25]
dup.v 0
pushi.e 212
cmp.i.v EQ
bt [183]

:[26]
dup.v 0
pushi.e 213
cmp.i.v EQ
bt [192]

:[27]
dup.v 0
pushi.e 214
cmp.i.v EQ
bt [201]

:[28]
dup.v 0
pushi.e 215
cmp.i.v EQ
bt [202]

:[29]
dup.v 0
pushi.e 216
cmp.i.v EQ
bt [203]

:[30]
dup.v 0
pushi.e 217
cmp.i.v EQ
bt [204]

:[31]
dup.v 0
pushi.e 218
cmp.i.v EQ
bt [205]

:[32]
dup.v 0
pushi.e 219
cmp.i.v EQ
bt [206]

:[33]
dup.v 0
pushi.e 220
cmp.i.v EQ
bt [207]

:[34]
dup.v 0
pushi.e 221
cmp.i.v EQ
bt [208]

:[35]
dup.v 0
pushi.e 222
cmp.i.v EQ
bt [209]

:[36]
dup.v 0
pushi.e 223
cmp.i.v EQ
bt [210]

:[37]
dup.v 0
pushi.e 224
cmp.i.v EQ
bt [211]

:[38]
dup.v 0
pushi.e 225
cmp.i.v EQ
bt [212]

:[39]
dup.v 0
pushi.e 226
cmp.i.v EQ
bt [213]

:[40]
dup.v 0
pushi.e 227
cmp.i.v EQ
bt [217]

:[41]
dup.v 0
pushi.e 228
cmp.i.v EQ
bt [218]

:[42]
dup.v 0
pushi.e 229
cmp.i.v EQ
bt [219]

:[43]
dup.v 0
pushi.e 230
cmp.i.v EQ
bt [220]

:[44]
dup.v 0
pushi.e 231
cmp.i.v EQ
bt [228]

:[45]
dup.v 0
pushi.e 232
cmp.i.v EQ
bt [236]

:[46]
dup.v 0
pushi.e 233
cmp.i.v EQ
bt [239]

:[47]
b [240]

:[48]
b [240]

:[49]
pushi.e 0
pop.v.i self.cancelattack
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
call.i gml_Script_scr_retarget_spell(argc=0)
popz.v

:[51]
push.v self.cancelattack
pushi.e 0
cmp.i.v EQ
bf [55]

:[52]
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.battleat
pushi.e 10
mul.i.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterdf
pushi.e 3
mul.i.v
sub.v.v
call.i ceil(argc=1)
pop.v.v self.damage
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.automiss
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
pushi.e 0
pop.v.i self.damage

:[54]
push.v self.damage
push.v self.star
call.i gml_Script_scr_damage_enemy(argc=2)
popz.v
pushi.e 356
conv.i.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monstery
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterx
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.attack
pushi.e 1370
push.v self.attack
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 8
push.v self.dm
pushi.e -9
pop.v.i [stacktop]self.delay

:[55]
pushi.e 30
pop.v.i global.spelldelay
b [240]

:[56]
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.battlemag
pushi.e 5
mul.i.v
pop.v.v self.healnum
push.v self.healnum
push.v self.star
call.i gml_Script_scr_heal(argc=2)
popz.v
push.i 28543510
setowner.e
push.v self.healnum
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.v [stacktop]self.healnum
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [64]

:[57]
pushi.e 858
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ha
push.v self.id
push.v self.ha
pushi.e -9
pop.v.v [stacktop]self.target
call.i gml_Script_scr_dmgwriter_selfchar(argc=0)
pop.v.v self.dmgwr
push.v self.dmgwr
pushi.e -9
pushenv [59]

:[58]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type

:[59]
popenv [58]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
cmp.v.v GTE
bf [63]

:[60]
push.v self.dmgwr
pushi.e -9
pushenv [62]

:[61]
pushi.e 3
pop.v.i self.specialmessage

:[62]
popenv [61]

:[63]
push.v self.healnum
push.v self.dmgwr
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.tu
pushi.e 1
add.i.v
pop.v.v self.tu

:[64]
popenv [57]
pushi.e 15
pop.v.i global.spelldelay
b [240]

:[65]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [67]

:[66]
call.i gml_Script_scr_retarget_spell(argc=0)
popz.v

:[67]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [91]

:[68]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [88]

:[69]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [87]

:[70]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 19
cmp.i.v NEQ
bf [74]

:[71]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 3
cmp.i.v NEQ
bf [74]

:[72]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 52
cmp.i.v NEQ
bf [74]

:[73]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 43
cmp.i.v NEQ
b [75]

:[74]
push.e 0

:[75]
bf [80]

:[76]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 33
cmp.i.v EQ
bf [78]

:[77]
pushi.e -60
pop.v.i local.yoffy
b [79]

:[78]
pushi.e 0
pop.v.i local.yoffy

:[79]
pushi.e 383
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushloc.v local.yoffy
add.v.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self._pspell
pushi.e 20
push.v self._pspell
pushi.e -9
pop.v.i [stacktop]self.con
push.v self.id
push.v self._pspell
pushi.e -9
pop.v.v [stacktop]self.target
push.i 28542756
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.v [array]self.flag
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v
call.i gml_Script_scr_monsterdefeat(argc=0)
popz.v
b [87]

:[80]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 52
cmp.i.v EQ
bf [82]

:[81]
pushi.e 383
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self._pspell
pushi.e 20
push.v self._pspell
pushi.e -9
pop.v.i [stacktop]self.con
push.v self.id
push.v self._pspell
pushi.e -9
pop.v.v [stacktop]self.target

:[82]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 43
cmp.i.v EQ
bf [86]

:[83]
pushi.e 383
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self._pspell
pushi.e 20
push.v self._pspell
pushi.e -9
pop.v.i [stacktop]self.con
push.v self.id
push.v self._pspell
pushi.e -9
pop.v.v [stacktop]self.target
push.i 28542756
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.v [array]self.flag
pushi.e 484
pushenv [85]

:[84]
pushi.e 1
pop.v.i self.endcon

:[85]
popenv [84]
popenv <drop>
popz.v
exit.i

:[86]
pushi.e 1
pop.v.i self.pacifycon
pushi.e 999
pop.v.i global.spelldelay

:[87]
popenv [70]
b [91]

:[88]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 52
cmp.i.v EQ
bf [90]

:[89]
pushi.e -2
pop.v.i self.pacifycon

:[90]
pushi.e 383
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self._pspell
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterinstance
push.v self._pspell
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1
push.v self._pspell
pushi.e -9
pop.v.i [stacktop]self.fail

:[91]
pushi.e 20
pop.v.i global.spelldelay
b [240]

:[92]
pushi.e 0
pop.v.i self.cancelattack
pushi.e 30
pop.v.i global.spelldelay
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
call.i gml_Script_scr_retarget_spell(argc=0)
popz.v

:[94]
push.v self.cancelattack
pushi.e 0
cmp.i.v EQ
bf [98]

:[95]
pushi.e 70
pop.v.i global.spelldelay
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.battlemag
pushi.e 5
mul.i.v
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.battleat
pushi.e 11
mul.i.v
add.v.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterdf
pushi.e 3
mul.i.v
sub.v.v
call.i ceil(argc=1)
pop.v.v self.damage
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.automiss
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
pushi.e 0
pop.v.i self.damage

:[97]
pushi.e 860
conv.i.v
push.v 373.y
push.v 373.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.attack
push.v self.damage
push.v self.attack
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.star
push.v self.attack
pushi.e -9
pop.v.v [stacktop]self.star
push.v self.caster
push.v self.attack
pushi.e -9
pop.v.v [stacktop]self.caster
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterinstance
push.v self.attack
pushi.e -9
pop.v.v [stacktop]self.target

:[98]
b [240]

:[99]
pushi.e 0
pop.v.i self.cancelattack
pushi.e 30
pop.v.i global.spelldelay
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [101]

:[100]
call.i gml_Script_scr_retarget_spell(argc=0)
popz.v

:[101]
push.v self.cancelattack
pushi.e 0
cmp.i.v EQ
bf [105]

:[102]
pushi.e 70
pop.v.i global.spelldelay
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.battlemag
pushi.e 6
mul.i.v
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.battleat
pushi.e 13
mul.i.v
add.v.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterdf
pushi.e 6
mul.i.v
sub.v.v
call.i ceil(argc=1)
pop.v.v self.damage
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.automiss
pushi.e 1
cmp.i.v EQ
bf [104]

:[103]
pushi.e 0
pop.v.i self.damage

:[104]
pushi.e 860
conv.i.v
push.v 373.y
push.v 373.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.attack
push.v self.damage
push.v self.attack
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.star
push.v self.attack
pushi.e -9
pop.v.v [stacktop]self.star
push.v self.caster
push.v self.attack
pushi.e -9
pop.v.v [stacktop]self.caster
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterinstance
push.v self.attack
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1
push.v self.attack
pushi.e -9
pop.v.i [stacktop]self.red

:[105]
b [240]

:[106]
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.battlemag
push.d 5.5
mul.d.v
call.i ceil(argc=1)
pop.v.v self.healnum
pushi.e 0
pop.v.i self.i

:[107]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [117]

:[108]
push.v self.healnum
push.v self.i
call.i gml_Script_scr_heal(argc=2)
popz.v
push.i 28543510
setowner.e
push.v self.healnum
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.v [stacktop]self.healnum
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [116]

:[109]
pushi.e 858
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ha
push.v self.id
push.v self.ha
pushi.e -9
pop.v.v [stacktop]self.target
call.i gml_Script_scr_dmgwriter_selfchar(argc=0)
pop.v.v self.dmgwr
push.v self.dmgwr
pushi.e -9
pushenv [111]

:[110]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type

:[111]
popenv [110]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
cmp.v.v GTE
bf [115]

:[112]
push.v self.dmgwr
pushi.e -9
pushenv [114]

:[113]
pushi.e 3
pop.v.i self.specialmessage

:[114]
popenv [113]

:[115]
push.v self.healnum
push.v self.dmgwr
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.tu
pushi.e 1
add.i.v
pop.v.v self.tu

:[116]
popenv [109]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [107]

:[117]
pushi.e 15
pop.v.i global.spelldelay
b [240]

:[118]
pushi.e 0
pop.v.i local._mistcount
pushi.e 0
pop.v.i self._spelli

:[119]
push.v self._spelli
pushi.e 3
cmp.i.v LT
bf [125]

:[120]
pushi.e -5
push.v self._spelli
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [124]

:[121]
pushi.e -5
push.v self._spelli
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [123]

:[122]
pushi.e 384
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self._icemist
push.v self.id
push.v self._icemist
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.myself
push.v self._icemist
pushi.e -9
pop.v.v [stacktop]self.myself
pushloc.v local._mistcount
pushi.e 10
mul.i.v
push.v self._icemist
pushi.e -9
pop.v.v [stacktop]self.initdelay
push.v local._mistcount
push.e 1
add.i.v
pop.v.v local._mistcount

:[123]
popenv [122]

:[124]
push.v self._spelli
push.e 1
add.i.v
pop.v.v self._spelli
b [119]

:[125]
pushi.e 20
pushloc.v local._mistcount
pushi.e 10
mul.i.v
add.v.i
pop.v.v global.spelldelay
b [240]

:[126]
pushi.e 0
pop.v.i self.cancelattack
pushi.e 30
pop.v.i global.spelldelay
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [128]

:[127]
call.i gml_Script_scr_retarget_spell(argc=0)
popz.v

:[128]
push.v self.cancelattack
pushi.e 0
cmp.i.v EQ
bf [130]

:[129]
push.i 28542756
setowner.e
pushi.e -5
pushi.e 925
dup.i 1
push.v [array]self.flag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.flag
popz.v
pushi.e 999
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.battlemag
pushi.e 10
sub.i.v
call.i clamp(argc=3)
pop.v.v local.minbattlemag
pushi.e 40
pop.v.i global.spelldelay
pushloc.v local.minbattlemag
pushi.e 30
mul.i.v
pushi.e 90
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
call.i ceil(argc=1)
pop.v.v self.damage
pushi.e 387
conv.i.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monstery
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.attack
push.v self.damage
push.v self.attack
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.star
push.v self.attack
pushi.e -9
pop.v.v [stacktop]self.star
push.v self.caster
push.v self.attack
pushi.e -9
pop.v.v [stacktop]self.caster
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterinstance
push.v self.attack
pushi.e -9
pop.v.v [stacktop]self.target

:[130]
b [240]

:[131]
pushi.e 0
pop.v.i self.cancelattack
pushi.e 30
pop.v.i global.spelldelay
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [133]

:[132]
pushi.e 1
pop.v.i self.cancelattack

:[133]
push.v self.cancelattack
pushi.e 0
cmp.i.v EQ
bf [136]

:[134]
pushi.e 30
pop.v.i global.spelldelay
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.battlemag
pushi.e 40
mul.i.v
pushi.e 600
add.i.v
call.i ceil(argc=1)
pop.v.v self.damage
pushi.e 385
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.attack
push.v self.caster
push.v self.attack
pushi.e -9
pop.v.v [stacktop]self.caster
push.v self.damage
push.v self.attack
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 140
pop.v.i global.spelldelay
pushi.e 485
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [136]

:[135]
push.i 999999
pop.v.i global.spelldelay
pushi.e 1
push.v self.attack
pushi.e -9
pop.v.i [stacktop]self.textwait

:[136]
b [240]

:[137]
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.battlemag
pushi.e 1
add.i.v
pop.v.v self.healnum
push.v self.healnum
push.v self.star
call.i gml_Script_scr_heal(argc=2)
popz.v
push.i 28543510
setowner.e
push.v self.healnum
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.v [stacktop]self.healnum
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [145]

:[138]
pushi.e 858
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ha
push.v self.id
push.v self.ha
pushi.e -9
pop.v.v [stacktop]self.target
call.i gml_Script_scr_dmgwriter_selfchar(argc=0)
pop.v.v self.dmgwr
push.v self.dmgwr
pushi.e -9
pushenv [140]

:[139]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type

:[140]
popenv [139]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
cmp.v.v GTE
bf [144]

:[141]
push.v self.dmgwr
pushi.e -9
pushenv [143]

:[142]
pushi.e 3
pop.v.i self.specialmessage

:[143]
popenv [142]

:[144]
push.v self.healnum
push.v self.dmgwr
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.tu
pushi.e 1
add.i.v
pop.v.v self.tu

:[145]
popenv [138]
pushi.e 15
pop.v.i global.spelldelay
pushglb.v global.encounterno
pushi.e 50
cmp.i.v EQ
bf [148]

:[146]
pushi.e 411
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [148]

:[147]
pushi.e 1
pop.v.i 411.ultimatehealprompt

:[148]
b [240]

:[149]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [151]

:[150]
call.i gml_Script_scr_retarget_spell(argc=0)
popz.v

:[151]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [165]

:[152]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [164]

:[153]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monstertype
pushi.e 3
cmp.i.v NEQ
bf [155]

:[154]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monstertype
pushi.e 52
cmp.i.v NEQ
b [156]

:[155]
push.e 0

:[156]
bf [160]

:[157]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [159]

:[158]
push.i 28542756
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.v [array]self.flag
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v
call.i gml_Script_scr_monsterdefeat(argc=0)
popz.v

:[159]
popenv [158]
b [163]

:[160]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [162]

:[161]
pushi.e 1
pop.v.i self.sparecon

:[162]
popenv [161]

:[163]
b [165]

:[164]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.sparepoint
push.v self.star
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushi.e 383
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self._pspell
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterinstance
push.v self._pspell
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1
push.v self._pspell
pushi.e -9
pop.v.i [stacktop]self.fail
push.i 65535
push.v self._pspell
pushi.e -9
pop.v.i [stacktop]self.flashcolor

:[165]
pushi.e 0
pop.v.i global.spelldelay
b [240]

:[166]
b [240]

:[167]
pushi.e 40
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[168]
pushi.e -5
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.reviveamt
pushi.e -5
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [170]

:[169]
pushi.e -5
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
call.i ceil(argc=1)
pushi.e -5
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
call.i abs(argc=1)
add.v.v
pop.v.v self.reviveamt

:[170]
push.v self.reviveamt
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[171]
b [240]

:[172]
b [240]

:[173]
pushi.e 20
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[174]
pushi.e 160
conv.i.v
call.i gml_Script_scr_healallitemspell(argc=1)
popz.v
b [240]

:[175]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [177]

:[176]
pushi.e 80
conv.i.v
b [178]

:[177]
pushi.e 140
conv.i.v

:[178]
pop.v.v local.healamount
pushloc.v local.healamount
call.i gml_Script_scr_healallitemspell(argc=1)
popz.v
b [240]

:[179]
pushi.e 70
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[180]
pushi.e 50
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[181]
pushi.e 4
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[182]
pushi.e 70
conv.i.v
call.i gml_Script_scr_healallitemspell(argc=1)
popz.v
b [240]

:[183]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [185]

:[184]
pushi.e 20
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v

:[185]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [187]

:[186]
pushi.e 80
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v

:[187]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [189]

:[188]
pushi.e 50
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v

:[189]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [191]

:[190]
pushi.e 30
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v

:[191]
b [240]

:[192]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [194]

:[193]
pushi.e 80
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v

:[194]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [196]

:[195]
pushi.e 20
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v

:[196]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [198]

:[197]
pushi.e 50
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v

:[198]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [200]

:[199]
pushi.e 70
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v

:[200]
b [240]

:[201]
pushi.e 500
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[202]
pushi.e 50
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[203]
pushi.e 80
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[204]
b [240]

:[205]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 1
conv.i.v
call.i gml_Script_scr_teaamount(argc=2)
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[206]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 4
conv.i.v
call.i gml_Script_scr_teaamount(argc=2)
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[207]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 3
conv.i.v
call.i gml_Script_scr_teaamount(argc=2)
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[208]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 2
conv.i.v
call.i gml_Script_scr_teaamount(argc=2)
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[209]
pushi.e 60
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[210]
pushi.e 120
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[211]
pushi.e 100
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[212]
pushi.e 30
conv.i.v
call.i gml_Script_scr_healallitemspell(argc=1)
popz.v
b [240]

:[213]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [215]

:[214]
pushi.e 100
conv.i.v
b [216]

:[215]
pushi.e 90
conv.i.v

:[216]
pop.v.v local.healamount
pushloc.v local.healamount
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
b [240]

:[217]
b [240]

:[218]
b [240]

:[219]
b [240]

:[220]
pushi.e 10
pop.v.i local.healamount
pushi.e 0
pop.v.i local.__j

:[221]
pushloc.v local.__j
pushi.e 3
cmp.i.v LT
bf [227]

:[222]
pushi.e -5
pushloc.v local.__j
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v GT
bf [226]

:[223]
pushi.e 10
pop.v.i local.healamount
pushloc.v local.__j
pop.v.v self.star
pushi.e -5
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [225]

:[224]
pushi.e -5
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
pushi.e 4
conv.i.d
div.d.v
call.i ceil(argc=1)
pushi.e -5
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
call.i abs(argc=1)
add.v.v
pop.v.v local.healamount

:[225]
pushloc.v local.healamount
call.i gml_Script_scr_healitemspell(argc=1)
popz.v

:[226]
push.v local.__j
push.e 1
add.i.v
pop.v.v local.__j
b [221]

:[227]
b [240]

:[228]
pushi.e 50
pop.v.i local.healamount
pushi.e 0
pop.v.i local.__j

:[229]
pushloc.v local.__j
pushi.e 3
cmp.i.v LT
bf [235]

:[230]
pushi.e -5
pushloc.v local.__j
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v GT
bf [234]

:[231]
pushi.e 50
pop.v.i local.healamount
pushloc.v local.__j
pop.v.v self.star
pushi.e -5
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [233]

:[232]
pushi.e 999
pop.v.i local.healamount

:[233]
pushloc.v local.healamount
call.i gml_Script_scr_healitemspell(argc=1)
popz.v

:[234]
push.v local.__j
push.e 1
add.i.v
pop.v.v local.__j
b [229]

:[235]
b [240]

:[236]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.charinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [238]

:[237]
push.i 28543528
setowner.e
pushi.e 60
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.i [stacktop]self.poisonamount

:[238]
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
pop.v.v local.healanim
push.i 16711935
pushloc.v local.healanim
pushi.e -9
pop.v.i [stacktop]self.particlecolor
b [240]

:[239]
b [240]

:[240]
popz.v
exit.i

:[241]
push.i [function]gml_Script_scr_spell
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_spell
popz.v

:[end]