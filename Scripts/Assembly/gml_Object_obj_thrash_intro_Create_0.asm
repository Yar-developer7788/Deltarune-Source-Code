.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.f
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.image_speed
pushi.e -2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.image_index
pushi.e 80
conv.i.d
push.v self.f
div.v.d
pop.v.v self.vspeed
pushi.e -10
pop.v.i self.depth
pushi.e 1
pop.v.i 813.slow_down
pushi.e 2161
pop.v.i self.headsprite
pushi.e 0
pop.v.i self.punchcon
pushi.e 0
pop.v.i self.punchtimer
pushi.e 320
pop.v.i self.basex
pushi.e 390
pop.v.i self.basey
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.missnoise
pushi.e 0
pop.v.i self.miss_timer
pushi.e 4
pop.v.i self.shaketimer
pushi.e 0
pop.v.i self.movetime
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2160
pop.v.i self.headsprite

:[2]
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2159
pop.v.i self.headsprite

:[4]
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2162
pop.v.i self.headsprite

:[6]
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushi.e -5
pushi.e 223
push.v [array]self.flag
pushi.e 8
mul.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.headcolor
pushi.e 0
pop.v.i self.glow

:[end]