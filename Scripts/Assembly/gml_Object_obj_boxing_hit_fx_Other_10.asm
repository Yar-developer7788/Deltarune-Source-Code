.localvar 2 arguments

:[0]
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
push.v 777.x
pushi.e 20
add.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
sub.v.v
pop.v.v self.x
push.v 777.y
pushi.e 80
sub.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
sub.v.v
pop.v.v self.y
b [end]

:[2]
pushi.e 25
pushi.e 50
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v self.direction
push.v 777.x
pushi.e 20
sub.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v self.x
push.v 777.y
pushi.e 80
sub.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
sub.v.v
pop.v.v self.y

:[end]