.localvar 2 arguments

:[0]
push.v self.bodymode
pushi.e 0
cmp.i.v EQ
bf [37]

:[1]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [16]

:[2]
push.d 0.5
conv.d.v
call.i gml_Script_scr_enemyhurt_tired_after_damage(argc=1)
popz.v
push.v self.hurttimer
pushi.e 1
sub.i.v
pop.v.v self.hurttimer
push.v self.hurttimer
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v GT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 0
pop.v.i self.state
b [16]

:[7]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.idlesprite
pop.v.v self.hurtsprite

:[9]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [15]

:[10]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[12]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [14]

:[13]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[14]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

:[15]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.hurtspriteoffy
add.v.v
push.v self.x
push.v self.shakex
add.v.v
push.v self.hurtspriteoffx
add.v.v
pushi.e 0
conv.i.v
push.v self.hurtsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[16]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1830
pop.v.i self.idlesprite
pushi.e 0
pop.v.i self.shakeamt

:[18]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1829
pop.v.i self.idlesprite
pushi.e 0
pop.v.i self.shakeamt

:[20]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1840
pop.v.i self.idlesprite
pushi.e 2
pop.v.i self.shakeamt

:[22]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [24]

:[23]
pushi.e 124
pop.v.i self.idlesprite
pushi.e 2
pop.v.i self.shakeamt

:[24]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 4
cmp.i.v EQ
bf [26]

:[25]
pushi.e 128
pop.v.i self.idlesprite
pushi.e 0
pop.v.i self.shakeamt

:[26]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 5
cmp.i.v EQ
bf [28]

:[27]
pushi.e 122
pop.v.i self.idlesprite
pushi.e 2
pop.v.i self.shakeamt

:[28]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [30]

:[29]
pushi.e 121
pop.v.i self.idlesprite
pushi.e 2
pop.v.i self.shakeamt

:[30]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [34]

:[31]
push.v self.shakeamt
pushi.e 0
cmp.i.v GT
bf [33]

:[32]
push.v self.remx
push.v self.shakeamt
push.v self.shakeamt
neg.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.x
push.v self.remy
push.v self.shakeamt
push.v self.shakeamt
neg.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.y
b [34]

:[33]
push.v self.remx
pop.v.v self.x
push.v self.remy
pop.v.v self.y

:[34]
push.d 0.16666666666666666
conv.d.v
call.i gml_Script_scr_enemy_drawidle_generic(argc=1)
popz.v
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 0
pop.v.i self.flash

:[36]
pushi.e 0
pop.v.i self.becomeflash

:[37]
push.v self.bodymode
pushi.e 1
cmp.i.v EQ
bf [59]

:[38]
push.v self.bodycon
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushi.e 0
pop.v.i self.bodytimer
pushi.e 1
pop.v.i self.bodycon

:[40]
push.v self.bodycon
pushi.e 1
cmp.i.v EQ
bf [49]

:[41]
push.v self.bodytimer
pushi.e 16
cmp.i.v LTE
bf [43]

:[42]
push.v self.bodytimer
push.e 1
add.i.v
pop.v.v self.bodytimer

:[43]
push.v self.bodytimer
pushi.e 16
cmp.i.v GTE
bf [45]

:[44]
push.v self.bodyadvance
pushi.e 1
cmp.i.v EQ
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 0
pop.v.i self.bodyadvance
pushi.e 0
pop.v.i self.bodysiner
pushi.e 0
pop.v.i self.bodytimer
pushi.e 2
pop.v.i self.bodycon
b [49]

:[48]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_xscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.bodytimer
pushi.e 3
conv.i.d
div.d.v
pushi.e 1843
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[49]
push.v self.bodycon
pushi.e 2
cmp.i.v EQ
bf [55]

:[50]
push.v self.bodysiner
push.e 1
add.i.v
pop.v.v self.bodysiner
push.v self.x
pushi.e 12
sub.i.v
push.v self.headpiece
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.bodysiner
call.i sin(argc=1)
pushi.e 6
mul.i.v
add.v.v
pushi.e 94
sub.i.v
push.v self.headpiece
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.bodyadvance
pushi.e 1
cmp.i.v EQ
bf [54]

:[51]
pushi.e 0
pop.v.i self.bodyadvance
pushi.e 16
pop.v.i self.bodytimer
pushi.e 3
pop.v.i self.bodycon
push.v self.headpiece
pushi.e -9
pushenv [53]

:[52]
pushi.e -999
pop.v.i self.x

:[53]
popenv [52]
b [55]

:[54]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_xscale
push.v self.image_xscale
push.v self.y
pushi.e 94
sub.i.v
push.v self.x
pushi.e 12
sub.i.v
pushi.e 0
conv.i.v
pushi.e 1839
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_xscale
push.v self.image_xscale
push.v self.y
pushi.e 104
sub.i.v
push.v self.bodysiner
call.i sin(argc=1)
pushi.e 4
mul.i.v
sub.v.v
push.v self.x
pushi.e 12
sub.i.v
pushi.e 0
conv.i.v
pushi.e 1838
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[55]
push.v self.bodycon
pushi.e 3
cmp.i.v EQ
bf [59]

:[56]
push.v self.bodytimer
push.e 1
sub.i.v
pop.v.v self.bodytimer
push.v self.bodytimer
pushi.e 0
cmp.i.v LTE
bf [58]

:[57]
pushi.e 0
pop.v.i self.bodyadvance
pushi.e 0
pop.v.i self.bodysiner
pushi.e 0
pop.v.i self.bodytimer
pushi.e 0
pop.v.i self.bodycon
pushi.e 0
pop.v.i self.bodymode

:[58]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_xscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.bodytimer
pushi.e 3
conv.i.d
div.d.v
pushi.e 1843
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[59]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[60]
pushi.e 66
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [64]

:[61]
push.v self.bodymode
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
pushi.e 1
pop.v.i self.bodymode
b [64]

:[63]
pushi.e 0
pop.v.i self.bodymode
pushi.e -999
push.v self.headpiece
pushi.e -9
pop.v.i [stacktop]self.x

:[64]
pushi.e 78
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [66]

:[65]
pushi.e 1
pop.v.i self.bodyadvance

:[66]
pushi.e 49
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [68]

:[67]
pushi.e 0
pop.v.i self.bulletoverride

:[68]
pushi.e 50
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [70]

:[69]
pushi.e 1
pop.v.i self.bulletoverride

:[70]
pushi.e 51
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [72]

:[71]
pushi.e 2
pop.v.i self.bulletoverride

:[72]
pushi.e 48
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[73]
pushi.e -1
pop.v.i self.bulletoverride

:[end]