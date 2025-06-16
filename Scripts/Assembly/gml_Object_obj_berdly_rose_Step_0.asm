.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.image_speed
pushi.e 640
pop.v.i self.startx
pushi.e -60
pop.v.i self.starty
push.v self.startx
pop.v.v self.x
push.v self.starty
pop.v.v self.y
pushi.e 380
pop.v.i self.finalx
pushi.e 230
pop.v.i self.finaly
pushi.e 0
pop.v.i self.siner
pushi.e 170
pop.v.i self.finaltime
pushi.e 12
pop.v.i self.initamplitude
push.v self.initamplitude
pop.v.v self.amplitude
pushi.e 1
pop.v.i self.con

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [14]

:[3]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 4
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.siner
push.v self.finaltime
pushi.e 20
sub.i.v
cmp.v.v LT
b [6]

:[5]
push.e 0

:[6]
bf [10]

:[7]
pushi.e 129
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.sprite_height
pushi.e 40
sub.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 30
add.i.v
push.v self.sprite_width
pushi.e 30
sub.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.star
push.v self.star
pushi.e -9
pushenv [9]

:[8]
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 2475
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_alpha
push.d 0.25
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.hspeed
push.d -0.2
pop.v.d self.gravity
push.d 0.1
pop.v.d self.friction

:[9]
popenv [8]

:[10]
push.v self.siner
push.v self.finaltime
div.v.v
push.v self.finalx
push.v self.startx
call.i lerp(argc=3)
pop.v.v self.x
push.v self.siner
push.v self.finaltime
div.v.v
push.v self.finaly
push.v self.starty
call.i lerp(argc=3)
pop.v.v self.y
push.v self.x
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.amplitude
mul.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
push.v self.amplitude
mul.v.v
add.v.v
pop.v.v self.y
push.v self.image_index
push.d 0.2
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
push.v self.amplitude
mul.v.v
pushi.e 32
conv.i.d
div.d.v
add.v.d
add.v.v
pop.v.v self.image_index
push.v self.siner
push.v self.finaltime
push.d 0.75
mul.d.v
cmp.v.v GT
bf [12]

:[11]
push.v self.siner
push.v self.finaltime
push.d 0.75
mul.d.v
sub.v.v
push.v self.finaltime
push.d 0.25
mul.d.v
div.v.v
pushi.e 0
conv.i.v
push.v self.initamplitude
call.i lerp(argc=3)
pop.v.v self.amplitude

:[12]
push.v self.siner
push.v self.finaltime
cmp.v.v EQ
bf [14]

:[13]
push.v self.finalx
pop.v.v self.x
push.v self.finaly
pop.v.v self.y
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[14]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[15]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 60
cmp.i.v GTE
bf [end]

:[16]
pushi.e 670
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.timer
pushi.e 3
pop.v.i self.con

:[end]