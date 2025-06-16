.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.animsiner
push.i 999000
pop.v.i self.depth
push.v self.sprite_index
call.i sprite_get_width(argc=1)
push.v self.image_xscale
mul.v.v
pop.v.v self.total_width

:[end]