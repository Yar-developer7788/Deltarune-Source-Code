.localvar 2 arguments

:[0]
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pushi.e 1
add.i.v
pushi.e -1
mul.i.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 16
conv.i.d
div.d.v
call.i abs(argc=1)
pop.v.v self.image_speed
pushi.e 0
pop.v.i self.hitted
pushi.e 0
pop.v.i self.rottimer
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.small
pushi.e 12
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 3352
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.small
push.v self.image_speed
pushi.e 2
mul.i.v
pop.v.v self.image_speed

:[end]