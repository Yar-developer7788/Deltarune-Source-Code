.localvar 2 arguments

:[0]
push.v self.target
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.active
push.v self.target
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.nowx
push.v self.target
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.nowy
b [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]