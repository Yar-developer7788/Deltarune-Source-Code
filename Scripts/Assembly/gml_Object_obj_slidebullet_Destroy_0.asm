.localvar 2 arguments

:[0]
pushi.e 1100
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create_depth(argc=4)
pushi.e -9
pushenv [2]

:[1]
push.v other.sprite_width
pop.v.v self.image_xscale
pushi.e 1
conv.i.d
push.v self.sprite_height
div.v.d
pushi.e 300
mul.i.v
pop.v.v self.image_yscale

:[2]
popenv [1]

:[end]