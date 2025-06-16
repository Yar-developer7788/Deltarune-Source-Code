.localvar 2 arguments
.localvar 24652 __glassbottom 11557
.localvar 24653 __fillpoint 11558
.localvar 24654 __dropend 11559
.localvar 24655 __topend 11560
.localvar 24656 rand_dir 11561

:[0]
push.v self.vspeed
pop.v.v self.image_xscale
push.v self.fillamount
pushi.e 15
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.acidColor
call.i draw_set_color(argc=1)
popz.v
push.v 872.ystart
pushi.e 30
add.i.v
pushi.e 28
push.v self.x
push.v 872.xstart
sub.v.v
call.i abs(argc=1)
sub.v.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v local.__glassbottom
push.v 514.starty
push.v 514.fill
sub.v.v
pushloc.v local.__glassbottom
call.i min(argc=2)
pop.v.v local.__fillpoint
pushloc.v local.__glassbottom
push.v self.y
call.i min(argc=2)
pop.v.v local.__dropend
push.v self.y
push.v self.image_xscale
pushi.e 10
mul.i.v
sub.v.v
pushloc.v local.__dropend
call.i min(argc=2)
pop.v.v local.__topend
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushloc.v local.__dropend
push.v self.x
call.i draw_circle(argc=4)
popz.v
pushi.e 14
conv.i.v
pushloc.v local.__topend
push.v self.x
pushloc.v local.__dropend
push.v self.x
call.i draw_line_width(argc=5)
popz.v
push.v self.y
pushloc.v local.__fillpoint
cmp.v.v GT
bf [end]

:[3]
push.v 514.prefill
pushi.e 2
add.i.v
pop.v.v 514.prefill
push.v self.fillamount
pushi.e 2
add.i.v
pop.v.v self.fillamount
push.v self.createdroplets
pushi.e 0
cmp.i.v EQ
bf [end]

:[4]
pushi.e 1
pop.v.i self.createdroplets
pushi.e 28
conv.i.v
call.i random(argc=1)
pop.v.v local.rand_dir
pushi.e 519
conv.i.v
push.v self.y
push.v self.x
pushi.e 3
sub.i.v
pushi.e 5
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
pushi.e 76
pushloc.v local.rand_dir
add.v.i
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 12
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 270
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.gravity_direction
push.d 0.75
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v self.depth
pushi.e 1
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 519
conv.i.v
push.v self.y
push.v self.x
pushi.e 3
sub.i.v
pushi.e 5
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
pushi.e 76
pushloc.v local.rand_dir
add.v.i
pushi.e 3
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 12
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 270
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.gravity_direction
push.d 0.75
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v self.depth
pushi.e 1
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 519
conv.i.v
push.v self.y
push.v self.x
pushi.e 3
sub.i.v
pushi.e 5
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
pushi.e 76
pushi.e 28
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 12
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 270
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.gravity_direction
push.d 0.75
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v self.depth
pushi.e 1
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.depth

:[end]