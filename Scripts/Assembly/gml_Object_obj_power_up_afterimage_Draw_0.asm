.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [14]

:[1]
push.v self.use_pivot
conv.v.b
bf [7]

:[2]
push.v self.pivotx
pushi.e -999
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.pivotx

:[4]
push.v self.pivoty
pushi.e -999
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.pivoty

:[6]
push.v self.pivotx
push.v self.image_xscale
mul.v.v
pop.v.v self.startscalex
push.v self.pivoty
push.v self.image_yscale
mul.v.v
pop.v.v self.startscaley
b [11]

:[7]
push.v self.pivotx
pushi.e -999
cmp.i.v EQ
bf [9]

:[8]
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.pivotx

:[9]
push.v self.pivoty
pushi.e -999
cmp.i.v EQ
bf [11]

:[10]
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.pivoty

:[11]
push.v self.xrate
push.v self.scale
mul.v.v
pop.v.v self.xrate
push.v self.yrate
push.v self.scale
mul.v.v
pop.v.v self.yrate
pushi.e 1
pop.v.i self.init
push.v self.reverse
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v self.image_xscale
push.v self.xrate
push.v self.fade
div.v.v
add.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.v self.yrate
push.v self.fade
div.v.v
add.v.v
pop.v.v self.image_yscale
push.v self.xrate
pushi.e -1
mul.i.v
pop.v.v self.xrate
push.v self.yrate
pushi.e -1
mul.i.v
pop.v.v self.yrate
push.v self.image_alpha
pop.v.v self.maxalpha
pushi.e 0
pop.v.i self.image_alpha
push.v self.fade
pushi.e -1
mul.i.v
pop.v.v self.fade

:[13]
exit.i

:[14]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.maxalpha
call.i clamp(argc=3)
pop.v.v self.maxalpha
push.v self.image_alpha
push.v self.fade
sub.v.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.v self.xrate
add.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.v self.yrate
add.v.v
pop.v.v self.image_yscale
push.v self.use_pivot
conv.v.b
bf [16]

:[15]
push.v self.x
push.v self.pivotx
push.v self.image_xscale
mul.v.v
add.v.v
push.v self.startscalex
sub.v.v
pop.v.v self.xx
push.v self.y
push.v self.pivoty
push.v self.image_yscale
mul.v.v
add.v.v
push.v self.startscaley
sub.v.v
pop.v.v self.yy
b [17]

:[16]
push.v self.x
push.v self.pivotx
push.v self.image_xscale
pushi.e 2
sub.i.v
pushi.e 2
conv.i.d
div.d.v
mul.v.v
sub.v.v
pop.v.v self.xx
push.v self.y
push.v self.pivoty
push.v self.image_yscale
pushi.e 2
sub.i.v
pushi.e 2
conv.i.d
div.d.v
mul.v.v
sub.v.v
pop.v.v self.yy

:[17]
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bt [19]

:[18]
push.v self.image_alpha
pushi.e 1
cmp.i.v GT
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_blend
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.image_alpha
push.v self.maxalpha
mul.v.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.yy
push.v self.xx
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

:[end]