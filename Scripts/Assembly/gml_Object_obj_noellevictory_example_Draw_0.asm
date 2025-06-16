.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.2
pop.v.d self.image_speed
pushi.e 35
pop.v.i self.xoff
pushi.e 8
pop.v.i self.yoff
pushi.e 35
pop.v.i self.nxoff
pushi.e 6
pop.v.i self.nyoff
push.v self.siner
pushi.e 24
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.afactor
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.afactor
push.d -0.2
cmp.d.v LT
bf [2]

:[1]
push.v self.siner
pushi.e 8
cmp.i.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.siner
push.e 1
sub.i.v
pop.v.v self.siner

:[5]
pushglb.v global.fighting
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.orbsurface
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [9]

:[8]
pushi.e 136
conv.i.v
pushi.e 120
conv.i.v
call.i surface_create(argc=2)
pop.v.v self.orbsurface

:[9]
push.v self.orbsurface
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_clear(argc=1)
popz.v
push.d 0.6
push.v self.afactor
mul.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.nyoff
push.v self.yoff
sub.v.v
push.v self.nxoff
push.v self.xoff
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1524
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -20
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
add.v.i
pop.v.v self.snowangle
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.snowoff
push.d 0.5
push.v self.afactor
mul.v.d
push.i 16777215
conv.i.v
push.v self.snowangle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.nyoff
push.v self.yoff
sub.v.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.nxoff
push.v self.xoff
sub.v.v
push.v self.snowoff
add.v.v
pushi.e 2
conv.i.v
pushi.e 1524
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.5
push.v self.afactor
mul.v.d
push.i 16777215
conv.i.v
push.v self.snowangle
neg.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.nyoff
push.v self.yoff
sub.v.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.nxoff
push.v self.xoff
sub.v.v
push.v self.snowoff
sub.v.v
pushi.e 2
conv.i.v
pushi.e 1524
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.nyoff
push.v self.nxoff
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.2
push.v self.afactor
mul.v.d
push.i 16711680
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.nyoff
push.v self.yoff
sub.v.v
push.v self.nxoff
push.v self.xoff
sub.v.v
pushi.e 1
conv.i.v
pushi.e 1524
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.d 0.6
push.v self.afactor
mul.v.d
push.i 16711680
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.nyoff
push.v self.yoff
sub.v.v
push.v self.nxoff
push.v self.xoff
sub.v.v
pushi.e 1
conv.i.v
pushi.e 1524
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.nyoff
push.v self.yoff
sub.v.v
push.v self.nxoff
push.v self.xoff
sub.v.v
pushi.e 3
conv.i.v
pushi.e 1524
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
push.v self.y
push.v self.nyoff
sub.v.v
push.v self.x
push.v self.nxoff
sub.v.v
push.v self.orbsurface
call.i draw_surface(argc=3)
popz.v

:[end]