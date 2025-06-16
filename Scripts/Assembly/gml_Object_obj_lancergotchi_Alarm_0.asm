.localvar 2 arguments

:[0]
push.v self.movecon
pop.v.v self.remmovecon
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.movecon
push.v self.movecon
push.v self.remmovecon
cmp.v.v EQ
bf [2]

:[1]
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.movecon

:[2]
pushi.e 0
pop.v.i self.con
push.v self.sleeptimer
pushi.e 900
cmp.i.v GTE
bf [end]

:[3]
pushi.e 10
pop.v.i self.movecon

:[end]