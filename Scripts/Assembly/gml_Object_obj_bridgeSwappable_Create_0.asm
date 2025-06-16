.localvar 2 arguments

:[0]
push.s "h_1"@14222
pop.v.s self.bridgetarget
push.i 790000
pop.v.i self.depth
pushi.e 212
conv.i.v
pushi.e 167
conv.i.v
pushi.e 39
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.c_nblue
push.v self.c_nblue
pop.v.v self.image_blend

:[end]