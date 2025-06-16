.localvar 2 arguments
.localvar 23386 imageSpeed 10458

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
push.v self.animspeed
pop.v.v local.imageSpeed
pushloc.v local.imageSpeed
call.i gml_Script_scr_enemy_drawidle_generic(argc=1)
popz.v
push.v self.cloning
conv.v.b
bf [4]

:[3]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.cloneTimer
push.d 0.25
add.d.v
call.i clamp(argc=3)
pop.v.v self.cloneTimer
push.v self.cloneTimer
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.siner
push.v self.thissprite
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[4]
push.v self.cloning
conv.v.b
not.b
bf [6]

:[5]
push.v self.cloneTimer
pushi.e 0
cmp.i.v GT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.cloneTimer
push.d 0.25
sub.d.v
call.i clamp(argc=3)
pop.v.v self.cloneTimer
push.v self.cloneTimer
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.siner
push.v self.thissprite
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[9]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i self.flash

:[11]
pushi.e 0
pop.v.i self.becomeflash
push.v self.actcon
push.d 20.5
cmp.d.v EQ
bf [13]

:[12]
push.v self.blockTimer
pushi.e 1
cmp.b.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [end]

:[15]
pushi.e -1
pushi.e 4
push.v [array]self.alarm
push.d 3.56
mul.d.v
pop.v.v self.b
pushi.e 0
conv.i.v
push.i 16776960
conv.i.v
push.i 16776960
conv.i.v
push.i 16776960
conv.i.v
push.i 16776960
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 300
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 200
add.i.v
push.v self.b
add.v.v
call.i gml_Script_cameray(argc=0)
pushi.e 290
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 200
add.i.v
call.i draw_rectangle_color(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 295
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 200
add.i.v
pushi.e 1
conv.i.v
pushi.e 1668
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]