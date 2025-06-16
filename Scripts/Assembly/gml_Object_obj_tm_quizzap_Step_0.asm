.localvar 2 arguments

:[0]
push.v self.rotated
conv.v.b
not.b
bf [end]

:[1]
push.v self.letter
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.image_angle
b [9]

:[3]
push.v self.letter
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 90
pop.v.i self.image_angle
b [9]

:[5]
push.v self.letter
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e -90
pop.v.i self.image_angle
b [9]

:[7]
push.v self.letter
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 180
pop.v.i self.image_angle

:[9]
pushi.e 1
pop.v.i self.image_alpha
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.active
pushi.e 1
pop.v.b self.rotated

:[end]