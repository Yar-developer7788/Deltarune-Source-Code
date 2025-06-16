.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
pushi.e 1
pop.v.i self.image_index
push.v 1284.victory
conv.v.b
bf [2]

:[1]
pushi.e 1115
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.image_index
b [6]

:[5]
pushi.e 1
pop.v.i self.image_index

:[6]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 10
pop.v.i self.draw_amount

:[8]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bf [12]

:[9]
push.v self.draw_amount
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
push.d 0.1
conv.d.v
pushi.e 0
conv.i.v
push.v self.draw_amount
call.i lerp(argc=3)
pop.v.v self.draw_amount
b [12]

:[11]
pushi.e 0
pop.v.i self.draw_amount

:[12]
push.v self.draw_amount
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
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
pushi.e 16
add.i.v
push.v self.x
pushi.e 6
add.i.v
pushi.e 0
conv.i.v
pushi.e 2657
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.draw_amount
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 6
add.i.v
pushi.e 1
conv.i.v
pushi.e 2657
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]