.localvar 2 arguments

:[0]
pushi.e 2205
pop.v.i self.sprite_index
push.v 777.drawflip
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 155
pushi.e 50
conv.i.v
call.i irandom(argc=1)
sub.v.i
pop.v.v self.direction
push.v 777.y
pushi.e 169
sub.i.v
pop.v.v self.y
push.v 777.x
pop.v.v self.x
pushi.e -1
pop.v.i self.spin
b [3]

:[2]
pushi.e 25
pushi.e 50
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v self.direction
push.v 777.y
pushi.e 169
sub.i.v
pop.v.v self.y
push.v 777.x
pop.v.v self.x
pushi.e 1
pop.v.i self.spin

:[3]
push.v self.direction
pop.v.v self.image_angle

:[end]