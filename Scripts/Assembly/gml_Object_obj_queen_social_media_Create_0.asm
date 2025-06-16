.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i self.handle
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [end]

:[1]
pushi.e 1931
pop.v.i self.sprite_index

:[end]