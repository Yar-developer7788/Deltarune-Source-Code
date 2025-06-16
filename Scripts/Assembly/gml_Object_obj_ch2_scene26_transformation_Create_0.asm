.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.max_index
pushi.e 0
pop.v.b self.image_play
pushi.e 0
pop.v.i self.image_blend
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.timer
pushi.e 528
pop.v.i self.headsprite
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 526
pop.v.i self.headsprite
b [6]

:[2]
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 524
pop.v.i self.headsprite
b [6]

:[4]
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 529
pop.v.i self.headsprite

:[6]
pushi.e 7
pop.v.i self.frame_offset
push.d -0.5
pop.v.d self.screen_fade

:[end]