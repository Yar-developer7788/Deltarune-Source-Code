.localvar 2 arguments

:[0]
pushi.e 900
conv.i.v
call.i random(argc=1)
pop.v.v self.timer
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushbltn.v builtin.room_speed
pushi.e 50
conv.i.d
div.d.v
pushi.e 255
mod.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.c_rainbow
pushglb.v global.plot
pushi.e 67
cmp.i.v GTE
bf [2]

:[1]
pushi.e 0
conv.i.v
b [3]

:[2]
pushi.e 1
conv.i.v

:[3]
pop.v.v self.createAndStay
pushi.e 0
pop.v.i self.count
pushi.e 0
pop.v.i self.newcount

:[end]