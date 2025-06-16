.localvar 2 arguments

:[0]
push.v self.image_index
call.i floor(argc=1)
pop.v.v self.frameIndex
call.i draw_self(argc=0)
popz.v
push.v self.topsprite
pushi.e 0
cmp.i.v NEQ
bf [end]

:[1]
push.v self.frameIndex
pushi.e 0
cmp.i.v EQ
bt [3]

:[2]
push.v self.frameIndex
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
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
pushi.e 106
add.i.v
push.v self.x
pushi.e 42
add.i.v
pushi.e 0
conv.i.v
push.v self.topsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
push.v self.frameIndex
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e -5
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 106
add.i.v
pushi.e 22
sub.i.v
push.v self.x
pushi.e 42
add.i.v
pushi.e 0
conv.i.v
push.v self.topsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[8]
push.v self.frameIndex
pushi.e 3
cmp.i.v EQ
bt [12]

:[9]
push.v self.frameIndex
pushi.e 4
cmp.i.v EQ
bt [12]

:[10]
push.v self.frameIndex
pushi.e 5
cmp.i.v EQ
bt [12]

:[11]
push.v self.frameIndex
pushi.e 6
cmp.i.v EQ
b [13]

:[12]
push.e 1

:[13]
bf [end]

:[14]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e -10
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 106
add.i.v
pushi.e 24
sub.i.v
push.v self.x
pushi.e 42
add.i.v
pushi.e 0
conv.i.v
push.v self.topsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[end]