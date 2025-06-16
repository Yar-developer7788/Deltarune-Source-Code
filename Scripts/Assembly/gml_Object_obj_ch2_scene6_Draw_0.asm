.localvar 2 arguments

:[0]
push.v self.lancerGlow
pushi.e 1
cmp.i.v EQ
bf [13]

:[1]
push.v self.morphTime
push.e 1
add.i.v
pop.v.v self.morphTime
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.glowValue
push.d 0.05
add.d.v
call.i clamp(argc=3)
pop.v.v self.glowValue
push.v self.glowValue
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.image_blend
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.image_angle
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.x
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.image_index
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v
push.v self.morphTime
pushi.e 20
cmp.i.v GTE
bf [3]

:[2]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.shrinkValue
push.d 0.025
sub.d.v
call.i clamp(argc=3)
pop.v.v self.shrinkValue
push.v self.origX
push.v self.halfWidth
pushi.e 1
push.v self.shrinkValue
sub.v.i
mul.v.v
add.v.v
push.v self.la_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.origY
push.v self.halfHeight
pushi.e 1
push.v self.shrinkValue
sub.v.i
mul.v.v
add.v.v
push.v self.la_actor
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.shrinkValue
pushi.e 2
mul.i.v
push.v self.la_actor
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.shrinkValue
pushi.e 2
mul.i.v
push.v self.la_actor
pushi.e -9
pop.v.v [stacktop]self.image_xscale

:[3]
push.v self.morphTime
pushi.e 35
cmp.i.v GTE
bf [5]

:[4]
push.v self.cardMade
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.x
push.v self.halfWidth
push.d 0.6
mul.d.v
add.v.v
push.v self.la_card
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.halfHeight
push.d 0.6
mul.d.v
add.v.v
push.v self.la_card
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 1
pop.v.i self.cardMade

:[8]
push.v self.morphTime
pushi.e 35
cmp.i.v GTE
bf [10]

:[9]
push.v self.cardMade
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.growValue
push.d 0.025
add.d.v
call.i clamp(argc=3)
pop.v.v self.growValue
push.d 1.25
push.v self.growValue
sub.v.d
push.v self.la_card
pushi.e -9
pop.v.v [stacktop]self.image_speed
push.v self.growValue
pushi.e 2
mul.i.v
push.v self.la_card
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.growValue
pushi.e 2
mul.i.v
push.v self.la_card
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e 1
conv.i.v
push.v self.la_card
pushi.e -9
push.v [stacktop]self.image_blend
push.v self.la_card
pushi.e -9
push.v [stacktop]self.image_angle
push.v self.la_card
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.la_card
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.la_card
pushi.e -9
push.v [stacktop]self.y
push.v self.la_card
pushi.e -9
push.v [stacktop]self.x
push.v self.la_card
pushi.e -9
push.v [stacktop]self.image_index
push.v self.la_card
pushi.e -9
push.v [stacktop]self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[13]
push.v self.lancerGlow
pushi.e 2
cmp.i.v EQ
bf [16]

:[14]
push.v self.morphTime
push.e 1
add.i.v
pop.v.v self.morphTime
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.glowValue
push.d 0.05
sub.d.v
call.i clamp(argc=3)
pop.v.v self.glowValue
push.v self.glowValue
push.v self.la_card
pushi.e -9
push.v [stacktop]self.image_blend
push.v self.la_card
pushi.e -9
push.v [stacktop]self.image_angle
push.v self.la_card
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.la_card
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.la_card
pushi.e -9
push.v [stacktop]self.y
push.v self.la_card
pushi.e -9
push.v [stacktop]self.x
push.v self.la_card
pushi.e -9
push.v [stacktop]self.image_index
push.v self.la_card
pushi.e -9
push.v [stacktop]self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v
push.v self.morphTime
pushi.e 50
cmp.i.v GTE
bf [16]

:[15]
pushi.e 1
pop.v.i self.lancerCard

:[16]
push.v self.lancerGlow
pushi.e 4
cmp.i.v EQ
bf [29]

:[17]
push.v self.morphTime
push.e 1
add.i.v
pop.v.v self.morphTime
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.glowValue
push.d 0.1
add.d.v
call.i clamp(argc=3)
pop.v.v self.glowValue
push.v self.glowValue
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.image_blend
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.image_angle
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.x
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.image_index
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v
push.v self.morphTime
pushi.e 15
cmp.i.v GTE
bf [19]

:[18]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.shrinkValue
push.d 0.05
sub.d.v
call.i clamp(argc=3)
pop.v.v self.shrinkValue
push.v self.origX
push.v self.halfWidth
pushi.e 1
push.v self.shrinkValue
sub.v.i
mul.v.v
add.v.v
push.v self.ro_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.origY
push.v self.halfHeight
pushi.e 1
push.v self.shrinkValue
sub.v.i
mul.v.v
add.v.v
push.v self.ro_actor
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.shrinkValue
pushi.e 2
mul.i.v
push.v self.ro_actor
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.shrinkValue
pushi.e 2
mul.i.v
push.v self.ro_actor
pushi.e -9
pop.v.v [stacktop]self.image_xscale

:[19]
push.v self.morphTime
pushi.e 25
cmp.i.v GTE
bf [21]

:[20]
push.v self.cardMade
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.x
push.v self.halfWidth
push.d 0.45
mul.d.v
add.v.v
push.v self.ro_card
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.halfHeight
push.d 0.5
mul.d.v
add.v.v
push.v self.ro_card
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 5
push.v self.ro_card
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 1
pop.v.i self.cardMade

:[24]
push.v self.morphTime
pushi.e 25
cmp.i.v GTE
bf [26]

:[25]
push.v self.cardMade
pushi.e 1
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.growValue
push.d 0.05
add.d.v
call.i clamp(argc=3)
pop.v.v self.growValue
push.d 1.25
push.v self.growValue
sub.v.d
push.v self.ro_card
pushi.e -9
pop.v.v [stacktop]self.image_speed
push.v self.growValue
pushi.e 2
mul.i.v
push.v self.ro_card
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.growValue
pushi.e 2
mul.i.v
push.v self.ro_card
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e 1
conv.i.v
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.image_blend
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.image_angle
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.y
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.x
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.image_index
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[29]
push.v self.lancerGlow
pushi.e 5
cmp.i.v EQ
bf [end]

:[30]
push.v self.morphTime
push.e 1
add.i.v
pop.v.v self.morphTime
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.glowValue
push.d 0.2
sub.d.v
call.i clamp(argc=3)
pop.v.v self.glowValue
push.v self.glowValue
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.image_blend
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.image_angle
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.y
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.x
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.image_index
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v
push.v self.morphTime
pushi.e 5
cmp.i.v GTE
bf [end]

:[31]
pushi.e 1
pop.v.i self.rouxlsCard

:[end]