.localvar 2 arguments

:[0]
b [128]

> gml_Script_scr_spell_ch1 (locals=0, argc=2)
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
bt [26]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [27]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [34]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [43]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [57]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [64]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [71]

:[8]
dup.v 0
pushi.e 100
cmp.i.v EQ
bt [83]

:[9]
dup.v 0
pushi.e 200
cmp.i.v EQ
bt [97]

:[10]
dup.v 0
pushi.e 201
cmp.i.v EQ
bt [98]

:[11]
dup.v 0
pushi.e 202
cmp.i.v EQ
bt [99]

:[12]
dup.v 0
pushi.e 203
cmp.i.v EQ
bt [102]

:[13]
dup.v 0
pushi.e 204
cmp.i.v EQ
bt [103]

:[14]
dup.v 0
pushi.e 205
cmp.i.v EQ
bt [104]

:[15]
dup.v 0
pushi.e 206
cmp.i.v EQ
bt [105]

:[16]
dup.v 0
pushi.e 207
cmp.i.v EQ
bt [106]

:[17]
dup.v 0
pushi.e 208
cmp.i.v EQ
bt [107]

:[18]
dup.v 0
pushi.e 209
cmp.i.v EQ
bt [108]

:[19]
dup.v 0
pushi.e 210
cmp.i.v EQ
bt [109]

:[20]
dup.v 0
pushi.e 211
cmp.i.v EQ
bt [110]

:[21]
dup.v 0
pushi.e 212
cmp.i.v EQ
bt [111]

:[22]
dup.v 0
pushi.e 213
cmp.i.v EQ
bt [118]

:[23]
dup.v 0
pushi.e 214
cmp.i.v EQ
bt [125]

:[24]
dup.v 0
pushi.e 215
cmp.i.v EQ
bt [126]

:[25]
b [127]

:[26]
b [127]

:[27]
pushi.e 0
pop.v.i self.cancelattack
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
call.i gml_Script_scr_retarget_spell_ch1(argc=0)
popz.v

:[29]
push.v self.cancelattack
pushi.e 0
cmp.i.v EQ
bf [33]

:[30]
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
bf [32]

:[31]
pushi.e 0
pop.v.i self.damage

:[32]
push.v self.damage
push.v self.star
call.i gml_Script_scr_damage_enemy_ch1(argc=2)
popz.v
pushi.e 1516
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
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.attack
pushi.e 3780
push.v self.attack
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 8
push.v self.dm
pushi.e -9
pop.v.i [stacktop]self.delay

:[33]
pushi.e 30
pop.v.i global.spelldelay
b [127]

:[34]
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.battlemag
pushi.e 5
mul.i.v
pop.v.v self.healnum
push.v self.healnum
push.v self.star
call.i gml_Script_scr_heal_ch1(argc=2)
popz.v
push.i 118721046
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
pushenv [42]

:[35]
pushi.e 1622
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.ha
push.v self.id
push.v self.ha
pushi.e -9
pop.v.v [stacktop]self.target
call.i gml_Script_scr_dmgwriter_selfchar_ch1(argc=0)
pop.v.v self.dmgwr
push.v self.dmgwr
pushi.e -9
pushenv [37]

:[36]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type

:[37]
popenv [36]
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
bf [41]

:[38]
push.v self.dmgwr
pushi.e -9
pushenv [40]

:[39]
pushi.e 3
pop.v.i self.specialmessage

:[40]
popenv [39]

:[41]
push.v self.healnum
push.v self.dmgwr
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.tu
pushi.e 1
add.i.v
pop.v.v self.tu

:[42]
popenv [35]
pushi.e 15
pop.v.i global.spelldelay
b [127]

:[43]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
call.i gml_Script_scr_retarget_spell_ch1(argc=0)
popz.v

:[45]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [56]

:[46]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [55]

:[47]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [54]

:[48]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 19
cmp.i.v NEQ
bf [50]

:[49]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 3
cmp.i.v NEQ
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
push.i 118720292
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
call.i gml_Script_scr_monsterdefeat_ch1(argc=0)
popz.v
b [54]

:[53]
pushi.e 1
pop.v.i self.pacifycon
pushi.e 999
pop.v.i global.spelldelay

:[54]
popenv [48]
b [56]

:[55]
pushi.e 1619
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
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

:[56]
pushi.e 20
pop.v.i global.spelldelay
b [127]

:[57]
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
bf [59]

:[58]
call.i gml_Script_scr_retarget_spell_ch1(argc=0)
popz.v

:[59]
push.v self.cancelattack
pushi.e 0
cmp.i.v EQ
bf [63]

:[60]
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
bf [62]

:[61]
pushi.e 0
pop.v.i self.damage

:[62]
pushi.e 1624
conv.i.v
push.v 1535.y
push.v 1535.x
call.i gml_Script_instance_create_ch1(argc=3)
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

:[63]
b [127]

:[64]
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
bf [66]

:[65]
call.i gml_Script_scr_retarget_spell_ch1(argc=0)
popz.v

:[66]
push.v self.cancelattack
pushi.e 0
cmp.i.v EQ
bf [70]

:[67]
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
bf [69]

