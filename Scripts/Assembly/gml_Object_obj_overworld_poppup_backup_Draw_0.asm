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
push.v self.topyoff
add.v.v
pushi.e 14
sub.i.v
push.v self.x
push.v self.topxoff
add.v.v
pushi.e 0
conv.i.v
push.v self.topsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
push.v self.frameIndex
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
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
push.v self.topyoff
add.v.v
pushi.e 34
sub.i.v
push.v self.x
push.v self.topxoff
add.v.v
pushi.e 0
conv.i.v
push.v self.topsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
push.v self.frameIndex
pushi.e 2
cmp.i.v EQ
bt [10]

:[6]
push.v self.frameIndex
pushi.e 3
cmp.i.v EQ
bt [10]

:[7]
push.v self.frameIndex
pushi.e 4
cmp.i.v EQ
bt [10]

:[8]
push.v self.frameIndex
pushi.e 5
cmp.i.v EQ
bt [10]

:[9]
push.v self.frameIndex
pushi.e 6
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [end]

:[12]
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
push.v self.topyoff
add.v.v
pushi.e 42
sub.i.v
push.v self.x
push.v self.topxoff
add.v.v
pushi.e 2
sub.i.v
pushi.e 0
conv.i.v
push.v self.topsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[end]