.localvar 2 arguments

:[0]
push.v self.bounceOffDoor
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[2]
push.v self.lifespan
pushi.e 97
cmp.i.v LT
bf [4]

:[3]
push.v self.invulnerable
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
pushi.e 5
pop.v.i self.con
pushi.e 1
pop.v.i self.bouncethisframe

:[end]