:[68]
pushi.e 0
pop.v.i self.damage

:[69]
pushi.e 1624
conv.i.v
push.v 1535.y
push.v 1535.x
call.i gml_Script_instance_create_ch1(argc=3)
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

:[70]
b [127]

:[71]
pushi.e -5
push.v arg.argument1
conv.v.i
push.v [array]self.battlemag
pushi.e 4
mul.i.v
pop.v.v self.healnum
pushi.e 0
pop.v.i self.i

:[72]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [82]

:[73]
push.v self.healnum
push.v self.i
call.i gml_Script_scr_heal_ch1(argc=2)
popz.v
push.i 118721046
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
pushenv [81]

:[74]
pushi.e 1622
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.ha
push.v self.id
push.v self.ha
pushi.e -9
pop.v.v [stacktop]self.target
call.i gml_Script_scr_dmgwriter_selfchar_ch1(argc=0)
pop.v.v self.dmgwr
push.v self.dmgwr
pushi.e -9
pushenv [76]

:[75]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type

:[76]
popenv [75]
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
bf [80]

:[77]
push.v self.dmgwr
pushi.e -9
pushenv [79]

:[78]
pushi.e 3
pop.v.i self.specialmessage

:[79]
popenv [78]

:[80]
push.v self.healnum
push.v self.dmgwr
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.tu
pushi.e 1
add.i.v
pop.v.v self.tu

:[81]
popenv [74]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [72]

:[82]
pushi.e 15
pop.v.i global.spelldelay
b [127]

:[83]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [85]

:[84]
call.i gml_Script_scr_retarget_spell_ch1(argc=0)
popz.v

:[85]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [96]

:[86]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [95]

:[87]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monstertype
pushi.e 3
cmp.i.v NEQ
bf [91]

:[88]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [90]

:[89]
push.i 118720292
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
call.i gml_Script_scr_monsterdefeat_ch1(argc=0)
popz.v

:[90]
popenv [89]
b [94]

:[91]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [93]

:[92]
pushi.e 1
pop.v.i self.sparecon

:[93]
popenv [92]

:[94]
b [96]

:[95]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.sparepoint
push.v self.star
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v
pushi.e 1619
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
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

:[96]
pushi.e 0
pop.v.i global.spelldelay
b [127]

:[97]
b [127]

:[98]
pushi.e 40
conv.i.v
call.i gml_Script_scr_healitemspell_ch1(argc=1)
popz.v
b [127]

:[99]
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
bf [101]

:[100]
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

:[101]
push.v self.reviveamt
call.i gml_Script_scr_healitemspell_ch1(argc=1)
popz.v
b [127]

:[102]
b [127]

:[103]
b [127]

:[104]
pushi.e 20
conv.i.v
call.i gml_Script_scr_healitemspell_ch1(argc=1)
popz.v
b [127]

:[105]
pushi.e 160
conv.i.v
call.i gml_Script_scr_healallitemspell_ch1(argc=1)
popz.v
b [127]

:[106]
pushi.e 80
conv.i.v
call.i gml_Script_scr_healallitemspell_ch1(argc=1)
popz.v
b [127]

:[107]
pushi.e 70
conv.i.v
call.i gml_Script_scr_healitemspell_ch1(argc=1)
popz.v
b [127]

:[108]
pushi.e 50
conv.i.v
call.i gml_Script_scr_healitemspell_ch1(argc=1)
popz.v
b [127]

:[109]
pushi.e 4
conv.i.v
call.i gml_Script_scr_healitemspell_ch1(argc=1)
popz.v
b [127]

:[110]
pushi.e 30
conv.i.v
call.i gml_Script_scr_healallitemspell_ch1(argc=1)
popz.v
b [127]

:[111]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [113]

:[112]
pushi.e 10
conv.i.v
call.i gml_Script_scr_healitemspell_ch1(argc=1)
popz.v

:[113]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [115]

:[114]
pushi.e 90
conv.i.v
call.i gml_Script_scr_healitemspell_ch1(argc=1)
popz.v

:[115]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [117]

:[116]
pushi.e 60
conv.i.v
call.i gml_Script_scr_healitemspell_ch1(argc=1)
popz.v

:[117]
b [127]

:[118]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [120]

:[119]
pushi.e 80
conv.i.v
call.i gml_Script_scr_healitemspell_ch1(argc=1)
popz.v

:[120]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [122]

:[121]
pushi.e 30
conv.i.v
call.i gml_Script_scr_healitemspell_ch1(argc=1)
popz.v

:[122]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [124]

:[123]
pushi.e 30
conv.i.v
call.i gml_Script_scr_healitemspell_ch1(argc=1)
popz.v

:[124]
b [127]

:[125]
pushi.e 500
conv.i.v
call.i gml_Script_scr_healitemspell_ch1(argc=1)
popz.v
b [127]

:[126]
pushi.e 60
conv.i.v
call.i gml_Script_scr_healitemspell_ch1(argc=1)
popz.v
b [127]

:[127]
popz.v
exit.i

:[128]
push.i [function]gml_Script_scr_spell_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_spell_ch1
popz.v

:[end]