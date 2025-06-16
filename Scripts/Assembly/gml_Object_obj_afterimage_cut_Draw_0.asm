.localvar 2 arguments
.localvar 19849 hw 7891
.localvar 19850 hh 7892
.localvar 14915 m 7893

:[0]
push.v self.flash
conv.v.b
bf [2]

:[1]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
call.i draw_self(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
pushi.e 0
pop.v.b self.flash
exit.i

:[2]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.width
pushi.e 2
conv.i.d
div.d.v
pop.v.v local.hw
push.v self.height
pushi.e 2
conv.i.d
div.d.v
pop.v.v local.hh
pushi.e 1
conv.i.v
push.v self.siner
pushi.e 2
add.i.v
pushi.e 10
conv.i.d
div.d.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
call.i gml_Script_lerp_ease_out(argc=4)
pop.v.v local.m
push.v self.image_alpha
push.v self.faderate
sub.v.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.v self.image_blend
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.m
sub.v.v
push.v self.yo
push.v self.image_yscale
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
pushloc.v local.m
sub.v.v
push.v self.xo
push.v self.image_xscale
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushloc.v local.hh
pushloc.v local.hw
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.m
sub.v.v
push.v self.yo
push.v self.image_yscale
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
pushloc.v local.m
add.v.v
push.v self.xo
push.v self.image_xscale
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushloc.v local.hh
pushloc.v local.hw
pushi.e 0
conv.i.v
pushloc.v local.hw
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.m
add.v.v
push.v self.yo
push.v self.image_yscale
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
pushloc.v local.m
sub.v.v
push.v self.xo
push.v self.image_xscale
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushloc.v local.hh
pushloc.v local.hw
pushloc.v local.hh
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.m
add.v.v
push.v self.yo
push.v self.image_yscale
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
pushloc.v local.m
add.v.v
push.v self.xo
push.v self.image_xscale
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushloc.v local.hh
pushloc.v local.hw
pushloc.v local.hh
pushloc.v local.hw
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]