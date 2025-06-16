.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 270
conv.i.v
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.image_index
pushi.e 2199
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 480
add.i.v
push.v self.x
pushi.e 10
sub.i.v
push.v self.image_index
pushi.e 2199
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index

:[end]