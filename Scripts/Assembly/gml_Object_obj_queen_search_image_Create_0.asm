.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.impact
pushi.e 0
pop.v.i self.bufferstate
pushi.e 9
pop.v.i self.loading
pushi.e -4
pop.v.i self.parentwindow
push.v self.sprite_index
pushi.e 3
sub.i.v
call.i sprite_get_number(argc=1)
pop.v.v self.image_index
push.v self.image_index
pushi.e 4
mul.i.v
pop.v.v self.loopindex
pushi.e 0
pop.v.i self.animtimer

:[end]