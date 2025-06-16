.localvar 2 arguments
.localvar 107 i 6461

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.sprite_index
pushi.e 517
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i local.i

:[2]
pushloc.v local.i
pushi.e 24
cmp.i.v LT
bf [end]

:[3]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 90
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 24
pushloc.v local.i
mul.v.i
add.v.v
push.v self.image_index
pushi.e 3323
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 90
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 24
pushloc.v local.i
mul.v.i
sub.v.v
push.v self.image_index
pushi.e 3323
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 24
pushloc.v local.i
mul.v.i
sub.v.v
push.v self.x
push.v self.image_index
pushi.e 3323
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 24
pushloc.v local.i
mul.v.i
add.v.v
push.v self.x
push.v self.image_index
pushi.e 3323
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[end]