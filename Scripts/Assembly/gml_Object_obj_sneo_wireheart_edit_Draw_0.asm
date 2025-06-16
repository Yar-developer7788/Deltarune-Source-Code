.localvar 2 arguments
.localvar 6482 xx 6181
.localvar 14367 hidesprite 6182

:[0]
push.v self.boss
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 50
push.v self.boss
pushi.e -9
push.v [stacktop]self.heart_release_con
pushi.e 100
mul.i.v
sub.v.i
pop.v.v local.xx
pushglb.v global.turntimer
pushi.e 20
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pop.v.i local.xx

:[3]
push.d 0.16
conv.d.v
push.v self.boss
pushi.e -9
push.v [stacktop]self.x
pushloc.v local.xx
add.v.v
push.v self.rembossx
call.i lerp(argc=3)
pop.v.v self.rembossx
push.v self.boss
pushi.e -9
push.v [stacktop]self.y
pushi.e 80
add.i.v
pop.v.v self.rembossy

:[4]
push.v self.destroyed
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.invincibility_timer

:[6]
pushi.e 0
pop.v.i local.hidesprite
push.v self.invincibility_timer
pushi.e 0
cmp.i.v GT
bf [17]

:[7]
push.v self.invincibility_timer
pushi.e 10
cmp.i.v EQ
bt [13]

:[8]
push.v self.invincibility_timer
pushi.e 9
cmp.i.v EQ
bt [13]

:[9]
push.v self.invincibility_timer
pushi.e 6
cmp.i.v EQ
bt [13]

:[10]
push.v self.invincibility_timer
pushi.e 5
cmp.i.v EQ
bt [13]

:[11]
push.v self.invincibility_timer
pushi.e 3
cmp.i.v EQ
bt [13]

:[12]
push.v self.invincibility_timer
pushi.e 2
cmp.i.v EQ
b [14]

:[13]
push.e 1

:[14]
bf [16]

:[15]
pushi.e 1
pop.v.i local.hidesprite

:[16]
push.v self.invincibility_timer
push.e 1
sub.i.v
pop.v.v self.invincibility_timer

:[17]
pushloc.v local.hidesprite
pushi.e 0
cmp.i.v EQ
bf [43]

:[18]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [21]

:[19]
push.v self.altbiter
pushi.e 0
cmp.i.v GT
bf [21]

:[20]
push.v self.altbiter
pushi.e 3
cmp.i.v LT
b [22]

:[21]
push.e 0

:[22]
bf [32]

:[23]
push.v self.altbiter
pushi.e 1
cmp.i.v EQ
bf [28]

:[24]
pushi.e 6
pop.v.i self.i

:[25]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [27]

:[26]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.d 0.75
conv.d.v
push.d 0.75
conv.d.v
push.v self.i
push.v self.hpos
div.v.v
push.v self.rembossy
push.v self.y
call.i lerp(argc=3)
push.v self.i
pushi.e 5
conv.i.d
div.d.v
push.v self.rembossx
push.v self.x
call.i lerp(argc=3)
pushi.e 5
conv.i.v
pushi.e 2054
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
sub.i.v
pop.v.v self.i
b [25]

:[27]
b [31]

:[28]
pushi.e 6
pop.v.i self.i

:[29]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [31]

:[30]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.d 0.75
conv.d.v
push.d 0.75
conv.d.v
push.v self.i
push.v self.hpos
div.v.v
push.v self.rembossy
push.v self.y
call.i lerp(argc=3)
push.v self.i
pushi.e 6
conv.i.d
div.d.v
push.v self.rembossx
push.v self.x
call.i lerp(argc=3)
pushi.e 5
conv.i.v
pushi.e 2054
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
sub.i.v
pop.v.v self.i
b [29]

:[31]
b [35]

:[32]
pushi.e 10
pop.v.i self.i

:[33]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [35]

:[34]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.i
pushi.e 9
conv.i.d
div.d.v
push.v self.rembossy
push.v self.y
call.i lerp(argc=3)
push.v self.i
pushi.e 9
conv.i.d
div.d.v
push.v self.rembossx
push.v self.x
call.i lerp(argc=3)
pushi.e 4
conv.i.v
pushi.e 2054
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
sub.i.v
pop.v.v self.i
b [33]

:[35]
push.v self.animtimer
push.e 1
add.i.v
pop.v.v self.animtimer
push.v self.firedtimer
push.e 1
sub.i.v
pop.v.v self.firedtimer
pushi.e 0
pop.v.i self.image_index
push.v self.animtimer
pushi.e 5
cmp.i.v GTE
bf [37]

