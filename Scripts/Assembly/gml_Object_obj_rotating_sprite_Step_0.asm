.localvar 2 arguments
.localvar 27433 path_pos 14630

:[0]
push.v self.image_xscale
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.image_xscale
push.d 0.1
add.d.v
pop.v.v self.image_xscale

:[2]
push.v self.image_yscale
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
push.v self.image_yscale
push.d 0.1
add.d.v
pop.v.v self.image_yscale

:[4]
push.v self.path_position
push.d 0.5
cmp.d.v GTE
bf [6]

:[5]
push.v self.path_position
push.d 0.84
cmp.d.v LT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v 777.depth
pushi.e 1
add.i.v
pop.v.v self.depth
push.i 8421504
pop.v.i self.image_blend
b [10]

:[9]
push.v 777.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
push.i 16777215
pop.v.i self.image_blend

:[10]
push.v self.x
push.v 777.x
pushi.e 38
add.i.v
cmp.v.v NEQ
bf [12]

:[11]
push.v self.y
push.v 777.y
pushi.e 96
sub.i.v
cmp.v.v NEQ
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
push.v self.path_position
pop.v.v local.path_pos
call.i path_end(argc=0)
popz.v
push.v 777.x
pushi.e 38
add.i.v
pop.v.v self.x
push.v 777.y
pushi.e 96
sub.i.v
pop.v.v self.y
call.i path_add(argc=0)
pop.v.v self.path
pushi.e 1
conv.i.v
push.v self.path
call.i path_set_kind(argc=2)
popz.v
pushi.e 1
conv.b.v
push.v self.path
call.i path_set_closed(argc=2)
popz.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
pushi.e 368
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 184
conv.i.v
pushi.e 304
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 184
conv.i.v
pushi.e 272
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
pushi.e 208
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 136
conv.i.v
pushi.e 272
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 136
conv.i.v
pushi.e 304
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 0
conv.b.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
push.v self.path
call.i path_start(argc=4)
popz.v
pushloc.v local.path_pos
pop.v.v self.path_position

:[end]