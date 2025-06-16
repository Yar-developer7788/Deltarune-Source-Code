.localvar 2 arguments

:[0]
pushi.e 467
push.v self.which
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
pushi.e 467
push.v self.which
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.y
pushi.e 14
add.i.v
pop.v.v self.y

:[end]