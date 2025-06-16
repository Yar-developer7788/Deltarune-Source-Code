.localvar 2 arguments

:[0]
pushglb.v global.boxingphase
pushi.e 2
cmp.i.v NEQ
bf [3]

:[1]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha

:[3]
pushglb.v global.boxingphase
pushi.e 2
cmp.i.v EQ
bf [6]

:[4]
push.v self.image_alpha
push.d 0.5
cmp.d.v LT
bf [6]

:[5]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha

:[6]
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2000
conv.i.v
pushi.e 2000
conv.i.v
pushi.e -2000
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle_color(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]