.localvar 2 arguments

:[0]
push.v other.object_index
pushi.e 512
cmp.i.v EQ
bf [2]

:[1]
push.v other.handle
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
exit.i

:[5]
b [end]

:[6]
pushi.e 9
conv.i.v
call.i irandom(argc=1)
pushi.e 9
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1932
pop.v.i other.sprite_index
push.i 8421376
pop.v.i other.image_blend
pushi.e 1
pop.v.i other.handle
b [end]

:[8]
call.i @@Other@@(argc=0)
call.i instance_destroy(argc=1)
popz.v

:[end]