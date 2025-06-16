.localvar 2 arguments

:[0]
pushi.e 849
pop.v.i self.creator
push.v self.creator
pushi.e -9
push.v [stacktop]self.x
push.v self.creator
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.creator_x
push.v self.creator
pushi.e -9
push.v [stacktop]self.y
push.v self.creator
pushi.e -9
push.v [stacktop]self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.creator_y
push.v self.creator
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.image_speed
push.i 6569768
pop.v.i self.start_color
push.v self.start_color
pop.v.v self.image_blend
push.d 0.2
conv.d.v
push.d 0.1
conv.d.v
call.i random_range(argc=2)
pop.v.v self.end_speed
pushi.e 0
pop.v.i self.sparkle_timer
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d -0.6
pop.v.d self.blend_timer
pushi.e 1
pop.v.b self.wait
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]