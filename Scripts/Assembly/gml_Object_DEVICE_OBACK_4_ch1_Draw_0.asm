.localvar 2 arguments

:[0]
push.v self.siner
pushi.e 2
cmp.i.v GT
bf [end]

:[1]
push.d 0.2
push.v self.alpha
add.v.d
push.v self.o_insurance
sub.v.v
push.v self.b_insurance
add.v.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
push.v self.ystretch
add.v.i
pushi.e 1
push.v self.xstretch
add.v.i
pushi.e 120
conv.i.v
pushi.e 160
conv.i.v
pushi.e 4382
conv.i.v
call.i gml_Script_draw_background_ext_ch1(argc=8)
popz.v
push.d 0.2
push.v self.alpha
add.v.d
push.v self.o_insurance
sub.v.v
push.v self.b_insurance
add.v.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
push.v self.ystretch
add.v.i
pushi.e -1
push.v self.xstretch
sub.v.i
pushi.e 120
conv.i.v
pushi.e 160
conv.i.v
pushi.e 4382
conv.i.v
call.i gml_Script_draw_background_ext_ch1(argc=8)
popz.v
push.d 0.2
push.v self.alpha
add.v.d
push.v self.o_insurance
sub.v.v
push.v self.b_insurance
add.v.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e -1
push.v self.ystretch
sub.v.i
pushi.e -1
push.v self.xstretch
sub.v.i
pushi.e 120
conv.i.v
pushi.e 160
conv.i.v
pushi.e 4382
conv.i.v
call.i gml_Script_draw_background_ext_ch1(argc=8)
popz.v
push.d 0.2
push.v self.alpha
add.v.d
push.v self.o_insurance
sub.v.v
push.v self.b_insurance
add.v.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e -1
push.v self.ystretch
sub.v.i
pushi.e 1
push.v self.xstretch
add.v.i
pushi.e 120
conv.i.v
pushi.e 160
conv.i.v
pushi.e 4382
conv.i.v
call.i gml_Script_draw_background_ext_ch1(argc=8)
popz.v

:[end]