:[36]
pushi.e 1
pop.v.i self.image_index

:[37]
push.v self.animtimer
pushi.e 10
cmp.i.v GTE
bf [39]

:[38]
pushi.e 0
pop.v.i self.animtimer

:[39]
push.v self.firedtimer
pushi.e 4
cmp.i.v GT
bf [41]

:[40]
pushi.e 3
pop.v.i self.image_index

:[41]
call.i draw_self(argc=0)
popz.v
push.v self.damagetimer
pushi.e 0
cmp.i.v GT
bf [43]

:[42]
push.v self.damagetimer
pushi.e 5
conv.i.d
div.d.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 2
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.damagetimer
pushi.e 1
sub.i.v
pop.v.v self.damagetimer

:[43]
push.v self.destroyed
pushi.e 1
cmp.i.v EQ
bf [end]

:[44]
pushi.e 142
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [46]

:[45]
pushglb.v global.turntimer
pushi.e 20
cmp.i.v GT
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 636
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bomb
push.v self.depth
pushi.e 2
sub.i.v
push.v self.bomb
pushi.e -9
pop.v.v [stacktop]self.depth
b [50]

:[49]
call.i gml_Script_scr_afterimage_cut(argc=0)
popz.v

:[50]
pushi.e 10
pop.v.i self.i

:[51]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [55]

:[52]
pushi.e 2054
conv.i.v
push.v self.i
pushi.e 9
conv.i.d
div.d.v
push.v self.rembossy
push.v self.y
call.i lerp(argc=3)
push.v self.i
pushi.e 9
conv.i.d
div.d.v
push.v self.rembossx
push.v self.x
call.i lerp(argc=3)
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.piece
pushi.e 4
push.v self.piece
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.i
push.v self.piece
pushi.e -9
pop.v.v [stacktop]self.i
push.v self.depth
pushi.e 1
add.i.v
push.v self.piece
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.piece
pushi.e -9
pushenv [54]

:[53]
push.v self.i
pushi.e 2
mul.i.v
push.i [function]gml_Script_scr_afterimage_cut
conv.i.v
call.i gml_Script_scr_script_delayed(argc=2)
popz.v
pushi.e 142
conv.i.v
push.v self.i
pushi.e 2
mul.i.v
push.i [function]gml_Script_snd_play
conv.i.v
call.i gml_Script_scr_script_delayed(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 142
conv.i.v
push.v self.i
pushi.e 2
mul.i.v
push.i [function]gml_Script_snd_volume
conv.i.v
call.i gml_Script_scr_script_delayed(argc=5)
popz.v
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
push.v self.id
call.i gml_Script_scr_doom(argc=2)
popz.v

:[54]
popenv [53]
push.v self.i
push.e 1
sub.i.v
pop.v.v self.i
b [51]

:[55]
push.v self.altbiter
pushi.e 1
cmp.i.v EQ
bt [57]

:[56]
push.v self.altbiter
pushi.e 2
cmp.i.v EQ
b [58]

:[57]
push.e 1

:[58]
bf [60]

:[59]
push.v self.altbiter
pushi.e 2
add.i.v
pop.v.v 697.makeheartalt

:[60]
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [65]

:[61]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
push.v 697.difficulty
pushi.e 2
cmp.i.v GT
b [64]

:[63]
push.e 0

:[64]
b [66]

:[65]
push.e 1

:[66]
bf [78]

:[67]
pushi.e 697
pushenv [77]

:[68]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
cmp.v.v EQ
bf [70]

:[69]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v LT
b [71]

:[70]
push.e 0

:[71]
bf [75]

:[72]
push.v 698.mercyaccumulated
pushi.e 3
add.i.v
pop.v.v 698.mercyaccumulated
pushi.e 697
pushenv [74]

:[73]
pushi.e 873
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e 20
add.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.hittarget
pushi.e 20
mul.i.v
sub.v.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__mercydmgwriter
pushi.e 3
push.v self.__mercydmgwriter
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e 5
push.v self.__mercydmgwriter
pushi.e -9
pop.v.i [stacktop]self.type
push.i 231593
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.hittarget
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.hittarget
popz.v

:[74]
popenv [73]
b [77]

:[75]
push.i 231862
setowner.e
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.monsterhp
pushi.e -5
pushi.e 0
push.v [array]self.monstermaxhp
push.d 0.03
mul.d.v
call.i ceil(argc=1)
sub.v.v
pop.i.v [array]self.monsterhp
pushi.e -5
pushi.e 0
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v LT
bf [77]

:[76]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterhp

:[77]
popenv [68]

:[78]
call.i instance_destroy(argc=0)
popz.v

:[end]