.localvar 2 arguments
.localvar 6180 lang 6635

:[0]
push.v self.myself
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
push.v self.pipisSignAlpha
pushi.e 0
cmp.i.v GT
bf [5]

:[2]
push.v self.pipisSignAlpha
push.d 0.1
sub.d.v
pop.v.v self.pipisSignAlpha
pushi.e 0
pop.v.i local.lang
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i local.lang

:[4]
push.v self.pipisSignAlpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 12
add.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i random_range(argc=2)
add.v.v
push.v self.x
pushi.e 4
sub.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i random_range(argc=2)
add.v.v
pushloc.v local.lang
pushi.e 2693
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [17]

:[6]
push.d 0.5
conv.d.v
call.i gml_Script_scr_enemyhurt_tired_after_damage(argc=1)
popz.v
pushi.e 1
pop.v.i self.fatal
push.v self.hurttimer
pushi.e 1
sub.i.v
pop.v.v self.hurttimer
push.v self.hurttimer
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
pushi.e 0
pop.v.i self.state
b [17]

:[8]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.xstart
pushi.e 16
sub.i.v
pop.v.v self.x
push.v self.ystart
pushi.e 12
sub.i.v
pop.v.v self.y
call.i gml_Script_scr_defeatrun(argc=0)
popz.v

:[10]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [16]

:[11]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[13]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [15]

:[14]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[15]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

:[16]
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

:[17]
push.v self.custom_draw_example
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
conv.i.v
call.i gml_Script_scr_enemy_drawidle_generic(argc=1)
popz.v
b [25]

:[19]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [25]

:[20]
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v self.fsiner
push.e 1
add.i.v
pop.v.v self.fsiner

:[22]
push.v self.siner
push.d 0.16666666666666666
add.d.v
pop.v.v self.siner
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [24]

:[23]
push.v self.y
push.v self.x
push.v self.siner
push.v self.sparedsprite
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v
b [25]

:[24]
push.v self.y
push.v self.x
push.v self.siner
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
conv.i.v
pushi.e 1562
conv.i.v
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v
push.v self.y
push.v self.siner
call.i cos(argc=1)
add.v.v
push.v self.x
push.v self.siner
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1562
conv.i.v
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v

:[25]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
pop.v.i self.flash

:[27]
pushi.e 0
pop.v.i self.becomeflash

:[end]