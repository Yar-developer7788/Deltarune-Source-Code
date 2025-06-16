.localvar 2 arguments

:[0]
push.v self.baseball_hitbox
pushi.e -9
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]

:[end]