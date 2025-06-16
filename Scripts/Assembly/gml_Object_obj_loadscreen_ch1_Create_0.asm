.localvar 2 arguments
.localvar 14685 ww 20684
.localvar 14686 wh 20685

:[0]
pushi.e 0
pop.v.b self.loaded
pushi.e 0
pop.v.i self.save_ready
pushi.e 0
pop.v.b self.save_loaded
call.i window_get_width(argc=0)
pop.v.v local.ww
call.i window_get_height(argc=0)
pop.v.v local.wh
pushi.e 0
pop.v.i self.image_blend
pushi.e 0
pop.v.i self.fadespeed
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.b self.alpha_set
pushloc.v local.ww
pop.v.v self.length
pushloc.v local.wh
pop.v.v self.height
pushi.e -20
pop.v.i self.x
pushi.e -20
pop.v.i self.y

:[end]