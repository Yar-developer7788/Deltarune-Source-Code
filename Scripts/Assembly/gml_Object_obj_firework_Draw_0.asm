.localvar 2 arguments

:[0]
push.v self.colorProfile
dup.v 0
push.l 2
cmp.l.v EQ
bt [3]

:[1]
b [4]

:[2]
b [5]

:[3]
push.v self.hue
pushi.e 3
add.i.v
pop.v.v self.hue
push.v self.hue
pushi.e 255
mod.i.v
pop.v.v self.hue
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.hue
call.i make_colour_hsv(argc=3)
pop.v.v self.image_blend
b [5]

:[4]
b [5]

:[5]
popz.v
call.i draw_self(argc=0)
popz.v

:[end]