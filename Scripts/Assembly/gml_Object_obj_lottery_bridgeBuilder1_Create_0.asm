.localvar 2 arguments

:[0]
push.s "bridge1"@14233
pop.v.s self.bridgetarget
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_index
pushi.e 212
conv.i.v
pushi.e 167
conv.i.v
pushi.e 39
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.c_nblue
pushi.e 77
conv.i.v
pushi.e 84
conv.i.v
pushi.e 231
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.c_nred
pushi.e 188
conv.i.v
pushi.e 141
conv.i.v
pushi.e 102
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.c_npurp
pushi.e 0
pop.v.i self.built
push.i 890000
pop.v.i self.depth

:[end]