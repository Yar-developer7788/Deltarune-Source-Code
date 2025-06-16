.localvar 2 arguments
.localvar 107 i 19314

:[0]
call.i draw_self(argc=0)
popz.v
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushi.e 20
cmp.i.v LT
bf [end]

:[2]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
pushloc.v local.i
mul.v.i
sub.v.v
push.v self.x
push.v self.image_index
pushi.e 2716
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[end]