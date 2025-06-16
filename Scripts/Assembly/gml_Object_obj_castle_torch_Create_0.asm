.localvar 2 arguments

:[0]
push.d 0.2
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushbltn.v builtin.room
push.v self.room_cc_1f
cmp.v.v GTE
bf [3]

:[2]
pushi.e 2272
pop.v.i self.sprite_index

:[3]
pushbltn.v builtin.room
pushi.e 72
cmp.i.v EQ
bf [end]

:[4]
push.i 88300
pop.v.i self.depth

:[end]