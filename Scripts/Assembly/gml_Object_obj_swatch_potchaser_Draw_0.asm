.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.sweattimer
push.e 1
add.i.v
pop.v.v self.sweattimer
push.v self.sweattimer
pushi.e 30
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.sweattimer

:[2]
push.v self.sweattimer
pushi.e 15
cmp.i.v LTE
bf [end]

:[3]
push.v self.sprite_index
pushi.e 1281
cmp.i.v EQ
bf [end]

:[4]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
pushi.e -1
mul.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 90
add.i.v
pushi.e 0
conv.i.v
pushi.e 2471
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]