.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[1]
push.v self.follow
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v 82.visible
pushi.e 1
cmp.b.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v 82.depth
pushi.e 4
sub.i.v
pop.v.v self.depth
push.v 82.x
push.v 82.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x
push.v 82.y
pushi.e 6
sub.i.v
push.v self.yoffset
add.v.v
pop.v.v self.y

:[6]
b [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]