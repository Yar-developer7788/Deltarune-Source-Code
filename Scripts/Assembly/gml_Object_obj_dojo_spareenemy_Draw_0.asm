.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.shaved
conv.v.b
bf [3]

:[2]
pushi.e 1179
conv.i.v
b [4]

:[3]
pushi.e 1171
conv.i.v

:[4]
pop.v.v self.idlesprite

:[5]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [10]

:[6]
push.v self.shaved
conv.v.b
bf [8]

:[7]
pushi.e 1180
conv.i.v
b [9]

:[8]
pushi.e 1172
conv.i.v

:[9]
pop.v.v self.idlesprite

:[10]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [15]

:[11]
push.v self.shaved
conv.v.b
bf [13]

:[12]
pushi.e 1178
conv.i.v
b [14]

:[13]
pushi.e 1176
conv.i.v

:[14]
pop.v.v self.idlesprite

:[15]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [20]

:[16]
push.v self.shaved
conv.v.b
bf [18]

:[17]
pushi.e 1177
conv.i.v
b [19]

:[18]
pushi.e 1175
conv.i.v

:[19]
pop.v.v self.idlesprite

:[20]
push.v self.shaved
conv.v.b
bf [22]

:[21]
pushi.e 1178
conv.i.v
b [23]

:[22]
pushi.e 1176
conv.i.v

:[23]
pop.v.v self.hurtsprite
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [35]

:[24]
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
bf [26]

:[25]
pushi.e 0
pop.v.i self.state
b [35]

:[26]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
pushi.e 856
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.defeatanim
push.v self.sprite_index
push.v self.defeatanim
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.hurtsprite
push.v self.defeatanim
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.defeatanim
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.image_xscale
push.v self.defeatanim
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.defeatanim
pushi.e -9
pop.v.v [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v

:[28]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [34]

:[29]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [31]

:[30]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[31]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [33]

:[32]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[33]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

:[34]
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

:[35]
push.v self.custom_draw_example
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.v self.image_speed
call.i gml_Script_scr_enemy_drawidle_generic(argc=1)
popz.v
b [43]

:[37]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [43]

:[38]
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
push.v self.fsiner
push.e 1
add.i.v
pop.v.v self.fsiner

:[40]
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
bf [42]

:[41]
push.v self.y
push.v self.x
push.v self.siner
push.v self.sparedsprite
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v
b [43]

:[42]
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

:[43]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
pushi.e 0
pop.v.i self.flash

:[45]
pushi.e 0
pop.v.i self.becomeflash

:[end]