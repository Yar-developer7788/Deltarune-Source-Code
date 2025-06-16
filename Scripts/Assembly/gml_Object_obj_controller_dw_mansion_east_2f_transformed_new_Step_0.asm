.localvar 2 arguments

:[0]
push.v self.sidea
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 395
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [8]

:[4]
pushi.e 1
conv.i.v
push.s "TILES_SIDE_A"@14748
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1150
pushenv [7]

:[5]
push.v self.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [5]
pushi.e 1
pop.v.b self.sidea

:[8]
push.v self.sideb
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e -5
pushi.e 396
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [end]

:[12]
pushi.e 1
conv.i.v
push.s "TILES_SIDE_B"@14750
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1150
pushenv [15]

:[13]
push.v self.flag
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [13]
pushi.e 1
pop.v.b self.sideb

:[end]