.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.rotate
pushi.e 1
cmp.b.v EQ
bf [8]

:[1]
pushi.e 0
pop.v.i self.image_index
push.v self.left
pushi.e 1
cmp.b.v EQ
bf [3]

:[2]
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
pushi.e 20
add.i.v
push.v self.x
pushi.e 6
add.i.v
pushi.e 0
conv.i.v
pushi.e 2628
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
push.v self.right
pushi.e 1
cmp.b.v EQ
bf [5]

:[4]
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
pushi.e 20
add.i.v
push.v self.x
pushi.e 6
add.i.v
pushi.e 2
conv.i.v
pushi.e 2628
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
push.v self.down
pushi.e 1
cmp.b.v EQ
bf [7]

:[6]
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
pushi.e 20
add.i.v
push.v self.x
pushi.e 6
add.i.v
pushi.e 1
conv.i.v
pushi.e 2628
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
b [end]

:[8]
pushi.e 1
pop.v.i self.image_index

:[end]