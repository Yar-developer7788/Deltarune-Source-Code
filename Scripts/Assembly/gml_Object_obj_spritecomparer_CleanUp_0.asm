.localvar 2 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.mysprite
call.i sprite_delete(argc=1)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.mysprite
call.i sprite_delete(argc=1)
popz.v
pushi.e -1
pushi.e 2
push.v [array]self.mysprite
call.i sprite_delete(argc=1)
popz.v

:[end]