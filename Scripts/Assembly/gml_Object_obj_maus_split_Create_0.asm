.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.mcon
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.16666666666666666
pop.v.d self.image_speed
push.v 761.image_index
pop.v.v self.image_index
pushi.e 50
pop.v.i self.mousecount
pushi.e 50
pop.v.i self.maxmousecount
pushi.e 0
pop.v.i self.captured
pushi.e 0
pop.v.i self.draw_in_timer
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.mercycount

:[end]