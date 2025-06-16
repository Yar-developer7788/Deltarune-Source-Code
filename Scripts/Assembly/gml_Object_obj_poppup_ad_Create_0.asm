.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.state
pushi.e 1661
conv.i.v
pushi.e 1660
conv.i.v
pushi.e 1655
conv.i.v
pushi.e 1659
conv.i.v
pushi.e 1656
conv.i.v
pushi.e 1663
conv.i.v
call.i choose(argc=6)
pop.v.v self.sprite_index
pushi.e 99
conv.i.v
call.i irandom(argc=1)
pushi.e 99
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1662
pop.v.i self.sprite_index

:[2]
pushi.e 0
pop.v.i self.scale
pushi.e 0
pop.v.i self.blockstate
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.mock
pushi.e 0
pop.v.i self.mocktimer
pushi.e 1
pop.v.i self.scalespeed
pushi.e 0
pop.v.b self.slow

:[end]