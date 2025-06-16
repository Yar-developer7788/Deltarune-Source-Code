.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 362
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 382
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
conv.i.v
push.s "TILES_LOCKED_DOOR"@37837
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[5]
pushi.e 105
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[6]
pushi.e 105
pushenv [12]

:[7]
pushi.e -5
pushi.e 362
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e -5
pushi.e 382
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [7]

:[end]