.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.flashtimer
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.flashalpha

:[3]
push.v self.flashtimer
push.e 1
add.i.v
pop.v.v self.flashtimer
push.v self.flashtimer
pushi.e 6
cmp.i.v GT
bf [6]

:[4]
push.v self.flashalpha
push.d 0.9
mul.d.v
pop.v.v self.flashalpha
push.v self.flashalpha
push.d 0.01
cmp.d.v LT
bf [6]

:[5]
pushi.e 0
pop.v.i self.flash
pushi.e 0
pop.v.i self.flashtimer

:[6]
push.v self.flashalpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]