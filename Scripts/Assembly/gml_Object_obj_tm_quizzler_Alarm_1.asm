.localvar 2 arguments

:[0]
pushi.e 0
push.v self.animator
pushi.e -9
pop.v.b [stacktop]self.zapping
pushi.e 3
push.v self.animator
pushi.e -9
pop.v.i [stacktop]self.state
call.i instance_destroy(argc=0)
popz.v

:[end]