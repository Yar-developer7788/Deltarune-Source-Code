.localvar 2 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.wait
push.e 1
add.i.v
pop.v.v self.wait
push.v self.wait
pushi.e 1800
cmp.i.v GT
bf [3]

:[2]
pushi.e -5
pushi.e 330
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
push.v self.alpha1
push.d 0.0025
add.d.v
pop.v.v self.alpha1
push.v self.alpha2
push.d 0.00125
add.d.v
pop.v.v self.alpha2
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
push.v self.alpha1
call.i clamp(argc=3)
pop.v.v self.alpha1
push.d 0.32
conv.d.v
pushi.e 0
conv.i.v
push.v self.alpha1
call.i clamp(argc=3)
pop.v.v self.alpha2
push.v self.alpha1
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 498
conv.i.v
pushi.e 556
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.alpha2
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 498
conv.i.v
pushi.e 556
conv.i.v
pushi.e 0
conv.i.v
pushi.e 34
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.alpha1
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 498
conv.i.v
pushi.e 558
conv.i.v
pushi.e 0
conv.i.v
pushi.e 35
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.alpha2
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 498
conv.i.v
pushi.e 558
conv.i.v
pushi.e 0
conv.i.v
pushi.e 36
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]