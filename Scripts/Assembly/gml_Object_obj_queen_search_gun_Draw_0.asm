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
bf [7]

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

:[7]
push.v self.loading
pushi.e 0
cmp.i.v LTE
bf [9]

:[8]
push.v self.image_blend
push.i 16777215
cmp.i.v NEQ
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
push.i 16777215
conv.i.v
push.i 9034033
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[end]