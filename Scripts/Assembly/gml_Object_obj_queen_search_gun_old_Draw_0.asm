.localvar 2 arguments

:[0]
push.v self.loading
pushi.e 0
cmp.i.v GT
bf [5]

:[1]
push.v self.loading
push.e 1
sub.i.v
pop.v.v self.loading
push.v self.loading
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.image_index
b [5]

:[3]
push.v self.loading
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.image_index
push.e 1
add.i.v
pop.v.v self.image_index

:[5]
call.i draw_self(argc=0)
popz.v
push.v self.bufferstate
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
push.v self.y
push.v self.x
push.v 562.bufferbar
pushi.e 8
mod.i.v
pushi.e 1928
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]