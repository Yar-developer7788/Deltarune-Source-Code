.localvar 2 arguments
.localvar 18100 sinmove_y 9072

:[0]
pushi.e 0
pop.v.i self.sinerx
pushi.e 0
pop.v.i self.sinery
push.v self.siner1
push.v self.siner_add1
add.v.v
pop.v.v self.siner1
push.v self.siner1
call.i cos(argc=1)
push.v self.siner_amplitude1
mul.v.v
pop.v.v local.sinmove_y
push.v self.sinerx
push.v self.siner_direction1
pushloc.v local.sinmove_y
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.sinerx
push.v self.sinery
push.v self.siner_direction1
pushloc.v local.sinmove_y
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.sinery
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.sinery
add.v.v
push.v self.x
push.v self.sinerx
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]