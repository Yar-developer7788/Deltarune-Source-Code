.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v 777.x
pop.v.v self.x
push.v 777.y
pop.v.v self.y
push.v self.timer
pushi.e 8
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v 777.sprite_index
pushi.e 2153
cmp.i.v EQ
bf [4]

:[3]
push.v 777.image_index
pushi.e 7
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]