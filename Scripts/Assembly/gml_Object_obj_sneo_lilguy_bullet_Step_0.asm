.localvar 2 arguments

:[0]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 100
add.i.v
cmp.v.v GTE
bt [4]

:[1]
push.v self.x
pushi.e -100
cmp.i.v LTE
bt [4]

:[2]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 100
add.i.v
cmp.v.v GTE
bt [4]

:[3]
push.v self.y
pushi.e -100
cmp.i.v LTE
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.image_angle
pushi.e 36
add.i.v
pop.v.v self.image_angle

:[end]