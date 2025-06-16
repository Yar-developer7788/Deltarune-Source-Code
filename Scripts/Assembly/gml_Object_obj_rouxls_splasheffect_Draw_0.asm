.localvar 2 arguments
.localvar 14295 _duration 13923

:[0]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.d 2.5
push.v self.yscale
mul.v.d
pop.v.v local._duration
push.v self.siner
pushloc.v local._duration
div.v.v
call.i sin(argc=1)
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.siner
pushloc.v local._duration
div.v.v
call.i sin(argc=1)
push.v self.yscale
mul.v.v
push.v self.siner
pushloc.v local._duration
div.v.v
push.d 0.75
add.d.v
push.v self.xscale
mul.v.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]