.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.toggled
pushi.e -5
pushi.e 376
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.toggled

:[end]