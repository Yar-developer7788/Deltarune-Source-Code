.localvar 2 arguments
.localvar 9580 sprite 3859
.localvar 12238 index 3860
.localvar 6482 xx 3861
.localvar 6483 yy 3862
.localvar 10809 xscale 3863
.localvar 10810 yscale 3864
.localvar 12240 cosAngle 3865
.localvar 12241 sinAngle 3866
.localvar 12242 tint 3867
.localvar 10812 alpha 3868
.localvar 12243 hskew 3869
.localvar 12244 vskew 3870
.localvar 12245 sprTex 3871
.localvar 12246 sprWidth 3872
.localvar 12247 sprHeight 3873
.localvar 12248 sprXOrig 3874
.localvar 12249 sprYOrig 3875
.localvar 12251 tempX 3876
.localvar 12252 tempY 3877

:[0]
b [2]

> gml_Script_draw_sprite_skew_ext (locals=21, argc=11)
:[1]
push.v arg.argument0
pop.v.v local.sprite
push.v arg.argument1
pop.v.v local.index
push.v arg.argument2
pop.v.v local.xx
push.v arg.argument3
pop.v.v local.yy
push.v arg.argument4
pop.v.v local.xscale
push.v arg.argument5
pop.v.v local.yscale
push.v arg.argument6
call.i degtorad(argc=1)
call.i cos(argc=1)
pop.v.v local.cosAngle
push.v arg.argument6
call.i degtorad(argc=1)
call.i sin(argc=1)
pop.v.v local.sinAngle
push.v arg.argument7
pop.v.v local.tint
push.v arg.argument8
pop.v.v local.alpha
push.v arg.argument9
pop.v.v local.hskew
push.v arg.argument10
pop.v.v local.vskew
pushloc.v local.index
pushloc.v local.sprite
call.i sprite_get_texture(argc=2)
pop.v.v local.sprTex
pushloc.v local.sprite
call.i sprite_get_width(argc=1)
pop.v.v local.sprWidth
pushloc.v local.sprite
call.i sprite_get_height(argc=1)
pop.v.v local.sprHeight
pushloc.v local.sprite
call.i sprite_get_xoffset(argc=1)
pop.v.v local.sprXOrig
pushloc.v local.sprite
call.i sprite_get_yoffset(argc=1)
pop.v.v local.sprYOrig
pushloc.v local.sprTex
pushi.e 5
conv.i.v
call.i draw_primitive_begin_texture(argc=2)
popz.v
pushloc.v local.sprXOrig
neg.v
pushloc.v local.sprYOrig
pushloc.v local.sprHeight
div.v.v
pushloc.v local.hskew
mul.v.v
add.v.v
pushloc.v local.xscale
mul.v.v
pop.v.v local.tempX
pushloc.v local.sprYOrig
neg.v
pushloc.v local.sprXOrig
pushloc.v local.sprWidth
div.v.v
pushloc.v local.vskew
neg.v
mul.v.v
add.v.v
pushloc.v local.yscale
mul.v.v
pop.v.v local.tempY
pushloc.v local.alpha
pushloc.v local.tint
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.yy
pushloc.v local.tempX
pushloc.v local.sinAngle
mul.v.v
add.v.v
pushloc.v local.tempY
pushloc.v local.cosAngle
mul.v.v
add.v.v
pushloc.v local.xx
pushloc.v local.tempX
pushloc.v local.cosAngle
mul.v.v
add.v.v
pushloc.v local.tempY
pushloc.v local.sinAngle
mul.v.v
sub.v.v
call.i draw_vertex_texture_color(argc=6)
popz.v
pushloc.v local.sprWidth
pushloc.v local.sprYOrig
pushloc.v local.sprHeight
div.v.v
pushloc.v local.hskew
mul.v.v
add.v.v
pushloc.v local.sprXOrig
sub.v.v
pushloc.v local.xscale
mul.v.v
pop.v.v local.tempX
pushloc.v local.sprYOrig
neg.v
pushi.e 1
pushloc.v local.sprXOrig
pushloc.v local.sprWidth
div.v.v
sub.v.i
pushloc.v local.vskew
mul.v.v
add.v.v
pushloc.v local.yscale
mul.v.v
pop.v.v local.tempY
pushloc.v local.alpha
pushloc.v local.tint
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.yy
pushloc.v local.tempX
pushloc.v local.sinAngle
mul.v.v
add.v.v
pushloc.v local.tempY
pushloc.v local.cosAngle
mul.v.v
add.v.v
pushloc.v local.xx
pushloc.v local.tempX
pushloc.v local.cosAngle
mul.v.v
add.v.v
pushloc.v local.tempY
pushloc.v local.sinAngle
mul.v.v
sub.v.v
call.i draw_vertex_texture_color(argc=6)
popz.v
pushloc.v local.sprXOrig
neg.v
pushi.e 1
pushloc.v local.sprYOrig
pushloc.v local.sprHeight
div.v.v
sub.v.i
pushloc.v local.hskew
neg.v
mul.v.v
add.v.v
pushloc.v local.xscale
mul.v.v
pop.v.v local.tempX
pushloc.v local.sprHeight
pushloc.v local.sprYOrig
sub.v.v
pushloc.v local.sprXOrig
pushloc.v local.sprWidth
div.v.v
pushloc.v local.vskew
neg.v
mul.v.v
add.v.v
pushloc.v local.yscale
mul.v.v
pop.v.v local.tempY
pushloc.v local.alpha
pushloc.v local.tint
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.yy
pushloc.v local.tempX
pushloc.v local.sinAngle
mul.v.v
add.v.v
pushloc.v local.tempY
pushloc.v local.cosAngle
mul.v.v
add.v.v
pushloc.v local.xx
pushloc.v local.tempX
pushloc.v local.cosAngle
mul.v.v
add.v.v
pushloc.v local.tempY
pushloc.v local.sinAngle
mul.v.v
sub.v.v
call.i draw_vertex_texture_color(argc=6)
popz.v
pushloc.v local.sprWidth
pushloc.v local.sprXOrig
sub.v.v
pushi.e 1
pushloc.v local.sprYOrig
pushloc.v local.sprHeight
div.v.v
sub.v.i
pushloc.v local.hskew
neg.v
mul.v.v
add.v.v
pushloc.v local.xscale
mul.v.v
pop.v.v local.tempX
pushloc.v local.sprHeight
pushloc.v local.sprYOrig
sub.v.v
pushi.e 1
pushloc.v local.sprXOrig
pushloc.v local.sprWidth
div.v.v
sub.v.i
pushloc.v local.vskew
mul.v.v
add.v.v
pushloc.v local.yscale
mul.v.v
pop.v.v local.tempY
pushloc.v local.alpha
pushloc.v local.tint
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.yy
pushloc.v local.tempX
pushloc.v local.sinAngle
mul.v.v
add.v.v
pushloc.v local.tempY
pushloc.v local.cosAngle
mul.v.v
add.v.v
pushloc.v local.xx
pushloc.v local.tempX
pushloc.v local.cosAngle
mul.v.v
add.v.v
pushloc.v local.tempY
pushloc.v local.sinAngle
mul.v.v
sub.v.v
call.i draw_vertex_texture_color(argc=6)
popz.v
call.i draw_primitive_end(argc=0)
popz.v
exit.i

:[2]
push.i [function]gml_Script_draw_sprite_skew_ext
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.draw_sprite_skew_ext
popz.v

:[end]