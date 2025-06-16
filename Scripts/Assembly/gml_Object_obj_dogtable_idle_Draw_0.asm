.localvar 2 arguments

:[0]
push.v self.draw_mode
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.dogIndex
push.d 0.25
add.d.v
pop.v.v self.dogIndex
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
pushi.e 64
add.i.v
push.v self.x
pushi.e 30
add.i.v
pushi.e 20
add.i.v
push.v self.image_index
pushi.e 2362
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
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
pushi.e 2
add.i.v
push.v self.raise
sub.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2315
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.draw_mode
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
call.i draw_self(argc=0)
popz.v

:[4]
push.v self.draw_mode
pushi.e 2
cmp.i.v EQ
bf [8]

:[5]
push.v self.raise
pushi.e 18
cmp.i.v LT
bf [7]

:[6]
push.v self.raise
push.e 1
add.i.v
pop.v.v self.raise

:[7]
pushi.e 18
conv.i.v
pushi.e 0
conv.i.v
push.v self.raise
call.i clamp(argc=3)
popz.v
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
pushi.e 64
add.i.v
push.v self.x
pushi.e 30
add.i.v
pushi.e 20
add.i.v
push.v self.image_index
pushi.e 2362
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
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
pushi.e 2
add.i.v
push.v self.raise
sub.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2315
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[8]
push.v self.draw_mode
pushi.e 3
cmp.i.v EQ
bf [end]

:[9]
push.v self.raise
pushi.e 18
cmp.i.v LT
bf [11]

:[10]
push.v self.raise
push.e 1
add.i.v
pop.v.v self.raise

:[11]
pushi.e 18
conv.i.v
pushi.e 0
conv.i.v
push.v self.raise
call.i clamp(argc=3)
popz.v
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
pushi.e 64
add.i.v
push.v self.x
pushi.e 30
add.i.v
pushi.e 20
add.i.v
push.v self.image_index
pushi.e 2362
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
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
pushi.e 2
add.i.v
push.v self.raise
sub.v.v
push.v self.x
pushi.e 1
conv.i.v
pushi.e 2315
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]