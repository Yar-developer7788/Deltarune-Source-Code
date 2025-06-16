.localvar 2 arguments

:[0]
push.d 1.1
pop.v.d self.xflip
push.v self.flipTimer
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
push.d -1.1
pop.v.d self.xflip

:[2]
push.v self.flipTimer
push.e 1
add.i.v
pop.v.v self.flipTimer
push.v self.flipTimer
push.v self.flipSpeed
cmp.v.v GTE
bf [4]

:[3]
push.v self.flipSpeed
neg.v
pop.v.v self.flipTimer

:[4]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.d 1.1
conv.d.v
push.v self.xflip
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]