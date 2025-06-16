.localvar 2 arguments

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
push.d 0.5
conv.d.v
call.i gml_Script_scr_enemyhurt_tired_after_damage(argc=1)
popz.v
call.i gml_Script_scr_enemy_drawhurt_generic(argc=0)
popz.v

:[2]
push.v self.stop_anim
pushi.e 0
cmp.i.v EQ
bf [6]

:[3]
push.v self.siner_timer
push.v self.image_speed
add.v.v
pop.v.v self.siner_timer
push.v self.siner_timer
pushi.e 1
cmp.i.v GTE
bf [5]

:[4]
push.v self.siner_timer
pushi.e 1
sub.i.v
pop.v.v self.siner_timer
push.v self.siner
pushi.e 8
add.i.v
pop.v.v self.siner

:[5]
push.v self.anim_timer_2
push.v self.siner
pushi.e 34
conv.i.d
push.v self.m
div.v.d
div.v.v
call.i sin(argc=1)
pushi.e 4
conv.i.d
push.v self.m
div.v.d
div.v.v
add.v.v
pop.v.v self.anim_timer_2

:[6]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [22]

:[7]
push.v self.fsiner
pushi.e 1
add.i.v
pop.v.v self.fsiner
push.v self.sprite_index
pushi.e 1714
cmp.i.v NEQ
bf [19]

:[8]
push.v self.stop_anim
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.y
push.v self.x
push.v self.anim_timer_2
push.v self.idlesprite
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v
b [11]

:[10]
call.i draw_self(argc=0)
popz.v

:[11]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
pushi.e 16
sub.i.v
pushi.e 0
conv.i.v
pushi.e 1738
conv.i.v
call.i draw_sprite_ext(argc=9)
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
pushi.e 12
sub.i.v
push.v self.x
pushi.e 16
sub.i.v
pushi.e 0
conv.i.v
pushi.e 1738
conv.i.v
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[13]
pushi.e 0
pop.v.i self.i

:[14]
push.v self.i
pushi.e 32
cmp.i.v LT
bf [18]

:[15]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 20
sub.i.v
push.v self.i
pushi.e 8
mul.i.v
sub.v.v
push.v self.x
pushi.e 16
sub.i.v
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
push.v self.i
mul.v.v
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 1737
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
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
pushi.e 20
sub.i.v
push.v self.i
pushi.e 8
mul.i.v
sub.v.v
push.v self.x
pushi.e 16
sub.i.v
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
push.v self.i
mul.v.v
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 1737
conv.i.v
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[17]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [14]

:[18]
b [22]

:[19]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.hangy
add.v.v
push.v self.x
push.v self.hangx
add.v.v
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
pushi.e 1714
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
pop.v.i self.i

:[20]
push.v self.i
pushi.e 32
cmp.i.v LT
bf [22]

:[21]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 14
add.i.v
push.v self.i
pushi.e 8
mul.i.v
sub.v.v
push.v self.hangy
add.v.v
push.v self.x
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
push.v self.i
mul.v.v
pushi.e 8
conv.i.d
div.d.v
add.v.v
push.v self.hangx
add.v.v
pushi.e 0
conv.i.v
pushi.e 1737
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [20]

:[22]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 0
pop.v.i self.flash

:[24]
pushi.e 0
pop.v.i self.becomeflash
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[end]