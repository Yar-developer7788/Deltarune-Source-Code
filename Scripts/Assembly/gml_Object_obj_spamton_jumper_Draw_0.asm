.localvar 2 arguments
.localvar 10352 minx 12265
.localvar 10353 maxx 12266
.localvar 25467 timerscale 12267
.localvar 25468 ypoint 12268

:[0]
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 5
add.i.v
pop.v.v local.minx
push.v 585.x
push.v 585.mouthx
add.v.v
pop.v.v local.maxx
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [4]

:[1]
pushi.e 7
conv.i.v
pushi.e 1
push.v self.timer
pushi.e 5
sub.i.v
call.i abs(argc=1)
pushi.e 5
conv.i.d
div.d.v
sub.v.i
call.i gml_Script_scr_ease_out(argc=2)
pop.v.v local.timerscale
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 4
sub.i.v
push.v self.flip
mul.v.v
add.v.v
pop.v.v local.ypoint
pushloc.v local.timerscale
pushi.e 2
conv.i.d
div.d.v
pushloc.v local.ypoint
push.v self.y
call.i lerp(argc=3)
pop.v.v local.ypoint
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
pushloc.v local.timerscale
pushi.e 2
conv.i.d
div.d.v
sub.v.i
push.v self.yscale
mul.v.v
pushi.e 1
pushloc.v local.timerscale
pushi.e 2
conv.i.d
div.d.v
add.v.i
pushloc.v local.ypoint
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
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
pushi.e 10
push.v self.timer
sub.v.i
pushi.e 10
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
pushloc.v local.timerscale
pushi.e 2
conv.i.d
div.d.v
sub.v.i
push.v self.yscale
mul.v.v
pushi.e 1
pushloc.v local.timerscale
pushi.e 2
conv.i.d
div.d.v
add.v.i
pushloc.v local.ypoint
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
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

:[3]
b [5]

:[4]
pushi.e 800
conv.i.v
pushloc.v local.maxx
pushi.e 0
conv.i.v
pushloc.v local.minx
call.i gml_Script_scr_drawpart_crop(argc=4)
popz.v

:[5]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.minx
cmp.v.v LT
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]