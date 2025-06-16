.localvar 2 arguments
.localvar 23597 fadebird 10645

:[0]
push.v self.colorlerp
pushi.e 1
cmp.i.v LT
bf [4]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha
b [4]

:[3]
push.v self.colorlerp
push.i 16777215
conv.i.v
push.v self.startcolor
call.i merge_color(argc=3)
pop.v.v self.image_blend
push.v self.colorlerp
push.d 0.05
add.d.v
pop.v.v self.colorlerp

:[4]
push.v self.colorlerp
pushi.e 1
cmp.i.v EQ
bf [29]

:[5]
pushi.e 0
pop.v.i local.fadebird
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.x
call.i gml_Script_gt_maxx(argc=0)
pushi.e 10
add.i.v
cmp.v.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i local.fadebird

:[10]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [12]

:[11]
push.v self.x
call.i gml_Script_gt_minx(argc=0)
pushi.e 10
sub.i.v
cmp.v.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
pop.v.i local.fadebird

:[15]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [17]

:[16]
push.v self.y
call.i gml_Script_gt_maxy(argc=0)
pushi.e 10
add.i.v
cmp.v.v GT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.i local.fadebird

:[20]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [22]

:[21]
push.v self.y
call.i gml_Script_gt_miny(argc=0)
pushi.e 10
sub.i.v
cmp.v.v LT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 1
pop.v.i local.fadebird

:[25]
pushloc.v local.fadebird
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha

:[27]
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
call.i draw_self(argc=0)
popz.v

:[end]