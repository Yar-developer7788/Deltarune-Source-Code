.localvar 2 arguments

:[0]
push.v self.image_alpha
push.v self.fadespeed
add.v.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [2]

:[1]
pushi.e 1
pop.v.i self.image_alpha
b [4]

:[2]
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [4]

:[3]
pushi.e 0
pop.v.i self.image_alpha

:[4]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.height
push.v self.length
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.save_ready
pushi.e 3
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]