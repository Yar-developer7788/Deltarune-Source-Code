.localvar 2 arguments

:[0]
push.v self.image_xscale
push.d 1.3
mul.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 1.3
mul.d.v
pop.v.v self.image_yscale
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_xscale
call.i clamp(argc=3)
pop.v.v self.image_xscale
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
call.i clamp(argc=3)
pop.v.v self.image_yscale
push.v self.exploded
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 0
pop.v.i self.active
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_index
pushi.e 4
cmp.i.v GTE
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
push.v 82.battlemode
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.image_alpha
push.d 0.9
mul.d.v
pop.v.v self.image_alpha

:[5]
push.v self.image_alpha
push.d 0.01
cmp.d.v LT
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.hit
pushi.e 0
cmp.i.v NEQ
bf [end]

:[8]
pushi.e 1
pop.v.i self.exploded

:[end]