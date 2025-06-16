.localvar 2 arguments
.localvar 20114 aura 8238
.localvar 20115 aurax 8239
.localvar 20116 auray 8240
.localvar 20117 aurayscale 8241
.localvar 20118 xmult 8242
.localvar 20119 ymult 8243
.localvar 20120 ysmult 8244

:[0]
push.v self.drawoffscreen
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1
pop.v.i self.dodraw
push.v self.sprite_height
push.v self.sprite_width
add.v.v
pop.v.v self.tolerance
push.v self.tolerance
push.v self.id
call.i gml_Script_scr_onscreen_tolerance(argc=2)
conv.v.b
not.b
bf [3]

:[2]
pushi.e 0
pop.v.i self.dodraw

:[3]
b [5]

:[4]
pushi.e 1
pop.v.b self.dodraw

:[5]
push.v self.dodraw
conv.v.b
bf [end]

:[6]
pushi.e 0
pop.v.i self.drawx
pushi.e 1
pop.v.i self.drawscale
push.v self.facing
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.specialspritecase
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e -1
pop.v.i self.drawscale
push.v self.sprite_width
pop.v.v self.drawx

:[11]
push.v self.drawsiner
push.d 0.25
add.d.v
pop.v.v self.drawsiner
push.v self.x
pop.v.v self.tempx
push.v self.x
push.v self.drawx
add.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.superscalex
pushi.e 0
pop.v.i self.superdrawx
pushi.e 1
pop.v.i self.superscalexb
push.v self.specialspritecase
pushi.e 0
cmp.i.v EQ
bf [15]

:[12]
push.v self.facing
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.superscalex
b [15]

:[14]
pushi.e -4
pop.v.i self.superscalex
pushi.e -1
pop.v.i self.superscalexb
push.v self.sprite_width
neg.v
pushi.e 2
mul.i.v
pop.v.v self.superdrawx

:[15]
push.v self.specialspritecase
push.s "tasque"@18104
cmp.s.v EQ
bf [20]

:[16]
push.v self.facing
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1670
pop.v.i self.sprite_index

:[18]
push.v self.facing
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1669
pop.v.i self.sprite_index

:[20]
pushi.e 1
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[21]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [23]

:[22]
push.v self.i
pushi.e 9
mul.i.v
push.v self.drawsiner
pushi.e 3
mul.i.v
pushi.e 9
mod.i.v
add.v.v
pop.v.v local.aura
pushloc.v local.aura
push.d 0.75
mul.d.v
pushloc.v local.aura
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.v.v local.aurax
pushi.e 45
pushi.e 1
conv.i.v
pushloc.v local.aura
pushi.e 45
conv.i.d
div.d.v
call.i gml_Script_scr_ease_in(argc=2)
mul.v.i
pop.v.v local.auray
pushi.e 1
conv.i.v
pushi.e 80
conv.i.d
push.v self.sprite_height
div.v.d
call.i min(argc=2)
pop.v.v local.aurayscale
push.v self.image_alpha
pushi.e 1
pushloc.v local.auray
pushi.e 45
conv.i.d
div.d.v
sub.v.i
mul.v.v
push.d 0.5
mul.d.v
pushi.e 255
conv.i.v
push.v self.image_angle
push.v self.image_yscale
pushloc.v local.auray
pushi.e 36
conv.i.d
div.d.v
pushloc.v local.aurayscale
mul.v.v
add.v.v
push.v self.image_xscale
pushloc.v local.aurax
pushi.e 36
conv.i.d
div.d.v
add.v.v
push.v self.drawscale
mul.v.v
push.v self.y
pushloc.v local.auray
pushi.e 82
conv.i.d
div.d.v
push.v self.sprite_height
mul.v.v
pushloc.v local.aurayscale
mul.v.v
sub.v.v
push.v self.x
pushloc.v local.aurax
pushi.e 180
conv.i.d
div.d.v
push.v self.drawscale
mul.v.v
push.v self.sprite_width
mul.v.v
sub.v.v
push.v self.walk_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [21]

:[23]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushi.e 4
conv.i.v
pushi.e 70
conv.i.d
push.v self.sprite_width
div.v.d
pushi.e 4
mul.i.v
call.i min(argc=2)
pop.v.v local.xmult
pushi.e 5
conv.i.v
pushi.e 80
conv.i.d
push.v self.sprite_height
div.v.d
pushi.e 5
mul.i.v
call.i min(argc=2)
pop.v.v local.ymult
push.d 0.2
conv.d.v
pushi.e 80
conv.i.d
push.v self.sprite_height
div.v.d
push.d 0.2
mul.d.v
call.i min(argc=2)
pop.v.v local.ysmult
push.v self.image_alpha
push.d 0.2
mul.d.v
pushi.e 255
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.drawsiner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushloc.v local.ysmult
mul.v.v
add.v.v
push.v self.image_xscale
push.v self.superscalex
add.v.v
push.v self.y
push.v self.drawsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushloc.v local.ymult
mul.v.v
add.v.v
push.v self.x
push.v self.superdrawx
add.v.v
push.v self.drawsiner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushloc.v local.xmult
mul.v.v
add.v.v
push.v self.walk_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_ext_centerscale(argc=9)
popz.v
push.v self.image_alpha
push.d 0.2
mul.d.v
pushi.e 255
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.drawsiner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushloc.v local.ysmult
mul.v.v
sub.v.v
push.v self.image_xscale
push.v self.superscalex
add.v.v
push.v self.y
push.v self.drawsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushloc.v local.ymult
mul.v.v
sub.v.v
push.v self.x
push.v self.superdrawx
add.v.v
push.v self.drawsiner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushloc.v local.xmult
mul.v.v
sub.v.v
push.v self.walk_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_ext_centerscale(argc=9)
popz.v
pushi.e 2
conv.i.v
push.v self.image_alpha
push.d 0.3
mul.d.v
pushi.e 255
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.drawscale
mul.v.v
push.v self.y
push.v self.x
push.v self.walk_index
push.v self.sprite_index
call.i gml_Script_scr_draw_outline_ext(argc=10)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.drawscale
mul.v.v
push.v self.y
push.v self.x
push.v self.walk_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.tempx
pop.v.v self.x
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.mymidx
push.v self.y
push.v self.bbox_bottom
push.v self.y
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.mymidy

:[end]