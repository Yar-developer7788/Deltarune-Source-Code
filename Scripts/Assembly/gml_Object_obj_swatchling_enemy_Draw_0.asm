.localvar 2 arguments

:[0]
push.v self.color_init
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
conv.b.v
push.v self.current_pal
push.v self.sprite_palette
call.i gml_Script_pal_swap_set(argc=3)
popz.v
call.i gml_Script_scr_enemy_drawhurt_generic(argc=0)
popz.v
call.i gml_Script_pal_swap_reset(argc=0)
popz.v

:[4]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [13]

:[5]
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.fsiner
push.e 1
add.i.v
pop.v.v self.fsiner

:[7]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
pushi.e 0
conv.b.v
push.v self.current_pal
push.v self.sprite_palette
call.i gml_Script_pal_swap_set(argc=3)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1811
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
call.i gml_Script_pal_swap_reset(argc=0)
popz.v
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1811
conv.i.v
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[9]
pushi.e 0
conv.b.v
push.v self.current_pal
push.v self.sprite_palette
call.i gml_Script_pal_swap_set(argc=3)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1810
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
call.i gml_Script_pal_swap_reset(argc=0)
popz.v
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1810
conv.i.v
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[11]
pushi.e 0
conv.b.v
push.v self.current_pal
push.v self.sprite_palette
call.i gml_Script_pal_swap_set(argc=3)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1809
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
call.i gml_Script_pal_swap_reset(argc=0)
popz.v
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1809
conv.i.v
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[13]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.flash

:[15]
pushi.e 0
pop.v.i self.becomeflash

:[end]