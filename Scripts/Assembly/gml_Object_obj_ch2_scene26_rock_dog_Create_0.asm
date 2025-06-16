.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.con
push.i 1000200
pop.v.i self.depth
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 545
add.i.v
pushi.e 12
add.i.v
pop.v.v self.x
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
call.i random_range(argc=2)
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.rotation
pushi.e 0
pop.v.i self.image_speed
pushi.e 281
pop.v.i self.sprite_index
pushi.e 0
pop.v.b self.dog

:[end]