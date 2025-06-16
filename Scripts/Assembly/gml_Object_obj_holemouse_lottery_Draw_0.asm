.localvar 2 arguments

:[0]
push.v self.direction
pop.v.v self.currentdir
push.v self.direction
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.currentdir
pushi.e 260
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e -90
pop.v.i self.currentdir

:[5]
push.v self.direction
pushi.e 270
cmp.i.v EQ
bf [7]

:[6]
push.v self.currentdir
pushi.e 45
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 360
pop.v.i self.currentdir

:[10]
push.v self.currentdir
pop.v.v self.prevdir
push.v self.currentdir
push.v self.direction
sub.v.v
call.i abs(argc=1)
pushi.e 90
cmp.i.v LTE
bf [16]

:[11]
push.v self.currentdir
push.v self.direction
sub.v.v
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.v self.currentdir
pushi.e 45
sub.i.v
pop.v.v self.currentdir

:[13]
push.v self.currentdir
push.v self.direction
sub.v.v
pushi.e 0
cmp.i.v LT
bf [15]

:[14]
push.v self.currentdir
pushi.e 45
add.i.v
pop.v.v self.currentdir

:[15]
b [20]

:[16]
push.v self.currentdir
push.v self.direction
sub.v.v
pushi.e 0
cmp.i.v GT
bf [18]

:[17]
push.v self.direction
pushi.e 45
add.i.v
pop.v.v self.currentdir

:[18]
push.v self.currentdir
push.v self.direction
sub.v.v
pushi.e 0
cmp.i.v LT
bf [20]

:[19]
push.v self.direction
pushi.e 45
sub.i.v
pop.v.v self.currentdir

:[20]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.v self.image_alpha
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
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
pushi.e 2691
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[22]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.prevdir
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 2696
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.currentdir
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
pushi.e 2688
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[24]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
push.v self.image_alpha
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
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
pushi.e 2694
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[26]
push.v self.con
pushi.e 5
cmp.i.v GTE
bf [end]

:[27]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.y
pushi.e 20
add.i.v
pushi.e 20
add.i.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 10
add.i.v
push.v self.y
pushi.e 20
add.i.v
pushi.e 15
add.i.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 10
sub.i.v
call.i draw_ellipse(argc=5)
popz.v
push.v self.customSprite
pushi.e 2688
cmp.i.v EQ
bf [29]

:[28]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.prevdir
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.fakeY
add.v.v
push.v self.x
pushi.e 20
add.i.v
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 2696
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.currentdir
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.fakeY
add.v.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
pushi.e 2688
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[29]
push.v self.image_alpha
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
push.v self.fakeY
add.v.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
push.v self.customSprite
call.i draw_sprite_ext(argc=9)
popz.v

:[end]