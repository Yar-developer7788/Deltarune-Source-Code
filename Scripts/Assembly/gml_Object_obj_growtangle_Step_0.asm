.localvar 2 arguments
.localvar 27793 _tempxscale 15058
.localvar 27794 _tempyscale 15059
.localvar 14733 surf 15060

:[0]
push.v self.init
conv.v.b
not.b
bf [15]

:[1]
push.v self.visible
conv.v.b
bf [7]

:[2]
push.v self.maxxscale
pushi.e 2
cmp.i.v NEQ
bt [4]

:[3]
push.v self.maxyscale
pushi.e 2
cmp.i.v NEQ
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
push.v self.sprite_index
pushi.e 2234
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [14]

:[9]
pushi.e 1
pop.v.b self.customBox
push.v self.maxxscale
pushi.e 1
mod.i.v
pushi.e 0
cmp.i.v NEQ
bf [11]

:[10]
push.v self.maxxscale
push.d 37.5
mul.d.v
call.i round(argc=1)
push.d 37.5
div.d.v
pop.v.v self.maxxscale

:[11]
push.v self.maxyscale
pushi.e 1
mod.i.v
pushi.e 0
cmp.i.v NEQ
bf [13]

:[12]
push.v self.maxyscale
push.d 37.5
mul.d.v
call.i round(argc=1)
push.d 37.5
div.d.v
pop.v.v self.maxyscale

:[13]
push.v self.maxxscale
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._tempxscale
push.v self.maxyscale
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._tempyscale
pushi.e 75
pushloc.v local._tempyscale
mul.v.i
pushi.e 75
pushloc.v local._tempxscale
mul.v.i
call.i surface_create(argc=2)
pop.v.v local.surf
pushloc.v local.surf
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._tempyscale
pushloc.v local._tempxscale
pushi.e 37
pushloc.v local._tempyscale
mul.v.i
pushi.e 37
pushloc.v local._tempxscale
mul.v.i
pushi.e 0
conv.i.v
pushi.e 3340
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.d 37.5
pushloc.v local._tempyscale
mul.v.d
call.i round(argc=1)
push.d 37.5
pushloc.v local._tempxscale
mul.v.d
call.i round(argc=1)
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 75
pushloc.v local._tempyscale
mul.v.i
pushi.e 75
pushloc.v local._tempxscale
mul.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.surf
call.i sprite_create_from_surface(argc=9)
pop.v.v self.spr_custom_box
pushi.e 2532
pop.v.i self.sprite_index
call.i surface_reset_target(argc=0)
popz.v
pushloc.v local.surf
call.i surface_free(argc=1)
popz.v

:[14]
pushi.e 1
pop.v.i self.init

:[15]
pushi.e 0
pop.v.i self.growth
push.v self.timer
push.v self.maxtimer
cmp.v.v LT
bf [17]

:[16]
push.v self.growcon
pushi.e 1
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.i self.growth

:[20]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [22]

:[21]
push.v self.growcon
pushi.e 3
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 1
pop.v.i self.growth

:[25]
push.v self.growth
pushi.e 1
cmp.i.v EQ
bf [end]

:[26]
push.v self.growcon
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer

:[28]
push.v self.growcon
pushi.e 3
cmp.i.v EQ
bf [30]

:[29]
push.v self.timer
pushi.e 1
sub.i.v
pop.v.v self.timer

:[30]
push.v self.maxxscale
push.v self.timer
push.v self.maxtimer
div.v.v
mul.v.v
pop.v.v self.image_xscale
push.v self.maxyscale
push.v self.timer
push.v self.maxtimer
div.v.v
mul.v.v
pop.v.v self.image_yscale
pushi.e 180
pushi.e 180
push.v self.timer
push.v self.maxtimer
div.v.v
mul.v.i
add.v.i
push.v self.target_angle
add.v.v
pop.v.v self.image_angle
push.d 0.5
push.v self.timer
push.v self.maxtimer
div.v.v
push.d 0.5
mul.d.v
add.v.d
pop.v.v self.image_alpha
push.v self.visible
conv.v.b
bf [32]

:[31]
pushi.e 352
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.spr_custom_box
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_xscale
push.v self.maxxscale
pushi.e 2
conv.i.d
div.d.v
div.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.maxyscale
pushi.e 2
conv.i.d
div.d.v
div.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.image_angle
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.image_blend
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
pushi.e 1
push.v self.image_alpha
sub.v.i
push.d 0.1
add.d.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_alpha
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_speed

:[32]
push.v self.timer
push.v self.maxtimer
cmp.v.v GTE
bf [34]

:[33]
push.v self.growcon
pushi.e 1
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 2
pop.v.i self.growcon
push.v self.target_angle
pop.v.v self.image_angle

:[37]
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [39]

:[38]
push.v self.growcon
pushi.e 3
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [end]

:[41]
call.i instance_destroy(argc=0)
popz.v

:[end]