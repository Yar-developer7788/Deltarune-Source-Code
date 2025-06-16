.localvar 2 arguments

:[0]
push.v self.imageindex
push.d 0.25
add.d.v
pop.v.v self.imageindex
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -90
pop.v.i self.image_angle

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e -180
pop.v.i self.image_angle

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e -270
pop.v.i self.image_angle

:[6]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.imageindex
pushi.e 2688
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.imageindex
pushi.e 2696
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]