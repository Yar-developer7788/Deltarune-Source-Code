.localvar 2 arguments

:[0]
push.v self.inert
pushi.e 0
cmp.i.v EQ
bf [12]

:[1]
call.i draw_self(argc=0)
popz.v
pushi.e 1170
pushenv [5]

:[2]
push.v self.gentimer
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e 0
pop.v.i other.image_index
b [5]

:[4]
pushi.e 1
pop.v.i other.image_index

:[5]
popenv [2]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 10
pop.v.i self.draw_amount

:[7]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bf [11]

:[8]
push.v self.draw_amount
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
push.d 0.1
conv.d.v
pushi.e 0
conv.i.v
push.v self.draw_amount
call.i lerp(argc=3)
pop.v.v self.draw_amount
b [11]

:[10]
pushi.e 0
pop.v.i self.draw_amount

:[11]
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
pushi.e 2656
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
pushi.e 2656
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[12]
push.v self.inert
pushi.e 1
cmp.i.v EQ
bf [end]

:[13]
pushi.e 1
pop.v.i self.image_index
call.i draw_self(argc=0)
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
pushi.e 2656
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]