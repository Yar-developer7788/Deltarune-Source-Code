.localvar 2 arguments
.localvar 11944 scale 13230

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
pop.v.v local.scale
push.d 0.5
conv.d.v
push.v self.image_blend
push.v self.image_angle
pushi.e 1
pushloc.v local.scale
add.v.i
pushi.e 1
pushloc.v local.scale
add.v.i
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.timer
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
pop.v.v local.scale
push.d 0.5
conv.d.v
push.v self.image_blend
push.v self.image_angle
push.d 1.2
pushloc.v local.scale
add.v.d
push.d 1.2
pushloc.v local.scale
add.v.d
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]