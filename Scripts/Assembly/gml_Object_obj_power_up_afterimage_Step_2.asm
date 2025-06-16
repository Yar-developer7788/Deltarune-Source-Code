.localvar 2 arguments

:[0]
push.v self.follow_target
pushi.e -4
cmp.i.v NEQ
bf [end]

:[1]
push.v self.follow_target
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
push.v self.follow_target
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y

:[end]