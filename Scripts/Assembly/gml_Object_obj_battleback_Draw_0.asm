.localvar 2 arguments

:[0]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner
push.v self.siner2
pushi.e 1
add.i.v
pop.v.v self.siner2
pushbltn.v builtin.room
pushi.e 76
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.bgtype

:[2]
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushbltn.v builtin.room_height
pushi.e 10
add.i.v
pushbltn.v builtin.room_width
pushi.e 10
add.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.destroy
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
push.v self.image_alpha
pushi.e 1
cmp.i.v LTE
bf [5]

:[4]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[5]
push.v self.bgtype
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.image_alpha
pushi.e 2
conv.i.d
div.d.v
push.v self.image_blend
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -100
push.v self.siner
add.v.i
call.i round(argc=1)
pushi.e -100
push.v self.siner
add.v.i
call.i round(argc=1)
pushi.e 2833
conv.i.v
call.i gml_Script_draw_background_tiled_ext(argc=7)
popz.v
push.v self.image_alpha
push.v self.image_blend
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -210
push.v self.siner2
sub.v.i
call.i round(argc=1)
pushi.e -200
push.v self.siner2
sub.v.i
call.i round(argc=1)
pushi.e 2833
conv.i.v
call.i gml_Script_draw_background_tiled_ext(argc=7)
popz.v

:[7]
push.v self.bgtype
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.008
mul.d.v
add.v.i
pushi.e 2
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.008
mul.d.v
add.v.i
push.v self.yy
pushi.e 340
add.i.v
push.v self.xx
call.i gml_Script_camerawidth(argc=0)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 2291
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
push.v self.siner
pushi.e 100
cmp.i.v GTE
bf [11]

:[10]
push.v self.siner
pushi.e 100
sub.i.v
pop.v.v self.siner

:[11]
push.v self.siner2
pushi.e 100
cmp.i.v GTE
bf [13]

:[12]
push.v self.siner2
pushi.e 100
sub.i.v
pop.v.v self.siner2

:[13]
push.v self.destroy
pushi.e 1
cmp.i.v EQ
bf [end]

:[14]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[end]