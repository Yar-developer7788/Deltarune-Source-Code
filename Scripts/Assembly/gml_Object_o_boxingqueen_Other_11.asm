.localvar 2 arguments

:[0]
push.v self.original_depth
pop.v.v self.depth
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y
pushi.e 2121
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2135
pop.v.i self.sprite_index

:[2]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.state
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.nextdrawflip
push.v self.nextdrawflip
pop.v.v self.blocking
pushi.e 0
pop.v.i self.fliptimer
pushi.e 0
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.makedizzy

:[end]