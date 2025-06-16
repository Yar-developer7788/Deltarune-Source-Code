.localvar 2 arguments

:[0]
pushi.e 0
pop.v.b self.init
pushi.e 0
pop.v.i self.layer_y_pos
pushi.e 0
pop.v.i self.layer_x_pos
pushi.e 0
pop.v.i self.siner
pushi.e 3137
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.cityscape_height
pushi.e 3138
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.lights_height
pushi.e 3140
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.ground_height
pushi.e 0
pop.v.i self.shadow
push.v self.shadow
pushi.e 0
conv.i.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i make_color_hsv(argc=3)
call.i merge_color(argc=3)
pop.v.v self.dark_blend
push.i 1000100
pop.v.i self.depth
pushi.e 1
pop.v.b self.is_active
pushbltn.v builtin.room
pushi.e 102
cmp.i.v EQ
bf [end]

:[1]
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
pop.v.b self.is_active

:[end]