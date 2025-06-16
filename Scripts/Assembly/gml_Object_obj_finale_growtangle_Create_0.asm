.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
push.d 0.3
pop.v.d self.image_alpha
pushi.e 15
pop.v.i self.maxtimer
pushi.e 1
pop.v.i self.timeincrease
push.v self.maxtimer
push.v self.timeincrease
sub.v.v
pop.v.v self.timer
pushi.e 1
pop.v.i self.growcon
pushi.e 0
pop.v.i self.image_speed
push.d 0.5
conv.d.v
push.i 65280
conv.i.v
push.i 32768
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
pushi.e 0
pop.v.i self.target_angle
pushi.e 0
pop.v.i self.fullgrow
pushi.e 0
pop.v.i self.keep
pushi.e 0
pop.v.i self.megakeep
push.v 872.maxxscale
pop.v.v self.maxxscale
push.v 872.maxyscale
pop.v.v self.maxyscale
push.v 872.spr_custom_box
pop.v.v self.sprite_index
push.v 872.depth
pushi.e 2
sub.i.v
pop.v.v 872.depth
push.v 872.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[end]