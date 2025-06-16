.localvar 2 arguments

:[0]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 45
add.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1673
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
call.i draw_self(argc=0)
popz.v
push.v self.letter
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v self.letter
pushi.e 3
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [8]

:[4]
push.v self.y
push.v self.letter
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e -50
conv.i.v
b [7]

:[6]
pushi.e 50
conv.i.v

:[7]
add.v.v
pop.v.v self.yy
b [12]

:[8]
push.v self.x
push.v self.letter
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e -50
conv.i.v
b [11]

:[10]
pushi.e 50
conv.i.v

:[11]
add.v.v
pop.v.v self.xx

:[12]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
add.v.v
push.v self.xx
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
add.v.v
push.v self.letter
pushi.e 1704
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]