.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.linesiner
pushi.e 0
pop.v.i self.init
pushbltn.v builtin.room_width
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.room_scale
pushi.e 0
pop.v.i self.bg_y_pos
pushi.e 0
pop.v.i self.bg_x_pos
push.i 1005100
pop.v.i self.depth
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.sky_blue
push.d 0.7
conv.d.v
pushi.e 0
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.sky_blue_dark
pushi.e 0
pop.v.b self.sprite_init
pushi.e 0
pop.v.i self.ground_height
pushi.e 0
pop.v.i self.sky_height
pushi.e 0
pop.v.i self.starry_sky_height
pushi.e 0
pop.v.i self.stars_height

:[end]