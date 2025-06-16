.localvar 2 arguments

:[0]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [2]

:[1]
pushi.e 3737
pop.v.i self.sprite_index

:[2]
popenv [1]

:[end]